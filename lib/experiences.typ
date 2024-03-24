#import "components/title.typ": customTitle

#let experiences(
  title,
  experiences
) = [
  #customTitle(title)
  #grid(
    columns: (100%),
    gutter: 0pt,
    row-gutter: 1.5em,
    ..experiences.map((experience) => [
      #block(breakable: false)[
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
                text(weight: 400, fill: rgb("7D7C80"))[#experience.position]
              }
            )
          },
          {
            grid.cell(align: right)[
              #text(weight: 400, rgb("BCBABF"))[(#experience.dates)]
            ]
          }
        )
        #text()[#eval(experience.description, mode: "markup")]
        #link(experience.link)[#experience.link]
      ]
    ])
  )
]