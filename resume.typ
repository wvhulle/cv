#import "@local/flexible-resume:0.0.1": *

#show: resume.with(
  name: "Willem Vanhulle",
  email: "willemvanhulle@protonmail.com",
  website: "www.willemvanhulle.tech",
  phone: "+32 479 080 252",
  profile-image: image("profile.jpg"),
  font: "Fira Sans",
  font-code: "FiraCode Nerd Font Mono",
  target-pages: 2,
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
        title: "Developer tooling & IDE integration",
        description: "Created custom declarative tooling to integrate Rust LSP, Clippy linting, and formatting with Bazel build system. Implemented lint-on-save functionality. Led achitectural migration from Bazel to Cargo for better developer experience.",
        priority: 2,
        languages: ("Rust",),
      ),
      pitem(
        title: "Build optimization & CI",
        description: "Optimized large Rust project build times, wrote CI/CD pipelines from scratch, optimized pipeline runtime by 95%.",
        priority: 3,
        languages: ("Rust", "Bash"),
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
        description: "Architect multi-monitor desktop application, create live-streaming data tables for operators.",
        priority: 2,
        languages: ("Rust", "Slint"),
      ),
      pitem(
        title: "Embedded systems",
        description: "Developed software interfaces with real-time hardware control for trains (touchscreens, physical levers, sensors).",
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
        title: "Collaborative scientific interfaces",
        description: "Built large-scale collaborative web application for biotechnological process data management. Real-time multi-user data grids, D3.js time-series visualizations, automated data parsing from scientific instruments.",
        priority: 1,
        languages: ("TypeScript", "JavaScript", "Svelte", "D3.js"),
      ),
      pitem(
        title: "Mathematical document authoring",
        description: "Experience with mathematical notation rendering using LaTeX and (later) Typst for scientific documentation and interfaces.",
        priority: 3,
        languages: ("LaTeX", "Typst"),
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
        priority: 3,
        languages: ("R", "SQL"),
      ),
    ),
  )

  #experience(
    organization: "Independent & school",
    industry: "Education",
    location: "Brussels & Leuven, Belgium",
    title: "Part-time mathematics lecturer & tutor",
    start-date: "Nov. 2014",
    end-date: "Jan. 2021",
    priority: 2,
    items: (
      pitem(
        title: "Mathematics education",
        description: "Taught analysis, statistics, and linear algebra as tutor.",
        languages: ("Python", "LaTeX"),
        priority: 1,
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
      [*Stream processing:* Stream aggregator to trigger emergency breaking.],
    ),
  )

  #project(
    title: "Fermentation robot",
    organization: "Inbiose",
    start-date: "Oct. 2023",
    end-date: "April 2024",
    priority: 2,
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

#section("Formal verification & theorem proving", priority: 1)[
  #skill(
    "Lean community building",
    [Started first Lean event in Ghent through workshop. Active on official Lean communication channels (Zulip). (#lang("Lean"))],
    priority: 1,
  )

  #skill(
    "Lean metaprogramming",
    [Developed probability arithmetic library for formal mathematics. To be merged in Mathlib. See #link("https://github.com/wvhulle/ennreal-arith", "GitHub"). (#lang("Lean"), #lang("Mathlib"))],
    priority: 1,
  )

  #skill(
    "Educational theorem proving",
    [Created interactive problem-solving workshop using dependent types. Implemented custom elaboration, delaboration, and unexpanders. See #link("https://github.com/wvhulle/learn-lean-riddles", "GitHub"). (#lang("Lean"))],
    priority: 1,
  )
]

#section("Research & publications", priority: 1)[
  #skill(
    "Academic writing & technical blogging",
    [Published master's thesis on cubical type theory and active technical blog covering formal methods and programming. See #link("https://scriptiebank.be/scriptie/2019/models-univalence-cubical-sets", "thesis") and #link("https://willemvanhulle.tech/blog/", "blog"). (#lang("Agda"), #lang("Coq"))],
    priority: 1,
  )

  #skill(
    "Conference presentations & community leadership",
    [Presented at EuroRust 2025 conference about advanced stream processing in Rust (#link("https://youtu.be/tEFZivACllI?si=IagfJADE0y30QOYH")[video]). Founded and organizes technical communities (sysghent.be). Regular speaker at technical meetups.],
    priority: 1,
  )
]

#section("Open-source contributions", priority: 1)[
  #skill(
    "NixOS ecosystem contributions",
    [Active contributor to NixOS nixpkgs repository. Packaged MCP server for Lean LSP integration with Claude Code. See #link("https://github.com/NixOS/nixpkgs/pull/424646", "pull request"). (#lang("Nix"))],
    priority: 1,
  )

  #skill(
    "Rust community organizing",
    [Organized in-person Rust events, posted to official Rust mailing list. See #link("https://github.com/wvhulle/this-week-in-rust", "contributions"). Founded sysghent.be community for systems programming.],
    priority: 3,
  )

  #skill(
    "Published libraries & tools",
    [Functional stream processing library using async iterators. Conference talk at EuroRust. See #link("https://crates.io/crates/clone-stream", "crate") and #link("https://eurorust.eu/talks/make-your-own-stream-operators/", "talk"). (#lang("Rust"))],
    priority: 1,
  )

  #skill(
    "Bug reports & quality assurance",
    [Filed detailed bug reports with minimal working examples for JavaScript libraries and other open-source projects.],
    priority: 3,
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
    thesis: "Models of univalence in cubical sets - one year research at DistriNet on formalising algebra using cubical type theory",
    start-date: "Sep. 2017",
    end-date: "June 2019",
    priority: 1,
    courses: (
      "cubical type theory",
      "category theory",
      "mathematical logic",
      "algebra",
      "topology",
      "formal methods",
      "programming language semantics",
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
    priority: 2,
    courses: (
      "functional programming (Lisp, Scheme)",
      "philosophy of mathematics (presented on Coq)",
      "compiler construction (Haskell)",
      "algorithms and data-structures",
      "mathematical logic",
      "analysis",
      "algebra",
    ),
    volunteering: "Managing computer rooms and mathematics tutoring.",
  )
]

#section("Hobbies", priority: 1)[
  #skill(
    "Community founder",
    [Founder of #link("https://sysghent.be", "sysghent.be"). Talks, workshops, networking in Ghent about systems and functional programming.],
    priority: 1,
  )

  #skill(
    "Electronics",
    [Assemble electronical circuits with simple sensors. Some experience with ARM and RISC-V boards such as ESP32c6, Arduino Uno (AVR), Raspberry Pico (RP2040). ],
    priority: 2,
  )

  #skill(
    "Linux",
    [Declarative Linux operating system configuration with NixOS. Advanced functional shell scripting with NuShell, setting up SystemD services, software packaging and Linux driver management.],
    priority: 2,
  )

  #skill(
    "Visit developer conferences",
    [I go to the developer conferences in Europe to meet colleagues and share my passion.],
    priority: 5,
  )
]
