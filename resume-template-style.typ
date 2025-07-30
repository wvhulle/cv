#let lang(name) = raw(name)

#let priority-threshold(pages) = if pages == 1 { 1 } else { 2 }

#let should-show(priority, pages) = priority <= priority-threshold(pages)

#let format-date-range(start, end) = {
  if end != none { start + " - " + end } else { start + " - current" }
}

#let filter-prioritized-items(items, threshold) = {
  items
    .filter(item => {
      if type(item) == dictionary and "priority" in item {
        item.priority <= threshold
      } else { true }
    })
    .map(item => {
      if type(item) == dictionary and "content" in item {
        item.content
      } else { item }
    })
}

#let entry-grid(left-top, right-top, left-bottom, right-bottom) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    row-gutter: 0.4em,
    left-top, right-top,
    left-bottom, right-bottom,
  )
}

#let render-entry-block(header, items) = {
  block(breakable: false)[
    #header
    #if items.len() > 0 {
      v(-0.3em)
      list(..items)
    }
  ]
}

#let circular-profile(path, radius: 1.5em, offset: 1em) = {
  let size = radius * 2
  box(
    move(
      dy: offset,
      block(
        height: size,
        width: size,
        clip: true,
        radius: radius,
        image(path, fit: "cover"),
      ),
    ),
  )
}

#let resume(
  name: "",
  email: "",
  website: "",
  phone: "",
  profile-image: none,
  target-pages: 2,
  font: "Fira Sans",
  body,
) = {
  let margins = if target-pages == 1 { 0.75in } else { 0.85in }

  set page(paper: "a4", margin: margins)
  set text(font: font, size: 11pt)
  set par(justify: true, leading: 0.9em)
  set heading(numbering: none)

  show raw: set text(font: "Fira Code", size: 1.1em)
  show link: underline.with(stroke: gray)

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
    ],
  )

  let pages-state = state("target-pages", target-pages)
  pages-state.update(target-pages)
  body
}

#let section(title, priority: 1, body) = context {
  let pages = state("target-pages").get()

  if should-show(priority, pages) [
    #heading(level: 2, smallcaps(title))
    #body
  ]
}

#let pitem(
  title: "",
  description: "",
  priority: 2,
  languages: (),
) = {
  let lang-text = if languages.len() > 0 {
    " (" + languages.map(lang).join(", ") + ")"
  } else { "" }

  (
    content: [*#title:* #description#lang-text],
    priority: priority,
  )
}

#let experience(
  organization: "",
  industry: "",
  location: "",
  title: "",
  start-date: "",
  end-date: none,
  priority: 1,
  items: (),
) = context {
  let pages = state("target-pages").get()

  if not should-show(priority, pages) { return }

  let date-range = format-date-range(start-date, end-date)
  let filtered-items = filter-prioritized-items(items, priority-threshold(pages))

  let header = entry-grid(
    [*#organization* (#industry)],
    [#location],
    text(size: 10pt, style: "italic")[#title],
    text(size: 10pt, style: "italic")[#date-range],
  )

  render-entry-block(header, filtered-items)
}

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
  volunteering: none,
) = context {
  let pages = state("target-pages").get()
  if not should-show(priority, pages) { return }

  let date-range = format-date-range(start-date, end-date)

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

  let degree-content = [
    #text(size: 10pt, style: "italic")[#degree]
    #if thesis != none [
      #v(-0.5em)
      #text(size: 9pt, fill: rgb(80, 80, 80))[Thesis: #thesis]
    ]
  ]

  let header = entry-grid(
    [*#organization* (#industry)],
    [#location],
    degree-content,
    text(size: 10pt, style: "italic")[#date-range],
  )

  render-entry-block(header, items)
}

#let project(
  title: "",
  organization: "",
  start-date: "",
  end-date: none,
  priority: 2,
  items: (),
) = context {
  let pages = state("target-pages").get()
  if not should-show(priority, pages) { return }

  let date-range = format-date-range(start-date, end-date)
  let filtered-items = filter-prioritized-items(items, priority-threshold(pages))

  let header = grid(
    columns: (1fr, auto),
    align: (left, right),
    [*#title* - #organization], emph(date-range),
  )

  render-entry-block(header, filtered-items)
}

#let skill(category, description, priority: 2) = context {
  let pages = state("target-pages").get()
  if not should-show(priority, pages) { return }
  [*#category:* #description]
}
