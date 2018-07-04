---
title: "Avada"
date: 2018-05-30T21:14:48+01:00
featured_image = “images/pic01.jpg”
---

Post content for client work

<img{{ with .Params.featured_image }} src="{{ . }}"{{ end }} alt="{{ .Title }}">
