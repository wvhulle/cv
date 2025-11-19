#import "template.typ": *

#show: resume.with(
  name: "Willem Vanhulle",
  email: "willemvanhulle@protonmail.com",
  website: "www.willemvanhulle.tech",
  phone: "+32 479 080 252",
  profile-image: image("willem.jpg"),
  font: "Fira Sans",
  font-code: "FiraCode Nerd Font Mono",
  target-pages: 2,
)

#section("Experience")[
  #experience(
    organization: "DevLab",
    industry: "Professional training",
    location: "Ghent, Belgium",
    priority: 1,
    start-date: "June. 2025",
    title: [Course instructor],
    items: (
      pitem(
        title: [Systems programming workshops],
        description: [Topics include embedded async Rust with Embassy, proving safety properties with proof assistant Lean, scripting for systems engineers. See #link("https://sysghent.be/events")[events].],
        priority: 2,
        languages: ("Rust", "Embassy", "ESP32", "Raspberry Pico", "UART", "Lean", "Nushell"),
      ),
      pitem(
        title: [Intensive Rust evening course],
        description: [Deliver 7-week intensive Rust course for professional software developers. Hands-on approach with interactivity, exercises and focused on C or C++ developers. Course plan and lecture notes at #link("https://github.com/wvhulle/rust-course-ghent")[GitHub].],
        languages: ("Nix", "Rust", "Typst"),
      ),
    ),
  )
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
        title: "Distributed embedded systems",
        description: [Hybrid remote control system for freight trains of large railway company. Implement real-time connectivity monitoring using video and telemetry. Re-design software architecture and essential network primitives.],
        priority: 1,
        languages: ("Rust", "Tokio", "GStreamer", "WebRTC", "WebSocket", "Protobuf", "async"),
      ),
      pitem(
        title: "Developer tooling & build systems",
        description: "Editor integrations. Lead achitectural migration from Bazel to Cargo. Reduce CI/CD pipelines runtime by 95%. ",
        priority: 3,
        languages: ("Rust", "Git", "Nix", "Cargo", "Bash", "Python"),
      ),
      pitem(
        title: "Learning and development",
        description: "Rust training for internal teams about asynchronous and generic programming.",
        priority: 2,
        languages: ("Rust",),
      ),
      pitem(
        title: "Safety-critical user interfaces",
        description: "Architect multi-monitor native Rust desktop application. Design and maintain front-end components for displaying live train data. Following safety protocols for railway applications.",
        priority: 2,
        languages: ("Rust", "Slint", "HTML", "CSS", "front-end", "UI"),
      ),
    ),
  )

  #experience(
    organization: "Inbiose",
    industry: "Biotechnology & fermentation",
    location: "Ghent, Belgium",
    title: "Software engineer",
    start-date: "June 2021",
    end-date: "April 2024",
    priority: 1,
    items: (
      pitem(
        title: "Collaborative scientific front-end",
        description: [Collaborative spreadsheet web interface and database. Datagrid caching and conflict resolution on restore. automated data parsing from scientific instruments.],
        priority: 1,
        languages: ("TypeScript", "JavaScript", "Svelte", "D3.js"),
      ),
      pitem(
        title: [Chemical process monitoring],
        description: [Interactive web graphics for time-series visualizations. Create dashboards with Grafana for automation lab.],
        priority: 3,
      ),
      pitem(
        title: "Industrial robotic control",
        description: "Control software for in-house fermentation robot. Read out raw signals from electronics and process data from optical sensors. Implement safety mechanisms for failed biochemical experiments using Rust.",
        priority: 1,
        languages: ("Python", "Rust", "C++", "Visual Basic", "Windows", "COM"),
      ),
    ),
  )

  #experience(
    organization: "High-school and university",
    industry: "Education",
    location: "Brussels & Leuven, Belgium",
    title: "Part-time mathematics lecturer & tutor",
    start-date: "Nov. 2014",
    end-date: "Jan. 2021",
    priority: 2,
    items: (
      pitem(
        title: "Part-time teacher",
        description: [Teach algebra to refugees and adults with learning difficulties about algebra. Create engaging lessons and exercises.],
        languages: ("Python", "LaTeX"),
        priority: 1,
      ),
      pitem(
        title: "Freelance tutor",
        description: [Tutor high-school and university students in analysis, statistics, linear algebra.],
        priority: 2,
      ),
    ),
  )
]

// #section("Major professional projects", priority: 1)[
//   #project(
//     title: "Emergency breaking mechanism",
//     organization: "OTIV",
//     start-date: "Sept. 2024",
//     end-date: "Mar. 2025",
//     priority: 1,
//     items: (
//       [*Real-time monitoring:* Heartbeat system detecting connection failures.],
//       [*Stream processing:* Stream aggregator to trigger emergency breaking.],
//     ),
//   )

