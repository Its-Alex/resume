#let resume(
  profil_picture: none,
  name: none,
  position: none,
  location: none,
  email: none,
  external_links: none,
  body
) = {
  // Configure page and text properties.
  set page(
    margin: (top: 2cm),
    fill: rgb("eee")
  )
  
  let imagePattern = pattern(
    size: (300pt, 300pt),
    image(
      profil_picture,
      width: 100%,
      height: 100%
    )
  )

  circle(
    width: 10pt,
    fill: imagePattern
  )

  block[
    #text(weight: "extrabold", size: 22pt)[
      #name
    ]

    #position

    #location

    #email

    #external_links
  ]


  body
}