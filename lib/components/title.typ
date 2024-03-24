#let customTitle(
  name
) = [
  #block(
    above: 2em,
  )[
    #grid(
      inset: (x: 0pt, y: 0pt),
      columns: (100%),
      gutter: 6pt,
      {
        text(fill: rgb("BCBABF"), weight: 600)[#name]
      },
      {
        line(stroke: (1pt + rgb("BCBABF")), length: 70%)
      }
    )
  ]
]