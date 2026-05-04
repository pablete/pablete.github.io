---
title: "Rails Scalability"
date: 2007-11-23T12:00:00Z
slug: rails-scalability
event: "Conferencia Rails 2007"
city: "Madrid"
tags: ["ruby", "rails", "scalability"]
categories: ["talks"]
---

## Intro

I escaped London for a few days to go to Conferencia Rails 2007 in Madrid. There I gave a talk about much ranted Rails Scalability.

The title of the talk in spanish was "Escalabilidad y las cosas de las que nadie se atrevio a hablar".

Summary of the talk:

* Architecture and typical Rails deployment configurations.
* Use of Nginx as a static assets server.
* Mongrel and Evented Mongrel.
* Multithreaded image Uploads with mongrel and/or merb (instead of attatchment_fu)
* Activerecord optimizations (hacks, active_record_context plugin)
* Caches, pasive expirations. Cache observing daemons.
* Configuration and monitoring of a production Server. (monit, munin tools)


Here is the video of the talk, and of course, the slides.

{{< youtube IVwgHUgdLy4 >}}

The talk went fine, I have had so much fun speaking spanish again.

Here are some photos:

{{< gallery >}}
![Conferencia Rails 2007](0001_large.jpg)
![Merb framework](0002_large.jpg)
![Rails stack](0003_large.jpg)
{{< /gallery >}}
