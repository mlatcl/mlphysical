---
week: 3
session: 2
title: "Emulation"
abstract:  >
  In this lecture we motivate the use of emulation and introduce the GPy software as a framework for building Gaussian process emulators.
author:
- family: Lawrence
  given: Neil D.
  gscholar: r3SJcvoAAAAJ
  institute: University of Cambridge
  twitter: lawrennd
  url: http://inverseprobability.com
layout: lecture
time: "12:00"
date: 2024-10-29
youtube: -dOrt-hi-uI
oldyoutube:
- code: -dOrt-hi-uI
  year: 2024
- code: Zw2es1Khu_c
  year: 2022
- code: 2-kB5J_pfno
  year: 2021
- code: 7Ct_16JicLw
  year: 2020
ipynb: true
reveal: true
featured_image: slides/diagrams/uq/emukit-playground-bayes-opt.png
transition: None
---


\include{_notebooks/includes/plot-setup.md}
\include{_software/includes/notutils-software.md}
\include{_software/includes/mlai-software.md}
\include{_ml/includes/accelerate-programme.md}
\include{_ml/includes/related-approaches.md}
\include{_ml/includes/probabilistic-programming.md}
\include{_ml/includes/approximate-bayesian-computation.md}
\include{_ml/includes/causality-section.md}

\notes{We've introduced the notion of a simulator. A body of computer code that expresses our understanding of a particular physical system. We introduced such simulators through *physical laws*, such as laws of gravitation or electro-magnetism. But we soon saw that in many simulations those laws become abstracted, and the simulation becomes more phenomological.}

\notes{Even full knowledge of all laws does not give us access to 'the mind of God', because we are lacking information about the data, and we are missing the compute. These challenges further motivate the need for abstraction, and we've seen examples of where such abstractions are used in practice.}

\notes{The example of Conway's Game of Life highlights how complex emergent phenomena can require significant computation to explore.}

\section{Emulation}

\notes{There are a number of ways we can use machine learning to accelerate scientific discovery. But one way is to have the machine learning model learn the effect of the rules. Rather than worrying about the detail of the rules through computing each step, we can have the machine learning model look to abstract the rules and capture emergent phenomena, just as the Maxwell-Boltzmann distribution captures the essence of the behavior of the ideal gas.}

\notes{The challenges of Laplace's gremlin present us with issues that we solve in a particular way, this is the focus of Chapter 6 in *The Atomic Human*.}

\include{_books/includes/the-atomic-human.md}

\notes{What follows is a quote form Chapter 6, which introduces Laplace's gremlin and its consequences.}

\include{_simulation/includes/deep-thought-simulation.md}

\include{_ai/includes/bear-of-little-brain.md}

\section{Surrogate Modelling in Practice}

\notes{The knowledge of ones own limitations that Pooh shows is sometimes known as Socratic wisdom, and its a vital part of our intelligence. It expresses itself as humility and skepticism.}

\notes{In the papers we reviewed last lecture, neural networks are being used to speed up computations. In this course we've introduced Gaussian processes that will be used to speed up these computations. In both cases the ideas are similar. Rather than rerunning the simulation, we use data from the simulation to *fit* the neural network or the Gaussian process to the data.}

\notes{We'll see an example of how this is done in a moment, taken from a simple ride hailing simulator, but before we look at that, we'll first consider why this might be a useful approach.}


\slides{* Emergent phenomena require computational power.
* In surrogate modelling we use statistical/ML models to learn regularities in those emergent phenomena.}
\notes{As we've seen from the very simple rules in the Game of Life, emergent phenomena we might be interested in take computation power to discover, just as Laplace's and Dirac's quotes suggest. The objective in surrogate modelling is to harness machine learning models to learn those physical characteristics.}

\include{_simulation/includes/simulation-types.md}
\include{_simulation/includes/f1-simulation-fidelity.md}


\section{Epidemiology}

\notes{The same concept of modelling at a particular fidelity comes up in epidemiology. Disease is transmitted by direct person to person interactions between individuals and objects. But in theoretical epidemiology, this is approximated by differential equations. The resulting models look very similar to reaction rate models used in Chemistry for well mixed beakers. Let's have a look at a simple example used for modelling the policy of 'herd immunity' for Covid19.}

\include{_simulation/includes/herd-immunity.md}

\notes{Thinking about our Formula 1 example, and the differing levels of fidelity that might be included in a model, you can now imagine the challenges of doing large scale theoretical epidemiology. The compartment model is operating at a particular level of fidelity. Imagine trying to modify this model for a specific circumstance, like the way that the University of Cambridge chooses to do lectures. It's not appropriate for this level of fidelity. You need to use different types of models for that decision making. [One of our case studies](https://mlatcl.github.io/mlphysical/casestudies/tti-explorer.html) looks at a simulation that was used to advise the government on the Test Trace Isolate program that took a different approach [@Delve-tti20].}

\include{_simulation/includes/simulation-strategies.md}
\include{_simulation/includes/production-code-simulation.md}


\include{_simulation/includes/python-simulation-resources.md}

\subsection{Conclusions}

\notes{We summarized the different types of simulation into roughly three groups. Firstly, those based on physical laws in the form of differential equations. Examples include certain compartmental epidemiological models, climate models and weather models. Secondly, discrete event simulations. These simulations often run to a 'clock', where updates to the state are taken in turns. The Game of Life is an example of this type of simulation, and Formula 1 models of race strategy also use this approach. There is another type of discrete event simulation that doesn't use a turn-based approach but waits for the next event. The [Gillespie algorithm](https://en.wikipedia.org/wiki/Gillespie_algorithm) is an example of such an approach but we didn't cover it here. Finally, we realized that general computer code bases are also simulations. If a company has a large body of code, and particularly if it's hosted within a streaming environment (such as Apache Kafka), it's possible to back test the code with different inputs. Such backtests can be viewed as simulations, and in the case of large bodies of code (such as the code that manages Amazon's automated buying systems) the back tests can be slow and could also benefit from emulation.}

\notes{We've introduced emulation as a way of dealing with different fidelities of simulations and removing the computational demands that come with them. We've highlighted how emulation can be deployed and introduced the `GPy` software for Gaussian process modelling.}

\slides{* Characterised types of simulation.
    * Physical laws
	* Discrete event
	* Production Software Systems
* Introduced notion of emulation to replace simulation.
* Overviewed GPy software.}

\thanks

\reading

\references

