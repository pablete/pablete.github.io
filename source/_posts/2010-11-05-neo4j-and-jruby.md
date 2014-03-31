---
date: '2010-11-05 12:00:00'
layout: post
slug: neo4j-for-ruby-on-rails
status: publish
title: Neo4j for Ruby on Rails
categories:
- talks
tags:
- ruby
- neo4j
---

"Neo4j is a graph database. It is an embedded, disk-based, fully transactional Java persistence engine that stores data structured in graphs rather than in tables. A graph (mathematical lingo for a network) is a flexible data structure that allows a more agile and rapid style of development."

Neo4j allows you to map objects to nodes and relations, that is a more natural fit than mapping them to relational tables.
Modeling with elements of a graph is substantially faster for semi­structured data (Recall that semi­structured data is data that has few mandatory but many optional attributes).

Neo4j is a powerful graph database/engine that every rails developer should know.

It turns out that I got involved with neo4j evluating a graph-databse for several graph-intensive operations we had to perform over an 8million vertices/100million edges graph. I decided to give a talk in the Spanish Rails Confenrence 2010 about Neo4j and graph-databases.

The title of my talk was **Neo4j for Ruby on Rails**

I did cover:

* An overview of the technology of graph databases (particularly neo4j database)
* How to model your world with nodes, relationships and properties.
* How to use neo4j with jruby, neo4j-rails for ruby on rails and neo4j-rest JSON REST API
* Implement simple graph recommender (using traversals), and compare it to a global recommender (using the whole graph at once)

{% slideshare 5728168 600 440 %}

{% vimeo 21961499 600 440 %}

Here are some photos (thanks @valakirka):

{% img /photos/0013_large.jpg 600 "Pablo Delgado Neo4j: Beginning" %}

{% img /photos/0014_large.jpg 600 "Pablo Delgado Neo4j: Edges" %}

{% img /photos/0015_large.jpg 600 "Pablo Delgado Neo4j" %}
