---
title: "Multi-tenant Spark workflows in Auto Scalable Mesos clusters"
date: 2018-11-06T12:00:00Z
slug: multi-tenant-spark-workflows-in-autoscalable-mesos-clusters
event: "MesosCon North America 2018"
city: "San Francisco"
tags: ["mesos", "spark", "scalability", "machine learning"]
categories: ["talks"]
---

Recommendation algorithms have been the core of the Netflix product from very early on. Because of their importance, we continually seek to run our machine learning workflows in a reliable, scalable and robust manner.

We will present our design choices on building a Mesos-centric multi-tenant architecture for running Spark-based machine learning workflows that power the algorithms behind Netflix recommendations. Also we will share our experience using the auto-scaling capabilities of Amazon Web Services to dynamically change the size of our clusters to support the allocation of thousands of spark jobs running daily. We will discuss how we are leveraging Apache Spark to deploy batch jobs as well as the interactive use of Zeppelin Notebooks efficiently in this shared environment.

We will cover a few aspects of this multi-tenant platform, such as the Spark scheduler for Mesos, dynamic resource allocation, metrics and dashboards, and Spark history logs.

{{< youtube q-q6SDJ0jn4 >}}


Slides for the talk can be found here

{{< gdrive-pdf 1zDen9mI7rfHAae9e1g_KWaBXs_R6pPBm >}}

