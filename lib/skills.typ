#import "components/title.typ": customTitle

#let skills(title, skills) = [
  #customTitle(title)
  #grid(
    columns: (100%),
    gutter: 0pt,
    row-gutter: 1.5em,
    ..skills.map((skill) => [
      #text(weight: 600)[#skill.name] \
      #text()[#skill.description]
    ])
  )
]