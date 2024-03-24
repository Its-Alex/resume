#import "components/title.typ": customTitle

#let volunteering(title, volunteering) = [
  #customTitle(title)
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