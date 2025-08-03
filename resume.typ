#import "@local/flexible-resume:0.0.1": *

#show: resume.with(
  name: "Willem Vanhulle",
  email: "willemvanhulle@protonmail.com",
  website: "www.willemvanhulle.tech",
  phone: "+32 479 080 252",
  profile-image: image("profile.jpg"),
  font: "Fira Sans",
  font-code: "FiraCode Nerd Font Mono",
  target-pages: 1,
)

#section("Experience")[
  #experience(
    organization: "OTIV",
    industry: "Railway automation",
    location: "Ghent, Belgium",
    title: "Software engineer",
    start-date: "Apr. 2024",
    end-date: "June 2025",
    priority: 1,
    items: (
      pitem(
        title: "Distributed systems",
        description: [Remote freight train control system, async iterator toolkit, real-time connectivity monitoring, video and telemetry streaming, state machines.],
        priority: 1,
        languages: ("Rust", "Tokio"),
      ),
      pitem(
        title: "Build systems & CI",
        description: "Integrated LSP with Bazel, led Bazel→Cargo migration, wrote CI/CD pipelines from scratch, optimized pipeline runtime by 95%.",
        priority: 3,
        languages: ("Rust",),
      ),
      pitem(
        title: "Language expertise",
        description: "Organized advanced Rust training",
        priority: 3,
        languages: ("Rust",),
      ),
      pitem(
        title: "Testing",
        description: "Implemented comprehensive unit/integration test suites for safety-critical railway systems.",
        priority: 3,
      ),
      pitem(
        title: "Real-time user interfaces",
        description: "Multi-monitor desktop application, live-streaming data tables.",
        priority: 2,
        languages: ("Rust", "Slint"),
      ),
      pitem(
        title: "Embedded systems",
        description: "Developed software for real-time hardware control (touchscreens, physical levers, sensors).",
        priority: 2,
      ),
    ),
  )

  #experience(
    organization: "Inbiose",
    industry: "Biotechnology",
    location: "Ghent, Belgium",
    title: "Software engineer",
    start-date: "June 2021",
    end-date: "April 2024",
    priority: 1,
    items: (
      pitem(
        title: "Full-stack development",
        description: "Scientific web applications.",
        priority: 1,
        languages: ("TypeScript", "JavaScript", "HTML", "SCSS", "Svelte", "Rust", "R", "Python"),
      ),
      pitem(
        title: "Industrial control",
        description: "Automatic control industrial fermentation robot, integrate optical sensors.",
        priority: 1,
        languages: ("Python", "Rust", "C++"),
      ),
      pitem(
        title: "High-performance computing",
        description: "Implemented property-based testing for genetic data batch processing, optimized bioinformatics pipelines.",
        priority: 3,
        languages: ("Python",),
      ),
      pitem(
        title: "Database systems",
        description: "Create scientific databases, model complex scientific processes.",
        priority: 1,
        languages: ("R", "SQL"),
      ),
    ),
  )

  #experience(
    organization: "CVO",
    industry: "Education",
    location: "Leuven, Belgium",
    title: "Mathematics guest lecturer",
    start-date: "Sept. 2020",
    end-date: "Jan. 2021",
    priority: 2,
    items: (
      pitem(
        title: "Teaching",
        description: "Mathematics and programming courses and document preparation.",
        languages: ("Python", "LaTeX"),
      ),
    ),
  )
]

#section("Major professional projects", priority: 1)[
  #project(
    title: "Emergency breaking mechanism",
    organization: "OTIV",
    start-date: "Sept. 2024",
    end-date: "Mar. 2025",
    priority: 1,
    items: (
      [*Real-time monitoring:* Heartbeat system detecting connection failures.],
      [*Stream processing:* Designed pub-sub stream aggregator to trigger emergency breaking.],
    ),
  )

  #project(
    title: "Fermentation robot",
    organization: "Inbiose",
    start-date: "Oct. 2023",
    end-date: "April 2024",
    priority: 3,
    items: (
      [*Cross-language development*: Comprehensive error handling and testing.],
      [*Real-time industrial control:* Control 48h fermentation process.],
    ),
  )

  #project(
    title: "Collaborative data-grid",
    organization: "Inbiose",
    start-date: "Apr. 2023",
    end-date: "Feb. 2024",
    priority: 3,
    items: (
      [*Distributed systems:* Built database-backed distributed data grid with persistence layer.],
      [*Collaborative interfaces:* Designed real-time collaborative data entry system with operational transformation.],
    ),
  )
]

