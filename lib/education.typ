#let education(title, education) = [
  #text(fill: rgb("BCBABF"), weight: 600)[#title]
  #line(stroke: (1pt + rgb("BCBABF")), length: 70%)
  #for educationItem in education {
    [
      #grid(
        columns: (40%, 60%),
        gutter: 0pt,
        {
          grid(
            columns: 100%,
            gutter: 5pt,
            {
              text(weight: 600)[#educationItem.name]
            }
          )
        },
        {
          grid.cell(align: right)[
            #text(weight: 400, rgb("BCBABF"))[(#educationItem.dates)]
          ]
        }
      )
      #text()[#educationItem.description]

      #if type(educationItem.link) == str [
        #link(educationItem.link)[#educationItem.link] \
      ]
    ]
  }
]