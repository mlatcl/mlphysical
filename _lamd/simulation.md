---
week: 3
session: 1
title: "Simulation"
featured_image: slides/diagrams/simulation/Loafer.gif
abstract:  >
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
youtube: ieEFaGml4lM
oldyoutube: 
- code: ieEFaGml4lM
  year: 2022
- code: k46Av3liq7M
  year: 2021
- code: AmI5nq8s4qc
  year: 2020
ipynb: True
reveal: True
transition: None
---


\notes{Last lecture Carl Henrik introduced you to some of the challenges of approximate inference. Including the problem of mathematical tractability. Before that he introduced you to a particular form of model, the Gaussian process.}

\include{_notebooks/includes/plot-setup.md}
\include{_software/includes/notutils-software.md}
\include{_software/includes/mlai-software.md}

\include{_books/includes/the-structure-of-scientific-revolutions.md}

\include{_simulation/includes/wolfram-automata.md}
\include{_simulation/includes/rule-30.md}
\include{_simulation/includes/game-of-life.md}
\include{_simulation/includes/wolfram-conway-life.md}
\include{_simulation/includes/packing-problems.md}


\include{_gp/includes/gp-intro-very-short.md}

\notes{So, Gaussian processes provide an example of a particular type of model. Or, scientifically, we can think of such a model as a mathematical representation of a hypothesis around data. The rejection sampling view of Bayesian inference can be seen as rejecting portions of that initial hypothesis that are inconsistent with the data. From a Popperian perspective, areas of the prior space are falsified by the data, leaving a posterior space that represents remaining plausible hypotheses.}

\notes{The flaw with this point of view is that the initial hypothesis space was also restricted. It only contained functions where the instantiated points from the function are jointly Gaussian distributed.}

\include{_gp/includes/planck-cmp-master-gp.md}

\notes{Those cosmological simulations are based on a relatively simple set of 'rules' that stem from our understanding of natural laws. These 'rules' are mathematical abstractions of the physical world. Representations of behavior in mathematical form that capture the interaction forces between particles. The grand aim of physics has been to unify these rules into a single unifying theory. Popular understanding of this quest developed because of Stephen Hawking's book, "[A Brief History of Time](https://en.wikipedia.org/wiki/A_Brief_History_of_Time)". The idea of these laws as 'ultimate causes' has given them a pseudo religious feel, see for example Paul Davies's book "[The Mind of God](https://en.wikipedia.org/wiki/The_Mind_of_God)" which comes from a quotation form Stephen Hawking. }

\newslide{}

> If we do discover a theory of everything ... it would be the ultimate triumph of human reason-for then we would truly know the mind of God
>
> Stephen Hawking in *A Brief History of Time* 1988

