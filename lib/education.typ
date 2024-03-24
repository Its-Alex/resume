#import "components/title.typ": customTitle

#let education(title, education) = [
  #customTitle(title)
  #grid(
    columns: (100%),
    gutter: 0pt,
    row-gutter: 1.5em,
    ..education.map((educationItem) => [
      #block(breakable: false)[
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
        #text()[#eval(educationItem.description, mode: "markup")]

        #if type(educationItem.link) == str [
          #link(educationItem.link)[#educationItem.link]
        ]
      ]
    ])
  )
]