---
title: "Probabilistic Numerics"
abstract: "In this lecture we will talk about probabilistic inference and decision making."
featured_image: assets/images/probabilistic-numerics.png
author:
- given: Carl Henrik
  family: Ek
  url: http://carlhenrik.com
  institute: University of Cambridge
  twitter: 
  gscholar: 
  orcid:
date: 2024-11-07
time: "12:00"
week: 5
session: 1
pdfslides: l48-mlpw-09.pdf
pdfworksheet: 02_evidence.pdf
youtube: IBbuQQ9dXpw
oldyoutube: 
- code: IBbuQQ9dXpw
  year: 2022
- code: 2C4OK6zNOOU
  year: 2021
- code: eHFegeSFJKc
  year: 2020
layout: lecture
categories:
- notes
reveal: False
---


Aki Vehtari on statistics for Bayesian model checking: <https://www.youtube.com/watch?v=HKPm6txxxQM>

---
title: "Probabilistic Numerics"
abstract: "In this lecture we will talk about probabilistic inference and decision making."
featured_image: assets/images/probabilistic-numerics.png
author:
- given: Carl Henrik
  family: Ek 
  url: http://carlhenrik.com
  institute: University of Cambridge
  twitter: 
  gscholar: 
  orcid:
date: 2024-11-07
time: "12:00" 
week: 5
session: 1
pdfslides: l48-mlpw-09.pdf
pdfworksheet: 02_evidence.pdf
youtube: IBbuQQ9dXpw
oldyoutube:
- code: IBbuQQ9dXpw
  year: 2022
- code: 2C4OK6zNOOU
  year: 2021
- code: eHFegeSFJKc
  year: 2020
layout: lecture
categories:
- notes
reveal: False
---

\notes{What do we mean by uncertainty in computational systems? When applying probabilistic reasoning to computational problems, we can identify three main types of uncertainty:

1. **Aleatoric/Stochastic Uncertainty**: The inherent randomness in a system or noise in our measurements
2. **Epistemic Uncertainty**: Our ignorance about the underlying system
3. **Computational Uncertainty**: Uncertainty related to finite computation or intractable computations

As we saw previously in the course, we can think about prediction as:

$\text{data} + \text{model} \stackrel{\text{compute}}{\rightarrow} \text{prediction}$

When considering computational decisions, we need to think about:

- The cost-benefit tradeoff of additional computation
- Which computations will most effectively reduce uncertainty 
- How much we should trust our computational results
- The appropriate precision for downstream tasks based on computational information}

\subsection{Historical Context}

\notes{The field of probabilistic numerics has important historical roots. Key figures include:

- Albert Valentionvic Suldin (1924-1996) who worked on error-minimizing estimators for numerical algorithms
- Frederick Michael Larkin (1936-1982) who pioneered incorporating prior knowledge into numerical algorithms

As von Neumann noted in 1947, even deterministic round-off errors are so complex that "we best treat them as random variables."}

\subsection{Bayesian Quadrature}

\notes{Let's consider a concrete example of probabilistic numerics through Bayesian quadrature. Given an integral:

$F := \int_{-3}^3 e^{-(sin(3x))^2-x^2} dx$

While f(x) is fully specified and deterministic, and F is deterministic, F cannot be computed analytically. The Bayesian approach allows us to:

1. Express our belief about the integral as p(F|Y)
2. Perform active learning about where to sample
3. Balance exploration and exploitation

O'Hagan (1991) showed that we can express this probabilistically as:

$p(F,Y) = \int p(F|f)p(Y|f)p(f)df$

This results in a Gaussian distribution for p(F|Y) with mean μF and variance kF.}

\subsection{Information Operators}

\notes{In probabilistic numerical methods, we can define information operators that help guide our computational decisions:

- Integrand variance: α(x) = k(x,x)
- Integral Variance Reduction: α(x) = kF(X,X) - kF(X,x)

These operators, sometimes called "Design Rules", help us make decisions about where to focus computational effort.}

\subsection{Why Probabilistic Numerics?}

\notes{There are several compelling reasons to adopt a probabilistic numerics approach:

1. Many numerical algorithms exist for any given problem, each giving slightly different results
2. Understanding the implicit prior assumptions in different algorithms
3. Quantifying uncertainty in computational results
4. Making informed decisions about computational resource allocation
5. Propagating computational uncertainty into downstream tasks

As Noam Chomsky noted, there is a notion of success in machine learning that is "novel in the history of science" - it interprets success as approximating unanalyzed data.}

\subsection{Summary}

\notes{The key takeaways from probabilistic numerics are:

1. It extends statistical inference to computation
2. Computation is the process of extracting latent properties, similar to machine learning
3. Computational results are not absolute truth and we should quantify our uncertainty
4. Benefits include:
   - Improved computational efficiency
   - Better decision making in downstream tasks
   - Enhanced understanding of algorithms in relation to problems/data
   
For those interested in learning more, the probabilistic numerics summer school (<https://probnumschool.org>) provides additional resources and training.}


\references
