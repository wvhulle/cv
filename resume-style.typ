// Import configuration
#import "resume-length.typ": target-pages, priority-threshold, item-threshold, max-experience-entries, max-projects, max-hobby-projects

#let resume(
  name: "",
  email: "",
  website: "",
  phone: "",
  target-pages: 1,
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
    columns: (1fr, 1fr),
    align: (left, right),
    [
      #text(size: 22pt, weight: "bold", name)
    ],
    [
      #text(size: 10pt)[
        #link("mailto:" + email) \
        #link(website) \
        #phone
      ]
    ],
  )

  body
}

#let section(title, priority: 1, body) = {
  if priority <= priority-threshold(target-pages) {
    heading(level: 2, smallcaps(title))
    body
  }
}

#let pitem(content, priority: 2) = (content: content, priority: priority)

#let filter-items(items) = {
  let threshold = item-threshold(target-pages)
  items
    .filter(item => {
      if type(item) == dictionary and "priority" in item {
        item.priority <= threshold
      } else {
        target-pages >= 2 // Non-prioritized items only in 2+ page mode
      }
    })
    .map(item => {
      if type(item) == dictionary and "content" in item {
        item.content
      } else {
        item
      }
    })
}

#let experience(
  organization: "",
  location: "",
  title: "",
  start-date: "",
  end-date: none,
  priority: 1,
  items: (),
) = {
  if priority > priority-threshold(target-pages) { return }


  let date-range = if end-date != none {
    start-date + " - " + end-date
  } else {
    start-date + " - current"
  }

  let filtered-items = filter-items(items)

  block(breakable: false)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      row-gutter: 0.4em,
      [*#organization*], [#location],
      [#text(size: 10pt, style: "italic", title)], [#text(size: 10pt, style: "italic", date-range)],
    )

    #if filtered-items.len() > 0 {
      v(-0.3em)
      list(..filtered-items)
    }
  ]
}

#let project(
  title: "",
  organization: "",
  start-date: "",
  end-date: none,
  priority: 2,
  items: (),
) = {
  if priority > priority-threshold(target-pages) { return }


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

#let skill(category, description, priority: 2) = {
  if priority > priority-threshold(target-pages) { return }
  [*#category:* #description]
}

#let lang(name) = raw(name)
