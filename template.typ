

#let format-date-range(start, end) = {
  if end != none { start + " - " + end } else { start + " - current" }
}

#let two-row-grid(left-top, right-top, left-bottom, right-bottom) = {
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

#let circular-profile(img, radius: 1.5em, offset: 1em) = {
  let size = radius * 2
  box(
    move(
      dy: offset,
      block(
        height: size,
        width: size,
        clip: true,
        radius: radius,
        img,
      ),
    ),
  )
}

#let section(title, body) = [
  #heading(level: 2, smallcaps(title))
  #body
]

#let project(
  title: content,
  description: content,
  languages: (),
  skills: (),
  source: none,
  docs: none,
  slides: none,
  live: none,
) = {
  let languages = if languages.len() > 0 {
    "(" + languages.map(a => text(a)).join(", ") + ")"
  } else { none }
  let methods = if skills.len() > 0 {
    "Skills: " + skills.map(a => text(style: "italic", a)).join(", ")
  } else { none }
  [*#title:* #description #methods #languages
    #if source != none { box(radius: 0.2em, fill: yellow.lighten(70%), link(source, "source")) }
    #if docs != none { box(radius: 0.2em, fill: blue.lighten(70%), link(docs, "docs")) }
    #if slides != none { box(radius: 0.2em, fill: red.lighten(70%), link(slides, "slides")) }
    #if live != none { box(radius: 0.2em, fill: green.lighten(70%), link(live, "live")) }
  ]
}

#let experience(
  organization: content,
  industry: content,
  location: content,
  title: content,
  start-date: content,
  end-date: none,
  items: (),
) = {
  let date-range = format-date-range(start-date, end-date)

  let header = two-row-grid(
    [*#organization* (#industry)],
    [#location],
    text(size: 10pt, style: "italic")[#title],
    text(size: 10pt, style: "italic")[#date-range],
  )

  render-entry-block(header, items)
}

#let education(
  organization: content,
  industry: content,
  location: content,
  degree: content,
  thesis: none,
  start-date: content,
  end-date: none,
  courses: (),
  volunteering: none,
) = {
  let date-range = format-date-range(start-date, end-date)

  let format-courses(courses) = {
    if courses.len() == 0 { return none }
    let items = (upper(courses.at(0).at(0)) + courses.at(0).slice(1),) + courses.slice(1)
    items.slice(0, -1).join(", ") + " and " + items.last()
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
      #text(size: 9pt, fill: rgb(80, 80, 80))[Project: #thesis]
    ]
  ]

  let header = two-row-grid(
    [*#organization* (#industry)],
    [#location],
    degree-content,
    text(size: 10pt, style: "italic")[#date-range],
  )

  render-entry-block(header, items)
}



#let resume(
  name: content,
  email: content,
  website: content,
  phone: content,
  profile-image: none,
  font: "Fira Sans",
  font-code: "Fira Mono",
  theme: "default",
  body,
) = {
  let theme-colors = (
    default: (accent: gray, text: black),
    blue: (accent: blue.darken(20%), text: black),
    green: (accent: green.darken(30%), text: black),
  )

  let colors = theme-colors.at(theme, default: theme-colors.default)

  set page(paper: "a4", margin: 2cm)
  set text(font: font, fill: colors.text, size: 1.1em)
  set par(justify: true)
  set heading(numbering: "1.")

  show raw: set text(font: font-code, size: 1.1em)
  show link: underline.with(stroke: colors.accent)

  grid(
    columns: (1fr, 1fr, 1fr),
    align: (left + bottom, horizon, right + bottom),
    [
      #text(size: 22pt, weight: "bold")[#name]
    ],
    [#if profile-image != none [
      #v(-3em)
      #h(1em)#circular-profile(profile-image, radius: 2em)
    ]],
    text(size: 10pt)[
      #link("mailto:" + email) \
      #link(website) \
      #link("tel:" + phone)
    ],
  )

  body
}