#section("Hobby projects", priority: 1)[
  #skill(
    "Splitting data streams",
    [Async runtime-agnostic stream combinator library. See #link("https://crates.io/crates/clone-stream", "crate") and #link("https://eurorust.eu/talks/make-your-own-stream-operators/", "conference talk at EuroRust"). (#lang("Rust"))],
    priority: 1,
  )

  #skill(
    "Smart plant pot workshop",
    [Watering system with a Raspberry Pi Pico / ESP32c6 and async Embassy: see #link("https://github.com/sysghent/plant-pot", "GitHub"). (#lang("Rust"), #lang("Embassy"))],
    priority: 1,
  )



  #skill(
    "Lean riddles workshop",
    [Interactive problem-solving using dependent types. See #link("https://github.com/wvhulle/learn-lean-riddles", "GitHub"). (#lang("Lean"))],
    priority: 1,
  )

  #skill(
    "Probability arithmetic in Lean",
    [Simplify probability calculations in formal mathematics. Available at #link("https://github.com/wvhulle/ennreal-arith", "GitHub"). (#lang("Lean"), #lang("Mathlib"))],
    priority: 2,
  )
]

#section("Spoken languages", priority: 2)[
  #skill("English, Dutch", "Native", priority: 2)
  #skill("French, German", "Intermediate", priority: 3)
]


#section("Education", priority: 1)[
  #education(
    organization: "KU Leuven",
    industry: "University",
    location: "Leuven, Belgium",
    degree: "Preparation program and Master of Science in Theoretical Physics (terminated early)",
    start-date: "Sep. 2019",
    end-date: "April 2021",
    priority: 3,
    courses: (
      "statistical mechanics",
      "data mining and neural networks",
      "thermodynamics",
      "analytical mechanics",
      "electrodynamics",
    ),
    volunteering: "Guide for international students.",
  )

  #education(
    organization: "University of Utrecht",
    industry: "Summer School",
    location: "Utrecht, Netherlands",
    degree: "Formalizing mathematics in Lean ",
    thesis: "Formal bayesian inference in Monty Hall",
    start-date: "July 2025",
    end-date: "July 2025",
    priority: 1,
    courses: ("Lean", "proof-assistants", "dependent type theory", "formal methods", "functional programming"),
  )

  #education(
    organization: "KU Leuven",
    industry: "University",
    location: "Leuven, Belgium",
    degree: "Master Pure Mathematics",
    thesis: "Cubical type theory at DistriNet",
    start-date: "Sep. 2017",
    end-date: "June 2019",
    priority: 1,
    courses: (
      "algebra",
      "analysis",
      "discrete mathematics",
      "differential geometry",
      "unified geometry",
      "topology",
      "machine learning",
      "neural networks",
    ),
    volunteering: "Coordinator student association.",
  )

  #education(
    organization: "VUB",
    industry: "University",
    location: "Brussels, Belgium",
    degree: "Bachelor of Science in Mathematics, Minor Computer Science",
    thesis: "Functional analysis and machine learning",
    start-date: "Sep. 2013",
    end-date: "Aug. 2017",
    priority: 4,
    courses: (
      "functional programming",
      "algorithms and data-structures",
      "logic",
      "analysis",
      "algebra",
      "philosophy",
      "geometry",
    ),
    volunteering: "Managing computer rooms and mathematics tutoring.",
  )
]

#section("Hobbies", priority: 1)[
  #skill(
    "Community founder",
    [Founder of #link("https://sysghent.be", "sysghent.be"). Talks, workshops, networking in Ghent about systems programming.],
    priority: 1,
  )

  #skill(
    "Electronics",
    [Assemble electronical circuits with simple sensors. Some experience with ARM and RISC-V boards such as ESP32c6, Arduino Uno (AVR), Raspberry Pico (RP2040).],
    priority: 2,
  )



  #skill(
    "Visit developer conferences",
    [I go to the developer conferences in Europe to meet colleagues and share my passion.],
    priority: 5,
  )
]
