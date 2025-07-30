#import "resume-template-style.typ": *

#show: resume.with(
  name: "Willem Vanhulle",
  email: "willemvanhulle@protonmail.com",
  website: "www.willemvanhulle.tech",
  phone: "+32 479 080 252",
  profile-image: "profile.jpg",
  target-pages: 1,
)

#section("Experience")[
  #experience(
    organization: "OTIV",
    industry: "Railway automation",
    location: "Ghent, Belgium",
    title: "Mid-level software engineer",
    start-date: "Apr. 2024",
    end-date: "June 2025",
    priority: 1,
    items: (
      pitem(
        title: "Distributed systems",
        description: [Built remote freight train control system with dynamic presence detection, custom async iterator toolkit, real-time connectivity monitoring with emergency breaking, and GStreamer/WebRTC video streaming.],
        priority: 1,
      ),
      pitem(
        title: "Build systems & CI",
        description: "Integrated LSP with Bazel, led Bazel→Cargo migration, wrote CI/CD pipelines from scratch, optimized pipeline runtime by 95%.",
        priority: 1,
        languages: ("Rust",),
      ),
      pitem(
        title: "Language expertise",
        description: "Organized advanced Rust training on undocumented language features, performed deep technical code reviews.",
        priority: 2,
        languages: ("Rust",),
      ),
      pitem(
        title: "Testing",
        description: "Implemented comprehensive unit/integration test suites for safety-critical railway systems.",
        priority: 3,
      ),
      pitem(
        title: "Real-time interfaces",
        description: "Built multi-monitor native GUIs with streaming data table widgets and geographical map rendering using Slint.",
        priority: 3,
        languages: ("Rust",),
      ),
      pitem(
        title: "Embedded systems",
        description: "Developed software for real-time hardware control (touchscreens, physical levers, sensors).",
        priority: 3,
      ),
    ),
  )

  #experience(
    organization: "Inbiose",
    industry: "Biotechnology",
    location: "Ghent, Belgium",
    title: "Software engineer",
    start-date: "June 2021",
    end-date: "January 2024",
    priority: 1,
    items: (
      pitem(
        title: "Full-stack development",
        description: "Built data collection platform with time-series visualization, implemented type-safe large-scale web applications.",
        priority: 3,
        languages: ("TypeScript", "JavaScript", "HTML", "SCSS"),
      ),
      pitem(
        title: "Robotics & embedded",
        description: "Built industrial fermentation robots, interfaced with legacy hardware (25+ years) and modern sensors, migrated to async programming.",
        priority: 1,
        languages: ("Python", "Rust", "C++"),
      ),
      pitem(
        title: "High-performance computing",
        description: "Implemented property-based testing for genetic data batch processing, optimized bioinformatics pipelines.",
        priority: 2,
        languages: ("Python",),
      ),
      pitem(
        title: "Database systems",
        description: "Designed high-performance scientific databases (PostgreSQL, Neo4j), modeled complex scientific processes.",
        priority: 3,
        languages: ("R", "SQL"),
      ),
      pitem(
        title: "Process automation",
        description: "Automated cellular cloning and fermentation processes, implemented real-time process control systems.",
        priority: 3,
      ),
      pitem(
        title: "Embedded optimization",
        description: "Optimized real-time embedded systems for Arduino/ESP32 microcontrollers.",
        priority: 3,
        languages: ("C",),
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
      [*Real-time monitoring:* Built heartbeat system detecting connection failures between remote operators and autonomous trains.],
      [*Stream processing:* Designed pub-sub/TCP stream aggregator with automatic failover and emergency breaking triggers.],
    ),
  )

  #project(
    title: "Fermentation robot",
    organization: "Inbiose",
    start-date: "Oct. 2023",
    end-date: "April 2024",
    priority: 3,
    items: (
      [*Systems API design:* Built type-safe serial communication API in Rust with comprehensive error handling for robotic systems.],
      [*Real-time control systems:* Implemented PID-controlled process automation with anomaly detection for 48-hour continuous operation.],
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
    [Designed runtime-agnostic async stream combinator using low-level primitives (Waker, Poll, Pin). Published as open-source #link("https://crates.io/crates/forked_stream", "crate"). (#lang("Rust"))],
    priority: 1,
  )

  #skill(
    "Smart plant pot workshop",
    [Organise and co-lead a workshop on creating a smart plant pot watering system with a Raspberry Pi Pico / ESP32c6 and async Embassy. Integrated USB serial communication and debugging (with JTAG or hardware debug probes), analogue sensing and wireless network notifications. Code at #link("https://github.com/sysghent/plant-pot", "GitHub"). (#lang("Rust"))],
    priority: 2,
  )



  #skill(
    "Lean computational riddles workshop",
    [Created and delivered workshop on solving computational problems with theorem proving. Interactive problem-solving using dependent types and formal verification. Materials at #link("https://github.com/wvhulle/learn-lean-riddles", "GitHub"). (#lang("Lean"))],
    priority: 2,
  )

  #skill(
    "Probability arithmetic in Lean",
    [Developed library for simplifying probability calculations in formal mathematics. Extended real number arithmetic for probabilistic proofs. Available at #link("https://github.com/wvhulle/ennreal-arith", "GitHub"). (#lang("Lean"))],
    priority: 1,
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
    industry: "University",
    location: "Utrecht, Netherlands",
    degree: "Summer School: Formalizing Mathematics in Lean",
    start-date: "July 2025",
    priority: 1,
    courses: ("advanced study of theorem proving", "dependent type theory", "mathematical formalization"),
  )

  #education(
    organization: "KU Leuven",
    industry: "University",
    location: "Leuven, Belgium",
    degree: "Master of Science in Pure Mathematics (Eng.)",
    thesis: "Thesis on functional programming languages",
    start-date: "Sep. 2017",
    end-date: "June 2019",
    priority: 1,
    courses: ("algebra", "analysis", "discrete mathematics", "differential geometry", "unified geometry", "topology"),
    volunteering: "Coordinator of Groot-Begijnhof Leuven student association.",
  )

  #education(
    organization: "VUB",
    industry: "University",
    location: "Brussels, Belgium",
    degree: "Bachelor of Science in Mathematics, Minor Computer Science",
    thesis: "Thesis on unsupervised learning",
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
    [Founder of "Systems Programming Ghent" (#link("https://sysghent.be", "sysghent.be")): organise networking events, in-depth talks and give workshops in Ghent about systems programming languages such as Rust and C++.],
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
