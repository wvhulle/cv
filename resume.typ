#import "template.typ": *

#show: resume.with(
  name: "Willem Vanhulle",
  email: "willemvanhulle@protonmail.com",
  website: "www.willemvanhulle.tech",
  phone: "+32 479 080 252",
  profile-image: image("willem.jpg"),
  font: "Fira Sans",
  font-code: "FiraCode Nerd Font Mono",
)

= Experience

#experience(
  organization: "DevLab",
  industry: "Professional training",
  location: "Ghent, Belgium",
  start-date: "June. 2025",
  title: [Course instructor],
  items: (
    project(
      title: [Systems programming workshops],
      description: [Giving talks about a variety of systems programming topics and inviting guest speakers (see @hobbies).],
      languages: (
        "Rust",
        "Lean",
        "Nushell",
        [Typst #footnote[Use this Typst #link("https://github.com/wvhulle/cv")[resume] as a template for your own.] ],
      ),
      skills: ("teaching", "embedded", "electronics"),
      slides: "https://github.com/sysghent",
    ),
    project(
      title: [Intensive Rust evening course],
      description: [Deliver 7-week intensive Rust course about safe systems programming for professional Python, C and C++ developers.],
      skills: ("motivational teaching",),
      languages: ("Nix", "Rust", "Typst", "C", "C++"),
      source: "https://github.com/wvhulle/rust-course-ghent",
      live: "https://pretix.eu/devlab/rust-course/",
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
  items: (
    project(
      title: "Distributed embedded systems",
      description: [Hybrid remote control system for freight trains of large railway company. Implement real-time connectivity monitoring using video and telemetry.],
      languages: ("Rust",),
      skills: ("asynchronous", "media streaming", "zero-copy signal processing"),
    ),
    project(
      title: "Developer tooling & build systems",
      description: "Editor integrations. Reduce CI/CD pipelines runtime by 95%. ",
      languages: ("Rust", "Nix", "Bash", "Python"),
      skills: ("Git", "DevOps"),
    ),
    // project(
    //   title: "Learning and development",
    //   description: "Professional training for internal software and embedded teams.",
    //   languages: ("Rust",),
    // ),
    project(
      title: "Native desktop user interfaces",
      description: "Architect multi-monitor native Rust desktop application. Design and maintain front-end components for displaying live train data. ",
      languages: ("Rust", "HTML"),
      skills: ("safety standards", "reactive programming", "UI/UX"),
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
  items: (
    project(
      title: "Collaborative scientific front-end",
      description: [Collaborative spreadsheet web interface and database. Datagrid caching and conflict resolution on restore. ],
      languages: ("TypeScript",),
      skills: ("NodeJS", "WebSocket", "JSON-RPC", "CRDTs", "data collection"),
    ),
    project(
      title: "Industrial robotic control",
      description: [Control software for in-house fermentation robot. Read out raw signals from electronics and process data from optical sensors. Implement safety mechanisms for biochemical fermentation experiments.],
      languages: ("Python", "Rust", "C++", "Visual Basic"),
      skills: ("robotics", "real-time systems", "dashboards", "time-series", "automation"),
    ),
  ),
)

// #experience(
//   organization: "High-school and university",
//   industry: "Education",
//   location: "Brussels & Leuven, Belgium",
//   title: "Part-time mathematics lecturer & tutor",
//   start-date: "Nov. 2014",
//   end-date: "Jan. 2021",
//   items: (
//     project(
//       title: "Part-time teacher",
//       description: [Teach algebra to refugees and adults with learning difficulties about algebra. Create engaging lessons and exercises.],
//       languages: ("Python", "LaTeX"),
//     ),
//     project(
//       title: "Freelance tutor",
//       description: [Tutor high-school and university students in analysis, statistics, linear algebra.],
//     ),
//   ),
// )




= Public Projects

#project(
  title: "Nu-Lint",
  description: [A helpful linter for #link("https://www.nushell.sh/")[NuShell] with more than 80 lint rules and automatic fixes.],
  languages: ("Nu",),
  skills: ("parsing", "static analysis", "type inference"),
  source: "https://crates.io/crates/nu-lint",
  slides: "https://github.com/wvhulle/nu-glue",
)

#project(
  title: "Clone-Stream",
  description: [A functional approach to data stream processing with a type of async iterators. Conference talk at #link("https://eurorust.eu/talks/make-your-own-stream-operators/", "EuroRust in Paris").],
  languages: ("Rust",),
  skills: ("state machines", "asynchronous programming", "unsafe traits"),
  docs: "https://docs.rs/clone-stream/0.4.0",
  slides: "https://github.com/wvhulle/streams-eurorust-2025",
  live: "https://youtu.be/tEFZivACllI?si=ydzQWmQnI9mGnY_e",
  source: "https://github.com/wvhulle/clone-stream",
)

#project(
  title: "ENNReal-Arith",
  description: [Help mathematicians and computer scientists formalize probability theory.],
  languages: ("Lean",),
  skills: ("theorem proving", "formal verification"),
  source: "https://github.com/wvhulle/ennreal-arith",
)

#project(
  title: "Nix User Modules",
  description: [Set of Nix modules that provide user-level declarative services for Linux operating systems.],
  source: "https://github.com/wvhulle/nix-user-modules",
  languages: ("Nix",),
  skills: ("network security", "SystemD", "DevOps", "Linux", "NixOS"),
)

#project(
  title: "Ferrous-Owl",
  description: [Editor plugin for new Rust users to learn about move semantics and the ownership system interactively.],
  source: "https://github.com/wvhulle/ferrous-owl",
  languages: ("Rust", "TypeScript"),
  skills: ("teaching", "static analysis", "editor plugins"),
)

= Spoken languages
#project(title: "Native", description: "English, Dutch.")
#project(title: "Intermediate", description: "French, German.")


= Education
#education(
  organization: "KU Leuven",
  industry: "University",
  location: "Leuven, Belgium",
  degree: "Preparation program and Master of Science in Theoretical Physics (terminated early)",
  start-date: "Sep. 2019",
  end-date: "April 2021",
  courses: (
    "statistical mechanics in Julia",
    "data mining and neural networks in Python",
    "thermodynamics",
    "analytical mechanics",
    "electrodynamics",
    "quantum mechanics",
  ),
  volunteering: "Guide for international students.",
)



#education(
  organization: "KU Leuven",
  industry: "University",
  location: "Leuven, Belgium",
  degree: "Master Pure Mathematics",
  thesis: [Models of univalence in cubical sets (#link("https://scriptiebank.be/scriptie/2019/models-univalence-cubical-sets", "summary")).],
  start-date: "Sep. 2017",
  end-date: "June 2019",
  courses: (
    // "cubical type theory in Agda",
    "category theory",
    "algebra",
    "cryptography",
    "discrete mathematics",
    "algebraic topology",
    "differential geometry",
    // "programming language semantics",
    "operator algebras",
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
  courses: (
    "functional programming in Scheme",
    // "philosophy of mathematics in Coq",
    "computer systems in Intel 8086 assembly",
    "database design",
    "algorithms and data-structures in Scheme",
    // "mathematical logic",
    // "analysis",
    "algebra",
    "encoding and decoding",
    "cryptography",
    "numerical methods",
    "differential equations",
    "statistics in R",
    "linear algebra",
  ),
  volunteering: "Managing computer rooms.",
)

= Hobbies <hobbies>
#project(
  title: "Founder of SysGhent",
  description: [Facilitate professional and cross-cultural networking in Ghent. #label("sysghent")],
  live: "https://sysghent.be",
)


#project(
  title: "Sports",
  description: "Hiking, badminton, dancing",
)




