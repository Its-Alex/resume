#import "components/title.typ": customTitle

#let experiences(
  title,
  experiences
) = [
  #customTitle(title)
  #for experience in experiences {
    block(breakable: false)[
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
      #text()[#eval(experience.description, mode: "markup")]

      #link(experience.link)[#experience.link] \
    ]
  }
]