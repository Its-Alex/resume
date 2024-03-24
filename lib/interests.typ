#import "components/title.typ": customTitle

#let interests(title, interests) = [
  #customTitle(title)
  #grid(
    columns: (50%, 50%),
    gutter: 0pt,
    row-gutter: 1.5em,
    ..interests.map((interest) => [
      #text(weight: 600)[#interest]
    ])
  )
]