#let linkWithIcon(
  icon,
  url,
  linkName
) = [
  #link(url)[
    #grid(
      inset: (x: 0pt, y: 0pt),
      columns: 2,
      align: horizon,
      gutter: 4pt,
      {
        text(fill: red)[#image("../../assets/"+icon, height: 10pt)]
      },
      {
        linkName
      }
    )
  ]
]