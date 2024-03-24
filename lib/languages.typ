#import "components/title.typ": customTitle

#let languages(title, languages) = [
  #customTitle(title)
  #grid(
    columns: (50%, 50%),
    gutter: 0pt,
    ..languages.map((language) => [
      #text(weight: 600)[#language.name] \
      #text()[#language.level] \ \
    ])
  )
]