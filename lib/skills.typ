#import "components/title.typ": customTitle

#let skills(title, skills) = [
  #customTitle(title)
  #for skill in skills [
    #text(weight: 600)[#skill.name] \
    #text()[#skill.description] \ \
  ]
]