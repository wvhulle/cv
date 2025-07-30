// Modern Typst Resume Template
// Idiomatic structure following Typst best practices

// Utility functions
#let lang(name) = raw(name)

#let circular-profile(path, radius: 1.5em, offset: 1em) = {
  let size = radius * 2
  box(move(
    dy: offset,
    block(
      height: size,
      width: size,
      clip: true,
      radius: radius,
      image(path, fit: "cover")
    )
  ))
}

// Main template function - idiomatic Typst pattern
#let resume(
  // Personal information
  name: "",
  email: "", 
  website: "",
  phone: "",
  profile-image: none,
  
  // Layout options
  target-pages: 2,
  font: "Fira Sans",
  
  // Content
  body
) = {
  // Page setup based on target pages
  let margins = if target-pages == 1 { 0.75in } else { 1in }
  
  set page(paper: "a4", margin: margins)
  set text(font: font, size: 11pt)
  set par(justify: true, leading: 0.9em)  
  set heading(numbering: none)
  
  show raw: set text(font: "Fira Code", size: 1.1em)
  show link: underline.with(stroke: gray)
  
  // Header with profile image
  grid(
    columns: (2fr, 1fr),
    align: (left, right),
    [
      #text(size: 22pt, weight: "bold")[#name]
      #if profile-image != none [
        #h(0.5em)#circular-profile(profile-image, radius: 2em, offset: 1em)
      ]
    ],
    text(size: 10pt)[
      #link("mailto:" + email) \
      #link(website) \ 
      #link("tel:" + phone)
    ]
  )
  
  // Use state for target-pages  
  let pages-state = state("target-pages", target-pages)
  pages-state.update(target-pages)
  body
}

// Section with priority filtering
#let section(title, priority: 1, body) = context {
  let pages = state("target-pages").get()
  let threshold = if pages == 1 { 1 } else { 3 }
  
  if priority <= threshold [
    #heading(level: 2, smallcaps(title))
    #body
  ]
}

// Prioritized item with language support
#let pitem(
  title: "",
  description: "", 
  priority: 2,
  languages: ()
) = {
  let lang-text = if languages.len() > 0 {
    " (" + languages.map(lang).join(", ") + ")"
  } else { "" }
  
  (
    content: [*#title:* #description#lang-text],
    priority: priority
  )
}

// Experience entry
#let experience(
  organization: "",
  industry: "",
  location: "",
  title: "",
  start-date: "",
  end-date: none,
  priority: 1,
  items: ()
) = context {
  let pages = state("target-pages").get()
  let item-threshold = if pages == 1 { 1 } else { 3 }
  
  if priority > (if pages == 1 { 1 } else { 3 }) { return }
  
  let date-range = if end-date != none {
    start-date + " - " + end-date
  } else {
    start-date + " - current"
  }
  
  let filtered-items = items
    .filter(item => {
      if type(item) == dictionary and "priority" in item {
        item.priority <= item-threshold
      } else { true }
    })
    .map(item => {
      if type(item) == dictionary and "content" in item {
        item.content  
      } else { item }
    })
  
  block(breakable: false)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      row-gutter: 0.4em,
      [*#organization* (#industry)], [#location],
      text(size: 10pt, style: "italic")[#title], 
      text(size: 10pt, style: "italic")[#date-range]
    )
    
    #if filtered-items.len() > 0 {
      v(-0.3em)
      list(..filtered-items)
    }
  ]
}

// Education entry with courses array support
#let education(
  organization: "",
  industry: "", 
  location: "",
  degree: "",
  thesis: none,
  start-date: "",
  end-date: none,
  priority: 1,
  courses: (),
  volunteering: none
) = context {
  let pages = state("target-pages").get()
  if priority > (if pages == 1 { 1 } else { 3 }) { return }
  
  let date-range = if end-date != none {
    start-date + " - " + end-date  
  } else {
    start-date + " - current"
  }
  
  // Format courses with proper grammar
  let format-courses(courses) = {
    if courses.len() == 0 { return none }
    if courses.len() == 1 {
      upper(courses.at(0).at(0)) + courses.at(0).slice(1)
    } else {
      let capitalized = courses.map(c => upper(c.at(0)) + c.slice(1))
      let all-but-last = capitalized.slice(0, -1)
      let last = capitalized.at(-1)
      all-but-last.join(", ") + " and " + last
    }
  }
  
  let items = ()
  let formatted-courses = format-courses(courses)
  if formatted-courses != none {
    items.push([*Courses:* #formatted-courses.])
  }
  if volunteering != none {
    items.push([*Volunteering:* #volunteering])
  }
  
  block(breakable: false)[
    #grid(
      columns: (1fr, auto),
      align: (left, right), 
      row-gutter: 0.4em,
      [*#organization* (#industry)], [#location],
      [
        #text(size: 10pt, style: "italic")[#degree]
        #if thesis != none [
          #v(-0.5em)
          #text(size: 9pt, fill: rgb(80, 80, 80))[Thesis: #thesis]
        ]
      ],
      text(size: 10pt, style: "italic")[#date-range]
    )
    
    #if items.len() > 0 {
      v(-0.3em)
      list(..items)
    }
  ]
}

// Project entry  
#let project(
  title: "",
  organization: "",
  start-date: "",
  end-date: none,
  priority: 2,
  items: ()
) = context {
  let pages = state("target-pages").get()
  if priority > (if pages == 1 { 1 } else { 3 }) { return }
  
  let date-range = if end-date != none {
    start-date + " - " + end-date
  } else {
    start-date + " - current"  
  }
  
  block(breakable: false)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      row-gutter: 0.4em,
      [*#title* - #organization], 
      emph(date-range)
    )
    
    #if items.len() > 0 {
      v(-0.3em)
      list(..items)
    }
  ]
}

// Skill entry with priority
#let skill(category, description, priority: 2) = context {
  let pages = state("target-pages").get()  
  if priority > (if pages == 1 { 1 } else { 3 }) { return }
  [*#category:* #description]
}