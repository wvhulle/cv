// Import configuration functions (not target-pages variable)
#import "resume-length.typ": (
  priority-threshold,
  item-threshold,
  max-experience-entries,
  max-projects,
  max-hobby-projects,
)

// State to pass target-pages parameter to functions
#let target-pages-state = state("target-pages", 2)

#let lang(name) = raw(name)

#let circular-profile-image(image-path, radius: 1.5em, dy: 1em) = {
  let size = radius * 2
  box(
    move(
      dy: dy,
      block(
        height: size,
        width: size,
        clip: true,
        radius: radius,
        image(image-path, fit: "cover"),
      ),
    ),
  )
}

#let resume(
  name: "",
  email: "",
  website: "",
  phone: "",
  target-pages: 2,
  body,
) = {
  let margin-size = if target-pages == 1 { 0.75in } else { 1in }
  let font-size = 11pt // Keep consistent font size
  set page(
    paper: "a4",
    margin: (x: margin-size, y: margin-size),
  )

  set text(
    font: "Fira Sans",
    size: font-size,
  )

  show raw: set text(font: "Fira Code", size: 1.1em)

  set par(
    justify: true,
    leading: 0.9em,
  )

  set heading(numbering: none)

  show link: it => underline(stroke: gray, it)

  grid(
    columns: (2fr, 1fr),
    align: (left, right),
    [
      #text(size: 22pt, weight: "bold", name) #h(0.5em) #circular-profile-image("profile.jpg", radius: 2em, dy: 1em)
    ],
    [
      #text(size: 10pt)[
        #link("mailto:" + email) \
        #link(website) \
        #link("tel:" + phone)
      ]
    ],
  )

  // Use Typst state to pass target-pages to other functions
  target-pages-state.update(target-pages)

  body
}

#let section(title, priority: 1, body) = {
  context {
    let pages = target-pages-state.get()
    if priority <= priority-threshold(pages) {
      heading(level: 2, smallcaps(title))
      body
    }
  }
}

#let pitem(title: "", description: "", priority: 2, languages: ()) = {
  let lang-list = if languages.len() > 0 {
    " (" + languages.map(language => lang(language)).join(", ") + ")"
  } else {
    ""
  }
  (content: [*#title:* #description#lang-list], priority: priority)
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
) = {
  context {
    let pages = target-pages-state.get()
    if priority > priority-threshold(pages) { return }

    let date-range = if end-date != none {
      start-date + " - " + end-date
    } else {
      start-date + " - current"
    }

    let threshold = item-threshold(pages)
    let filtered-items = items
      .filter(item => {
        if type(item) == dictionary and "priority" in item {
          item.priority <= threshold
        } else {
          pages >= 2 // Non-prioritized items only in 2+ page mode
        }
      })
      .map(item => {
        if type(item) == dictionary and "content" in item {
          item.content
        } else {
          item
        }
      })

    block(breakable: false)[
      #grid(
        columns: (1fr, auto),
        align: (left, right),
        row-gutter: 0.4em,
        [*#organization* (#industry)], [#location],
        [#text(size: 10pt, style: "italic", title)], [#text(size: 10pt, style: "italic", date-range)],
      )

      #if filtered-items.len() > 0 {
        v(-0.3em)
        list(..filtered-items)
      }
    ]
  }
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
) = {
  context {
    let pages = target-pages-state.get()
    if priority > priority-threshold(pages) { return }

    let date-range = if end-date != none {
      start-date + " - " + end-date
    } else {
      start-date + " - current"
    }

    let education-items = ()
    if courses.len() > 0 {
      let formatted-courses = if courses.len() == 1 {
        // Single course: capitalize first letter
        let first-course = courses.at(0)
        let capitalized = upper(first-course.at(0)) + first-course.slice(1)
        capitalized
      } else {
        // Multiple courses: commas and "and" before last
        let capitalized-courses = ()
        for course in courses {
          capitalized-courses.push(upper(course.at(0)) + course.slice(1))
        }
        let all-but-last = capitalized-courses.slice(0, -1)
        let last-course = capitalized-courses.at(-1)
        all-but-last.join(", ") + " and " + last-course
      }
      education-items.push([*Courses:* #formatted-courses.])
    }
    if volunteering != none {
      education-items.push([*Volunteering:* #volunteering])
    }

    block(breakable: false)[
      #grid(
        columns: (1fr, auto),
        align: (left, right),
        row-gutter: 0.4em,
        [*#organization* (#industry)], [#location],
        [
          #text(size: 10pt, style: "italic", degree)
          #if thesis != none [
            #v(-0.5em)
            #text(size: 9pt, fill: rgb(80, 80, 80), "Thesis: " + thesis)
          ]
        ], [#text(size: 10pt, style: "italic", date-range)],
      )

      #if education-items.len() > 0 {
        v(-0.3em)
        list(..education-items)
      }
    ]
  }
}

#let project(
  title: "",
  organization: "",
  start-date: "",
  end-date: none,
  priority: 2,
  items: (),
) = {
  context {
    let pages = target-pages-state.get()
    if priority > priority-threshold(pages) { return }

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
        [*#title* - #organization], [#emph(date-range)],
      )

      #if items.len() > 0 {
        v(-0.3em)
        list(..items)
      }
    ]
  }
}

#let skill(category, description, priority: 2) = {
  context {
    let pages = target-pages-state.get()
    if priority > priority-threshold(pages) { return }
    [*#category:* #description]
  }
}
