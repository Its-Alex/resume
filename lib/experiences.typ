#let experiences(title, experiences) = [
  #text(fill: rgb("BCBABF"), weight: 600)[#title]
  #line(stroke: (1pt + rgb("BCBABF")), length: 70%)
  #for experience in experiences {
    [
      #grid(
        columns: (40%, 60%),
        gutter: 0pt,
        {
          grid(
            columns: 100%,
            gutter: 5pt,
            {
              text(weight: 600)[#experience.name]
            },
            {
              text(weight: 400)[#experience.position]
            }
          )
        },
        {
          grid.cell(align: right)[
            #text(weight: 400, rgb("BCBABF"))[(#experience.dates)]
          ]
        }
      )
      #text()[#experience.description]

      #link(experience.link)[#experience.link] \
    ]
  }
]