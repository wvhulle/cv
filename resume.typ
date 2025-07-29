#import "resume-style.typ": *

#setup-page()

// Apply gray underlines to all links in the document
#show link: it => {
  underline(stroke: gray, it)
}


#resume-header(
  "Willem Vanhulle",
  "willemvanhulle@protonmail.com",
  "willemvanhulle.tech/",
  "+32 479 080 252",
)

#section-header("Experience")

#resume-entry(
  "OTIV (Remote operation of semi-autonomous rail vehicles)",
  "Ghent, Belgium",
  "Mid-level software engineer",
  "Apr. 2024 - current",
  items: (
    [*Distributed systems:* Work on a distributed system to operate freight trains remotely. Create a dynamic presence detection system. Create an internal asynchronous iterator / stream toolkit. Create a crucial connectivity monitoring systems that can react to connection loss and engage emergency breaking. Manage real-time audio- and video-streams through GStreamer and WebRTC.],
    [*Developer tools:* Smooth out integration between the language-server and the Bazel build system. Lead transition from Bazel to the Cargo build system for one team. Write CI/CD pipelines from scratch. Reduced run-time of existing CI pipelines up to 95%. (#lang("Rust"))],
    [*Mentorship:* Organised trainings on parts of the programming language that are lacking in documentation. Performed thorough code reviews and coached junior colleagues. (#lang("Rust"))],
    [*Tests:* Write extensive unit tests for new and existing software modules. Implement integration tests based on requirements given by railway companies.],
    [*Native GUI:* Co-create several immersive, multi-monitor, native user-interfaces. Implement widgets representing streamed data tables. Create a geographical map widget with highlighted train routes and Slint. (#lang("Rust"))],
    [*Embedded:* Write software modules interfacing with real physical controls of trains such as custom touch-screens, toggles and traction/breaking levers, running on Linux.],
  ),
)

#resume-entry(
  "Inbiose (Microbial production of speciality carbohydrates)",
  "Ghent, Belgium",
  "Software engineer",
  "June 2021 - January 2024",
  items: (
    [*Micro-biotechnology:* Learn science behind cellular cloning of e. coli. bacteria, used for producing sugars with special health benefits. Learn process of fermentation and down-stream processing with ion-exchange and membrane filtering. Get involved in lab activities with lab workers, operators and researchers.],
    [*Web-development:* Create graphical web-based data collection procedure and application for the down-stream processing department. Create accompanying simple time-series and data-grid visualisation widgets with Svelte. Introduce modern typing as a tool for creating large web applications. (#lang("TypeScript"), #lang("HTML"), #lang("SCSS"))],
    [*Bio-informatics:* Implement property-based unit tests to verify correctness of batch operations on internal, proprietary genetic data. Extend and maintain internal tools for bio-informatics. (#lang("Python"))],
    [*Embedded systems:* Supported creation of industrial small-scale microbial fermentation robots. Interfaced with legacy hardware (more than 25 years old) and modern optical industrial sensors. Transitioned from synchronous to asynchronous programming. (#lang("Python"), #lang("Rust"))],
    [*Data modelling:* Analyse and model internal scientific processes. Model and construct scientific databases in PostgreSQL. Use graph-oriented databases such as Neo4j. (#lang("R"))],
    [*Mentorship:* Assist electronics engineers in optimising internal embedded programs for Arduino and ESP32 micro-controllers. (#lang("C"))],
  ),
)

#resume-entry(
  "CVO (Adult and refugee high-school)",
  "Leuven, Belgium",
  "Mathematics guest lecturer",
  "Sept. 2020 - Jan. 2021",
  items: (
    [*Teaching:* Mathematics and programming courses and document preparation. (#lang("Python"), #lang("LaTeX"))],
  ),
)

#section-header("Major professional projects")

#project-entry(
  "Emergency breaking mechanism",
  "OTIV",
  "Sept. 2024 - Mar. 2025",
  items: (
    [*Heartbeat monitor:* Detects whether the connection between a remote human operator and a semi-autonomous freight train is still normal.],
    [*Stream aggregator:* Initialise incoming (and outgoing) pub-sub, TCP data streams for assigned freight trains. Aggregate the streams, detect connection loss, initiate emergency breaking mechanism. Findings on #link("https://willemvanhulle.tech/blog", "personal blog").],
  ),
)

#project-entry(
  "Fermentation robot",
  "Inbiose",
  "Oct. 2023 - April 2024",
  items: (
    [*Serial communication abstraction layer:* Create a high-level and safe serial API in Rust for operating essential components for a fermentation robot. Implemented thorough error detection and propagation.],
    [*Fermentation process manager:* Add nutrients and chemicals throughout a 48h biological process for growing e. coli. bacteria. Detect anomalies and stabilise with PID-control.],
  ),
)

#project-entry(
  "Collaborative data-grid",
  "Inbiose",
  "Apr. 2023 - Feb. 2024",
  items: (
    [*Distributed data-frames:* Distributed, database-backed, persisted data-grid.],
    [*Spreadsheet interface:* Interactive co-operative table view for lab workers to enter chemical process data with columns grouping and multiple cell types, similar to a restricted version of Google Docs.],
  ),
)

#section-header("Hobby projects")

#skill-entry(
  "Splitting data streams",
  [Created a functional asynchronous combinator to split data streams / asynchronous iterators. Run-time agnostic and fully tested. Intended to be used with many, simultaneous splits. Built with low-level asynchronous primitives such as Waker, Poll and Pin. Available as a public #link("https://crates.io/crates/forked_stream", "crate"). (#lang("Rust"))],
)

#skill-entry(
  "Smart plant pot workshop",
  [Organise and co-lead a workshop on creating a smart plant pot watering system with a Raspberry Pi Pico / ESP32c6 and async Embassy. Integrated USB serial communication and debugging (with JTAG or hardware debug probes), analogue sensing and wireless network notifications. Event at #link("https://www.meetup.com/systems-programming-ghent/events/307269551", "MeetUp"). (#lang("Rust"))],
)

#section-header("Spoken languages")

#skill-entry("English, Dutch", "Native")
#skill-entry("French, German", "Intermediate")



#section-header("Education")

#resume-entry(
  "KU Leuven",
  "Leuven, Belgium",
  "Preparation program and Master of Science in Theoretical Physics (terminated early)",
  "Sep. 2019 – April 2021",
  items: (
    [*Completed courses:* Statistical mechanics, data mining and neural networks, thermodynamics, analytical mechanics, electrodynamics.],
    [*Volunteering roles:* Guide for international students.],
  ),
)

#resume-entry(
  "KU Leuven",
  "Leuven, Belgium",
  "Master of Science in Pure Mathematics (Eng.), thesis on functional programming languages",
  "Sep. 2017 – June 2019",
  items: (
    [*Completed courses:* Algebra, analysis, discrete mathematics, differential geometry, unified geometry, topology.],
    [*Volunteering roles:* Coordinator of Groot-Begijnhof Leuven student association.],
  ),
)

#resume-entry(
  "VUB",
  "Brussels, Belgium",
  "Bachelor of Science in Mathematics, Minor Computer Science, thesis on unsupervised learning",
  "Sep. 2013 – Aug. 2017",
  items: (
    [*Completed courses:* Functional programming, algorithms and data-structures, logic, analysis, algebra, philosophy, geometry.],
    [*Student job:* Mathematics tutor.],
  ),
)

#section-header("Hobbies")

#skill-entry(
  "Community founder",
  [Founder of "Systems Programming Ghent" (#link("https://sysghent.be", "sysghent.be")): organise networking events, in-depth talks and workshops in Ghent about systems programming languages such as Rust and C++.],
)

#skill-entry(
  "Play with electronical components",
  [Order development boards and assemble simple electronical circuits with simple sensors. Some experience with ARM and RISC-V boards such as ESP32c6, Arduino Uno (AVR), Raspberry Pico (RP2040).],
)

#skill-entry(
  "Visit developer conferences",
  [I go to the developer conferences in Europe to meet colleagues and share my passion.],
)
