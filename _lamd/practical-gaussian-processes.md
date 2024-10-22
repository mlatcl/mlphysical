---
week: 2
session: 2
title: "Practical Gaussian Processes"
featured_image: slides/diagrams/gp/learning-a-manifold-of-fonts.png
abstract:  >
  This lecture will cover the practical side to Gaussian processes.
layout: lecture
author:
- given: Carl Henrik
  family: Ek
  institution: University of Cambridge
  url: http://carlhenrik.com
youtube: 
time: "12:00"
featured_image: 
pdfslides: l48-mlpw-04.pdf
pdfworksheet: practical-gaussian-processes.pdf
date: 2024-10-22
transition: None
ipynb: false
---

Gaussian processes provide a probability measure that allows us to perform statistical inference over the space of functions. While GPs are nice as mathematical objects when we need to implement them in practice we often run into issues. In this worksheet we will do a little bit of a whirlwind tour of a couple of approaches to address these problems. We will look at how we can address the numerical issues that often appear and we will look at approximations to circumvent the computational cost associated with Gaussian processes. Importantly when continuing using these models in the course you are most likely not going to implement them yourself but instead use some of the many excellent software packages that exists. The methods that we describe here are going to show you how these packages implement GPs and it will hopefully give you an idea of the type of thinking that goes into implementation of machine learning models.
