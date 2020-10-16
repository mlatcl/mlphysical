---
layout: home
title: ML and the Physical World
---

Welcome to the course **Machine Learning and the Physical World**. The course is focused on machine learning systems that interact directly with the real world. Building artificial systems that interact with the physical world have significantly different challenges compared to the purely digital domain. In the real world data is scares, often uncertain and decisions can have costly and irreversible consequences. However, we also have the benefit of centuries of scientific knowledge that we can draw from. This module will provide the methodological background to machine learning applied in this scenario. We will study how we can build models with a principled treatment of uncertainty, allowing us to leverage prior knowledge and provide decisions that can be interrogated.

* [Discussion forum for the module on Reddit](https://www.reddit.com/r/L48_MLPW/).

## Lectures

{% assign lastone = site.lectures | last %}
{% for lecture in site.lectures %}
{% include listlecture.html %}
{% endfor %}

## Case study Lectures

The lectures for weeks 5 to 8 will focus on "special topics". The lecture on Thursday will be given by a guest lecture discussing a specific real world scenario where they have applied machine learning or machine learning would be applicable. During the Friday lecture Neil and Carl Henrik will lead a discussion relating the material back to the taught part of the course and provide an outlook of potential challenges that could provide the basis for a project. We will also use this time to discuss questions that have come up during the week.

{% assign lastone = site.special_topics | last %}
{% for topic in site.special_topics %}
{% include listtopic.html %}
{% endfor %}

## Communication

The course will be run completely virtually, to make the most of this setting we are testing out a few new ideas. The first one will be that we will run a [reddit](https://www.reddit.com/r/L48_MLPW) feed for the course. The aim here is to create a forum for discussion and a public way to answer questions to the benefit of all. Importantly, the feed will be open to anyone and you can be completely anonymous while you will be able to identify us. The reason that we have chosen [reddit](https://www.reddit.com/r/L48_MLPW) as a forum is the self moderating structure. The idea is that we are all responsible for "upvoting" questions and comments we find interesting. This will allow us to focus on things that are of general interest. Furthermore we hope that the relaxed attitude of [reddit](https://www.reddit.com/r/L48_MLPW) will stimulate an open and opinionated discussion around anything that relates to the course. We will also use the discussion on the forum to inform us to better align the lectures to your understanding and during the last block to inform the Q&A session. We consider opinions and critique in all its forms positive, it evidence that you care.