//   #project(
//     title: "Fermentation robot",
//     organization: "Inbiose",
//     start-date: "Oct. 2023",
//     end-date: "April 2024",
//     priority: 2,
//     items: (
//       [*Cross-language development*: Comprehensive error handling and testing.],
//       [*Real-time industrial control:* Control 48h fermentation process.],
//     ),
//   )

//   #project(
//     title: "Collaborative data-grid",
//     organization: "Inbiose",
//     start-date: "Apr. 2023",
//     end-date: "Feb. 2024",
//     priority: 3,
//     items: (
//       [*Distributed systems:* Built database-backed distributed data grid with persistence layer.],
//       [*Collaborative interfaces:* Designed real-time collaborative data entry system with operational transformation.],
//     ),
//   )
// ]

// #section("Formal verification & theorem proving", priority: 1)[
//   #skill(
//     "Lean community building",
//     [Started first Lean event in Ghent through workshop. Active on official Lean communication channels (Zulip). (#lang("Lean"))],
//     priority: 1,
//   )



//   #skill(
//     "Educational theorem proving",
//     [Created interactive problem-solving workshop using dependent types. Implemented custom elaboration, delaboration, and unexpanders. See #link("https://github.com/wvhulle/learn-lean-riddles", "GitHub"). (#lang("Lean"))],
//     priority: 1,
//   )
// ]

#section("Publications", priority: 1)[
  #skill(
    "Master's thesis",
    [Doing homotopy type theory (related to algebraic topology in mathematics) and cubical type theory in proof assistant Agda. See #link("https://scriptiebank.be/scriptie/2019/models-univalence-cubical-sets", "the summary of my thesis").],
    priority: 1,
  )


]

#section("Open-source contributions", priority: 1)[
  // #skill(
  //   "NixOS ecosystem contributions",
  //   [Active contributor to NixOS nixpkgs repository. Packaged MCP server for Lean LSP integration with Claude Code. See #link("https://github.com/NixOS/nixpkgs/pull/424646", "pull request"). (#lang("Nix"))],
  //   priority: 1,
  // )
  //
  #skill(
    "Nu-Lint linter for Nu-Shell",
    [A helpful linter for #link("https://www.nushell.sh/")[NuShell] that aims to help new users to use the top of the can in this new scripting language. Very fast and implemented in Rust. Contains more than 50 lint rules with fixes to help developers, see #link("https://crates.io/crates/nu-lint")[download page].],
    priority: 1,
  )

  #skill(
    "Clone-Stream stream processing library",
    [A functional approach to data processing with a type of async iterators. Implemented in Rust with minimal dependencies. Gave a conference talk about this project at #link("https://eurorust.eu/talks/make-your-own-stream-operators/", "EuroRust in Paris"). You can download it from #link("https://crates.io/crates/clone-stream", "crates.io"), view #link("https://youtu.be/tEFZivACllI?si=ydzQWmQnI9mGnY_e")[live recording] or #link("https://github.com/wvhulle/streams-eurorust-2025")[corrected slides].],
    priority: 1,
  )

  #skill(
    "ENNReal-Arith tactic for Lean",
    [Published a "tactic" (a kind meta-programming construct) for formally proving properties in proof assistant #link("https://lean-lang.org/")[Lean]. This project should help Lean developers formalize new facts of probability theory with Lean, see #link("https://github.com/wvhulle/ennreal-arith", "source code").],
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
    priority: 2,
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
    organization: "KU Leuven",
    industry: "University",
    location: "Leuven, Belgium",
    degree: "Master Pure Mathematics",
    thesis: "Models of univalence in cubical sets",
    start-date: "Sep. 2017",
    end-date: "June 2019",
    priority: 1,
    courses: (
      "cubical type theory",
      "category theory",
      "mathematical logic",
      "algebra",
      "encryption",
      "discrete mathematics",
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
      "compiler construction",
      "database design",
      "algorithms and data-structures",
      "mathematical logic",
      "analysis",
      "algebra",
      "information theory",
      "encryption",
    ),
    volunteering: "Managing computer rooms.",
  )
]

#section("Hobbies", priority: 1)[
  #skill(
    "Community founder and maintainer",
    [Founder of local social group #link("https://sysghent.be", "sysghent.be") in Ghent. Plan talks about systems programming, book locations for workshops, networking in Ghen.],
    priority: 1,
  )


  #skill(
    "Linux",
    [Declarative Linux operating system configuration with NixOS. Managing SystemD services and their inter-dependencies. See #link("https://github.com/wvhulle/nix-user-modules")[user-space modules] written in Nix and Nu.],
    priority: 2,
  )

  #skill(
    "Visit developer conferences",
    [I go to the developer conferences in Europe to meet colleagues and share my passion.],
    priority: 5,
  )

]
