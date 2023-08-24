#!/usr/bin/env julia

using Documenter

makedocs(
    sitename="CIT 120: Computational Thinking",
    authors="Mariah A. Knowles <mariah.knowles@kctcs.edu> and contributors",
    format=Documenter.HTML(assets=[
        asset("https://cdn.jsdelivr.net/npm/highlightjs-line-numbers.js/dist/highlightjs-line-numbers.min.js"),
        "assets/script.js"
    ]),
    pages = [
        "Home" => "index.md",
        "Unit 1 - Introduction" => [
            "journal01.md",
            "journal02.md",
            "lab1.md",
            "checkin1.md",
            "journal03.md",
            "studio1.md"
        ],
        "Unit 2 - Fundamental Skills" => [
            "journal04.md",
            "journal05.md",
            "lab2.md",
            "checkin2.md",
            "journal06.md",
            "journal07.md",
            "lab3.md",
            "checkin3.md",
        ],
        "Unit 3 - Continuing to Build Skills" => [
            "journal08.md",
            "studio2.md",
            "journal09.md",
            "journal10.md",
            "lab4.md",
            "checkin4.md",
        ],
        "Unit 4 - Like a Final Draft" => [
            "journal11.md",
            "journal12.md",
            "lab5.md",
            "checkin5.md",
            "journal13.md",
            "peerreview.md",
        ],
        "Unit 5 - Wrap Up!" => [
            "journal14.md",
            "studio3.md",
            "journal15.md",
            "project.md",
            "tutorial.md",
        ]
    ]
)

mv("build", "latest", force=true)