\speakernotes{Nice quote but having a unifying theory doesn't give us omniscience.}

\notes{This is an entrancing quote, that seems to work well for selling books (A Brief History of Time sold over 10 million copies), but as Laplace has already pointed out to us, the Universe doesn't work quite so simply as that. Commonly, God is thought to be omniscient, but having a grand unifying theory alone doesn't give us omniscience.}

\notes{Laplace's demon still applies. Even if we had a grand unifying theory, which encoded "all the forces that set nature in motion" we have an amount of work left to do in any quest for 'omniscience'.}

\newslide{}

> We may regard the present state of the universe as the effect of its
> past and the cause of its future. An intellect which at a certain
> moment would know all forces that set nature in motion, and all
> positions of all items of which nature is composed, ...
\newslide{}
> ... if this intellect
> were also vast enough to submit these data to analysis, it would
> embrace in a single formula the movements of the greatest bodies of
> the universe and those of the tiniest atom; for such an intellect
> nothing would be uncertain and the future just like the past would be
> present before its eyes.
>
> --- Pierre Simon Laplace [@Laplace-essai14]

\speakernotes{Laplace's demon requires us to also know positions of all items and to submit the data to analysis.}

\newslide{}

\notes{We summarized this notion as }
$$
\text{data} + \text{model} \stackrel{\text{compute}}{\rightarrow} \text{prediction}
$$
\notes{As we pointed out, there is an irony in Laplace's demon forming the cornerstone of a movement known as 'determinism', because Laplace wrote about this idea in an essay on probabilities. The more important quote in the essay was }

\include{_physics/includes/laplaces-gremlin.md}

\newslide{}

\notes{Carl Henrik described how a prior probability $p(\parameterVector)$ represents our hypothesis about the way the world might behave. This can be combined with a *likelihood* through the process of multiplication. Correctly normalized, this gives an updated hypothesis that represents our *posterior* belief about the model in the light of the data.

There is a nice symmetry between this approach and how Karl Popper describes the process of scientific discovery. In *Conjectures and Refutations* (@Popper:conjectures63), Popper describes the process of scientific discovery as involving hypothesis and experiment. In our description hypothesis maps onto the *model*. The model is an abstraction of the hypothesis, represented for example as a set of mathematical equations, a computational description, or an analogous system (physical system). The data is the product of previous experiments, our readings, our observation of the world around us. We can combine these to make a prediction about what we might expect the future to hold. Popper's view on the philosophy of science was that the prediction should be falsifiable. 

We can see this process as a spiral driving forward, importantly Popper relates the relationship between hypothesis (model) and experiment (predictions) as akin to the relationship between the chicken and the egg. Which comes first? The answer is that they co-evolve together.}

\include{_data-science/includes/experiment-analyze-design-diagram.md}

\newslide{}

\figure{\includediagram{\diagramsDir/physics/different-models}{90%}}{The sets of different models. There are all the models in the Universe we might like to work with. Then there are those models that are computable e.g., by a Turing machine. Then there are those which are analytical tractable. I.e., where the solution might be found analytically. Finally, there are Gaussian processes, where the joint distribution of the states in the model is Gaussian.}


\notes{The approach we've taken to the model so far has been severely limiting. By constraining ourselves to models for which the mathematics of probability is tractable, we severely limit what we can say about the universe.

Although Bayes' rule only implies multiplication of probabilities, to acquire the posterior we also need to normalize. Very often it is this normalization step that gets in the way. The normalization step involves integration over the updated hypothesis space, to ensure the updated posterior prediction is correct.

We can map the process of Bayesian inference onto the $\text{model} + \text{data}$ perspective in the following way. We can see the model as the prior, the data as the likelihood and the prediction as the posterior[^mapping]. 

[^mapping]: We should be careful about such mappings, this is the one I prefer to think about because I try to think of my modelling assumptions as being stored in a probabilistic model, which I see as the prior distribution over what I expect the data to look like. In many domains of parametric modelling, however, the prior will be specified over the parameters of a model. In the Gaussian process formalism we're using, this mapping is clearer though. The 'prior' is the Gaussian process prior over functions, the data is the relationship between those functions and observations we make. This mental model will also suit what follows in terms of our consideration of simulation. But it would likely confuse someone who had only come to Bayesian inference through parametric models such a neural network. Note that even in such models, there will be a way of writing down the decomposition of the model that is akin to the above, but it might involve writing down intractable densities, so it's often avoided.}

\newslide{}

\notes{So, if we think of our model as incorporating what we know about the physical problem of interest (from Newton, or Bernoulli or Laplace or Einstein or whoever) and the data as being the observations (e.g., from Piazzi's telescope or a particle accelerator) then we can make predictions about what we might expect to happen in the future by combining the two. It is *those* predictions that Popper sees as important in verifying the scientific theory (which is incorporated in the model).

But while Gaussian processes are highly flexible non-parametric function models, they are *not* going to be sufficient to capture the type of physical processes we might expect to encounter in the real world. To give a sense, let's consider a few examples of the phenomena we might want to capture, either in the scientific world, or in real world decision making.}

\section{Precise Physical Laws}

\slides{* Newton's laws
* Huygens and conservation of energy
* Daniel Bernoulli and the kinetic theory of gases
* Modern climate simulation and Navier-Stokes equations
}

\speakernotes{Precise physical laws are predictive of the future. Met office super computer uses 1 km grids cells to compute the weather.}

\notes{We've already reviewed the importance of Newton's laws in forging our view of science: we mentioned the influence [Christiaan Huygens'](https://en.wikipedia.org/wiki/Christiaan_Huygens) work on collisions had on Daniel Bernoulli in forming the kinetic theory of gases. These ideas inform many of the physical models we have today around a number of natural phenomena. The MET Office supercomputer in Exeter spends its mornings computing the weather across the world its afternoons modelling climate scenarios. It uses the same set of principles that Newton described, and Bernoulli explored for gases. They are encoded in the Navier-Stokes equations. Differential equations that govern the flow of compressible and incompressible fluids. As well as predicting our weather, these equations are used in fluid dynamics models to understand the flight of aircraft, the driving characteristics of racing cars and the efficiency of gas turbine engines.

This broad class of physical models, or 'natural laws' is probably the closest to what Laplace was referring to in the demon. The search for unifying physical laws that dictate everything we observe around us has gone on. Alongside Newton we must mention James Clerk Maxwell, who unified electricity and magnetism in one set of equations that were inspired by the work and ideas of Michael Faraday. And still today we look for unifying equations that bring together in a single mathematical model the 'natural laws' we observe. One equation that for Laplace would be "all forces that set nature in motion". We can think of this as our first time of physical model, a 'precise model' of the known laws of our Universe, a model where we expect that the mapping from the mathematical abstraction to the physical reality is 'exact'.[^exact]

[^exact]: Unfortunately, I have to use the term 'exact' loosely here! For example, most of these laws treat space/time as a continuum. But in reality, it is quantised. The smallest length we can define is Planck length ($1.61 \times 10^{-35}$), and the the smallest time is Planck time. So even in this exact world of Maxwell and Newton there is an abstraction.}

\newslide{}

\include{_physics/includes/simulation-scales.md}

\subsection{Accelerate Programme}

\slides{* Computer Lab hosts Accelerate Programme for Scientific Discovery
* Use ML techniques to deliver scientific advances
* Four DECAF fellows: MPhil Projects Available!}

\notes{The Computer Lab is hosting a new initiative, funded by Schmidt Futures, known as the [Accelerate Programme for Scientific Discovery](https://acceleratescience.github.io/). The aim is to address scientific challenges, and accelerate the progress of research, through using tools in machine learning.}

\notes{We now have four fellows appointed, each of whom works at the interface of machine learning and scientific discovery. They are using the ideas around machine learning modelling to drive their scientific research.}

\notes{For example, [Bingqing Cheng](https://acceleratescience.github.io/team/bingqing-cheng.html), one of the Department's former DECAF Fellows has used neural network accelerated molecular dynamics simulations to understand a new form of metallic hydrogen, likely to occur at the heart of stars [@Cheng-evidence20]. The University's [press release is here](https://www.cam.ac.uk/research/news/ai-shows-how-hydrogen-becomes-a-metal-inside-giant-planets).}

\notes{On her website Bingqing quotes Paul Dirac.}

\newslide{Bingqing Cheng quoting Paul Dirac}

> The fundamental laws necessary for the mathematical treatment of a large part of physics and the whole of chemistry are thus completely known, and the difficulty lies only in the fact that application of these laws leads to equations that are too complex to be solved. 

\newslide{}

> ..approximate practical methods of applying quantum mechanics should be developed, which can lead to an explanation of the main features of complex atomic systems without too much computation.  
>
>--- Paul Dirac (6 April 1929)

\notes{Bingqing moved to a position at IST Austria and then [on to Berkeley](https://chemistry.berkeley.edu/people/bingqing-cheng).}

\newslide{Accelerate Fellows}

\centerdiv{\challengerMishraPicture{15%}\soumyaBanerjeePicture{15%}\samNallaperumaPicture{15%}}

\notes{Our four current Accelerate fellows are [Challenger Mishra](https://acceleratescience.github.io/team/challenger-mishra.html), a physicist interested in string theory and quantizing gravity. [Sarah Morgan](https://acceleratescience.github.io/team/sarah-morgan.html) from the Brain Mapping Unit, who is focused on predicting psychosis trajectories, [Soumya Bannerjee](https://acceleratescience.github.io/team/soumya-banerjee.html) who focuses on complex systems and healthcare and [Sam Nallaperuma](https://acceleratescience.github.io/team/sam-nallaperuma.html) who the interface of machine learning and biology with particular interests in emergent behavior in complex systems.}

\notes{For those interested in Part III/MPhil projects, you can see their project suggestions on [this page](https://mlatcl.github.io/internal/projects/).}

\section{Related Approaches}

\notes{While this module is mainly focusing on emulation as a route to bringing machine learning closer to the physical world, I don't want to give the impression that's the only approach. It's worth bearing in mind three important domains of machine learning (and statistics) that we also could have explored.}

* Probabilistic Programming
* Approximate Bayesian Computation
* Causal inference

\notes{Each of these domains also brings a lot to the table in terms of understanding the physical world.}

\subsection{Probabilistic Programming}
\slides{* Dates back to BUGS
* Modern descendent (same spirit) is Stan
* Also languages like pyro (based on PyTorch)
}

\notes{Probabilistic programming is an idea that, from our perspective, can be summarized as follows. What if, when constructing your simulator, or your model, you used a programming language that was aware of the state variables and the probability distributions. What if this language could 'compile' the program into code that would automatically compute the Bayesian posterior for you?

This is the objective of probabilistic programming. The idea is that you write your model in a language, and that language is automatically converted into the different modelling codes you need to perform Bayesian inference.

The ideas for probabilistic programming originate in [BUGS](https://www.mrc-bsu.cam.ac.uk/software/bugs/). The software was developed at the MRC Biostatistics Unit here in Cambridge in the early 1990s, by among others, [Sir David Spiegelhalter](https://en.wikipedia.org/wiki/David_Spiegelhalter). Carl Henrik covered in last week's lecture some of the approaches for approximate inference. BUGS uses Gibbs sampling. Gibbs sampling, however, can be slow to converge when there are strong correlations in the posterior between variables. 

The descendent of BUGS that is probably most similar in the spirit of its design is [Stan](https://mc-stan.org/). Stan came from researchers at Columbia University and makes use of a variant of Hamiltonian Monte Carlo called the No-U-Turn sampler. It builds on automatic differentiation for the gradients it needs. It's all written in C++ for speed, but has interfaces to Python, R, Julia, MATLAB etc. Stan has been highly successful during the Coronavirus pandemic, with a number of epidemiological simulations written in the language, for example see this [blog post](https://mc-stan.org/users/documentation/case-studies/boarding_school_case_study.html).}

\notes{Other probabilistic programming languages of interest include those that make use of variational approaches (such as [pyro](https://pyro.ai/)) and allow use of neural network components.}

\notes{One important probabilistic programming language being developed is [Turing](https://turinglang.org/stable/), one of the key developers is  [Hong Ge](https://mlg.eng.cam.ac.uk/hong/) who is a Senior Research Associate in Cambridge Engineering.}
 
\subsection{Approximate Bayesian Computation}

\notes{We reintroduced Gaussian processes at the start of this lecture by sampling from the Gaussian process and matching the samples to data, discarding those that were distant from our observations. This approach to Bayesian inference is the starting point for *approximate Bayesian computation* or ABC.}

\notes{The idea is straightforward, if we can measure 'closeness' in some relevant fashion, then we can sample from our simulation, compare our samples to real world data through 'closeness measure' and eliminate samples that are distant from our data. Through appropriate choice of closeness measure, our samples can be viewed as coming from an approximate posterior.}

\notes{My Sheffield colleague, Rich Wilkinson, was one of the pioneers of this approach during his PhD in the Statslab here in Cambridge. You can hear Rich talking about ABC at NeurIPS in 2013 here.}

\figure{\includeyoutube{sssbLkn2JjI}{600}{450}}{Rich Wilkinson giving a Tutorial on ABC at NeurIPS in 2013. Unfortunately, they've not synchronised the slides with the tutorial. You can find the slides [separately here](http://media.nips.cc/Conferences/2013/Video/Tutorial2B.pdf).}{rich-wilkinson-abc}


\subsection{Causality}

\figure{\includeyoutube{yksduYxEusQ}{600}{450}}{Judea Pearl and Elias Bareinboim giving a Tutorial on Causality at NeurIPS in 2013. Again, the slides aren't synchronised, but you can find them separately [here](http://media.nips.cc/Conferences/2013/nips-dec2013-pearl-bareinboim-tutorial-full.pdf).}{judea-pearl-causality}

\notes{All these approaches offer a lot of promise for developing machine learning at the interface with science but covering each in detail would require four separate modules. We've chosen to focus on the emulation approach, for two principal reasons. Firstly, it's conceptual simplicity. Our aim is to replace all or part of our simulation with a machine learning model. Typically, we're going to want uncertainties as part of that representation. That explains our focus on Gaussian process models. Secondly, the emulator method is flexible. Probabilistic programming requires that the simulator has been built in a particular way, otherwise we can't compile the program. Finally, the emulation approach can be combined with any of the existing simulation approaches. For example, we might want to write our emulators as probabilistic programs. Or we might do causal analysis on our emulators, or we could speed up the simulation in ABC through emulation.} 

\section{Conclusion}
\slides{* Introduced simulator: body of computer code.
* Emergent properties
* Abstractions
* Levels of fidelity}

\notes{We've introduced the notion of a simulator. A body of computer code that expresses our understanding of a particular physical system. We introduced such simulators through *physical laws*, such as laws of gravitation or electro-magnetism. But we soon saw that in many simulations those laws become abstracted, and the simulation becomes more phenomological.}

\notes{Even full knowledge of all laws does not give us access to 'the mind of God', because we are lacking information about the data, and we are missing the compute. These challenges further motivate the need for abstraction, and we've seen examples of where such abstractions are used in practice.}

\notes{The example of Conway's Game of Life highlights how complex emergent phenomena can require significant computation to explore.}

\thanks

\references

