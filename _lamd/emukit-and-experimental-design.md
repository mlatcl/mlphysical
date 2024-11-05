---
week: 5
session: 2
layout: lecture
title: "Emukit and Experimental Design"
featured_image: slides/diagrams/uq/emukit-vision.svg
abstract: >
  We have introduced you to the sequential process by which we decide to evaluation points in a simulation through Bayesian optimization. In this lecture we introduce Emukit. Emukit is a software framework for decision programming via surrogate modelling and emulation. It formalizes the process of selecting a point via an acquisition function and provides a general framework for incorporating surrogate models and the acquisition function of your choice. We'll then show how Emukit can be used for *active* experimental design.
author:
- family: Lawrence
  given: Neil D.
  gscholar: r3SJcvoAAAAJ
  institute: University of Cambridge
  twitter: lawrennd
  url: http://inverseprobability.com
layout: lecture
time: "12:00"
date: 2024-11-12
ipynb: true
reveal: true
youtube: RtwVraTI5lU
oldyoutube:
- code: RtwVraTI5lU
  year: 2022
- code: NVEX8v3eO6Y
  year: 2021
- code: 0nxa8TOmWB0
  year: 2020
transition: None
---


\include{_mlphysical/includes/mlphysical-notebook-setup.md}
\include{_simulation/includes/simulation-system.md}
\include{_data-science/includes/experiment-analyze-design.md}
\include{_simulation/includes/packing-problems.md}

\subsection{Modelling with a Function}

\notes{What if the question of interest was quite simple, for example in the packing problem, we just wanted to know the minimum side length. Sometimes, regardless of the complexity of the problem, there can be a pattern to the answer that is emergent due to regularities in the underlying problem.}

\slides{* What if question of interest is simple?
* For example in packing problem: what is minimum side length?}

\include{_gp/includes/erich-friedman-packing-gp.md}

\include{_uq/includes/emulation.md}

\include{_software/includes/gpy-software.md}
\include{_gp/includes/gpy-tutorial.md}
\include{_gp/includes/gpy-emulation.md}

\include{_simulation/includes/gen-ai-emulation.md}

\include{_uq/includes/emukit-playground.md}

\notes{\codeassignment{You now know enough to build a simple emulation. To test your knowledge have a go at cobmining GPy with Thomas House's herd immunity simulation. Can you build a Gaussian process emulator of the simulation? Don't spent do long on this exercise. The idea is just to consolidate things like what the inputs and outputs should be.}}

\include{_uq/includes/uq-sampling-history-doe.md}
\include{_software/includes/emukit-software.md}
\include{_uq/includes/emukit-vision.md}
\include{_uq/includes/emukit-tutorial.md}


\notes{This introduction is based on [An Introduction to Experimental Design with Emukit](https://github.com/EmuKit/emukit/blob/master/notebooks/Emukit-tutorial-experimental-design-introduction.ipynb) written by Andrei Paleyes and Maren Mahsereci.}

\include{_uq/includes/model-free-experimental-design.md}

\include{_uq/includes/emukit-experimental-design.md}

\subsection{Conclusions}

\notes{We've introduced the Emukit software and outlined its design philosophy. We've then performed some simple examples using Emukit to perform *experimental design* as a task. In particular we saw how we could define the task as an acquisition funciton, a loop, an emulator model and a target function.

You can compare the design of this software with its predecessor, `GPyOpt`, which is less modular in its design, and more focussed on Bayesian optimization.}

\slides{* Emukit software.
* Example around experimental design.
* Sequential decision making with acquisiton functions.
* Generalizes from the BayesOpt process (e.g. `GPyOpt`)
}

\thanks

\reading

\references
