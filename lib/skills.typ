#let skills(title, skills) = [
  #text(fill: rgb("BCBABF"), weight: 600)[#title]
  #line(stroke: (1pt + rgb("BCBABF")), length: 70%)
  #for skill in skills [
    #text(weight: 600)[#skill.name] \
    #text()[#skill.description] \ \
  ]
]