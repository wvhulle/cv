
#let setup-page() = {
  set page(
    paper: "a4",
    margin: (x: 1in, y: 1in),
  )

  set text(
    font: "New Computer Modern",
    size: 11pt,
  )

  set par(
    justify: true,
    leading: 0.9em,
  )

  set heading(numbering: none)
}

#let section-header(title) = {
  heading(level: 2, smallcaps(title))
}

#let resume-header(name, email, website, phone) = {
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
}

#let resume-entry(organization: "", location: "", title: "", start-date: "", end-date: none, items: ()) = {
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
      [*#organization*], [#location],
      [#text(size: 10pt, style: "italic", title)], [#text(size: 10pt, style: "italic", date-range)],
    )

    #if items.len() > 0 {
      v(-0.3em)
      list(..items.map(item => item))
    }
  ]
}

#let with-underlined-links(content) = {
  show link: it => {
    underline(stroke: gray, it)
  }
  content
}

#let project-entry(title: "", organization: "", start-date: "", end-date: none, items: ()) = {
  let date-range = if end-date != none {
    start-date + " - " + end-date
  } else {
    start-date + " - current"
  }
  
  with-underlined-links(
    block(breakable: false)[
      #grid(
        columns: (1fr, auto),
        align: (left, right),
        row-gutter: 0.4em,
        [*#title* - #organization], [#emph(date-range)],
      )

      #if items.len() > 0 {
        v(-0.3em)
        list(..items.map(item => item))
      }
    ],
  )
}

#let skill-entry(category, skills) = {
  with-underlined-links([*#category:* #skills])
}

// Format programming languages with monospace font (no links)
#let lang(name) = {
  raw(name)
}
