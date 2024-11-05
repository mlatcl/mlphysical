---
week: 3
session: 1
title: "Simulation"
featured_image: slides/diagrams/simulation/Loafer.gif
abstract: >
  This lecture will introduce the notion of simulation and review the different types of simulation we might use to represent the physical world. 
author:
- family: Lawrence
  given: Neil D.
  gscholar: r3SJcvoAAAAJ
  institute: University of Cambridge
  twitter: lawrennd
  url: http://inverseprobability.com
layout: lecture
time: "12:00"
date: 2024-10-24
youtube: fDZ_6WxFAyM
oldyoutube:
- code: fDZ_6WxFAyM
  year: 2024
- code: ieEFaGml4lM
  year: 2022
ipynb: True
reveal: True
transition: None
---

\notes{Last lecture Carl Henrik introduced you to some of the challenges of approximate inference. Including the problem of mathematical tractability. Before that he introduced you to a particular form of model, the Gaussian process.}

\include{_software/includes/notutils-software.md}
\include{_software/includes/mlai-software.md}
\include{_simulation/includes/wolfram-automata.md}
\include{_simulation/includes/rule-30.md}
\include{_simulation/includes/game-of-life.md}
\include{_simulation/includes/wolfram-conway-life.md}
\include{_simulation/includes/packing-problems.md}

\include{_gp/includes/gp-intro-very-short.md}

\notes{So, Gaussian processes provide an example of a particular type of model. Or, scientifically, we can think of such a model as a mathematical representation of a hypothesis around data. The rejection sampling view of Bayesian inference can be seen as rejecting portions of that initial hypothesis that are inconsistent with the data. From a Popperian perspective, areas of the prior space are falsified by the data, leaving a posterior space that represents remaining plausible hypotheses.}

\notes{The flaw with this point of view is that the initial hypothesis space was also restricted. It only contained functions where the instantiated points from the function are jointly Gaussian distributed.}

\include{_gp/includes/planck-cmp-master-gp.md}
\include{_physics/includes/universe-gaussian.md}
\include{_physics/includes/precise-physical-laws.md}
\include{_physics/includes/simulation-scales.md}

\subsection{How Machine Learning Can Help}

\notes{Machine learning models can often capture some of the regularities of the system that we find in these emergent properties. They do so, not from first principles, but from analysis of the data. In the Atomic Human, I argue that this has more in common with how human intellience solves problems than through first-principles modelling. When it comes to ML and the Physical World, the aim is to use machine learning models alongside simulations to get the best of both worlds.}

\addatomic{hooshing, Pooh's law of}{157-158,160}

\include{_ml/includes/simulation-conclusion.md}

\thanks

\references
