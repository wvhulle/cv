// Clean, standard Typst resume styling

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

// Global show rule for links with gray underlines


// Simple section header
#let section-header(title) = {
  heading(level: 2, smallcaps(title))
}

// Contact header
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

// Job/education entry
#let resume-entry(organization, location, title, dates, items: ()) = {
  block(breakable: false)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      row-gutter: 0.4em,
      [*#organization*], [#location],
      [#text(size: 10pt, style: "italic", title)], [#text(size: 10pt, style: "italic", dates)],
    )

    #if items.len() > 0 {
      v(-0.3em)
      list(..items.map(item => item))
    }
  ]
}

// Project entry with bullet points
#let project-entry(title, organization, dates, items: ()) = {
  block(breakable: false)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      row-gutter: 0.4em,
      [*#title* - #organization], [#emph(dates)],
    )

    #if items.len() > 0 {
      v(-0.3em)
      list(..items.map(item => item))
    }
  ]
}

// Skills entry
#let skill-entry(category, skills) = {
  [*#category:* #skills]
}
