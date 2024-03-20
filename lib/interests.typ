#let interests(title, interests) = [
  #text(fill: rgb("BCBABF"), weight: 600)[#title]
  #line(stroke: (1pt + rgb("BCBABF")), length: 70%)
  #grid(
    columns: (50%, 50%),
    gutter: 0pt,
    ..interests.map((interest) => [
      #text(weight: 600)[#interest] \ \
    ])
  )
]