#import "components/title.typ": customTitle

#let interests(title, interests) = [
  #customTitle(title)
  #grid(
    columns: (50%, 50%),
    gutter: 0pt,
    ..interests.map((interest) => [
      #text(weight: 600)[#interest] \ \
    ])
  )
]