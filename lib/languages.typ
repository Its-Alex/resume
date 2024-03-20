#let languages(title, languages) = [
  #text(fill: rgb("BCBABF"), weight: 600)[#title]
  #line(stroke: (1pt + rgb("BCBABF")), length: 70%)
  #grid(
    columns: (50%, 50%),
    gutter: 0pt,
    ..languages.map((language) => [
      #text(weight: 600)[#language.name] \
      #text()[#language.level] \ \
    ])
  )
]