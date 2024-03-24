#let volunteering(title, volunteering) = [
  #text(fill: rgb("BCBABF"), weight: 600)[#title]
  #line(stroke: (1pt + rgb("BCBABF")), length: 70%)
  #for volunteeringItem in volunteering {
    [
      #grid(
        columns: (40%, 60%),
        gutter: 0pt,
        {
          grid(
            columns: 100%,
            gutter: 5pt,
            {
              text(weight: 600)[#volunteeringItem.name]
            }
          )
        },
        {
          grid.cell(align: right)[
            #text(weight: 400, rgb("BCBABF"))[(#volunteeringItem.dates)]
          ]
        }
      )
      #text()[#volunteeringItem.description]

      #if type(volunteeringItem.link) == str [
        #link(volunteeringItem.link)[#volunteeringItem.link] \
      ]
    ]
  }
]