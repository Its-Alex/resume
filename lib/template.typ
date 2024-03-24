#let blockWithoutSpacing(
  fill: none,
  body
) = {
  block(
    inset: (x: 12pt, y: 14pt),
    outset: (x: 0pt, y: 0pt),
    above: 0pt,
    below: 0pt,
    width: 100%,
    fill: fill,
    body
  )
}
#let blockWithoutSpacingFullHeight(
  fill: none,
  body
) = {
  block(
    inset: (x: 12pt, y: 14pt),
    outset: (x: 0pt, y: 0pt),
    above: 0pt,
    below: 0pt,
    width: 100%,
    height: 100%,
    fill: fill,
    body
  )
}

#let resume_template(
  translations: none,
  profil_picture: none,
  profile: none,
  description: none,
  skills: none,
  languages: none,
  interests: none,
  experiences: none,
  education: none,
  volunteering: none,
  body
) = {
  block(
    width: 100%,
    height: 200%, // Needed to apply background everywhere
    {
      grid(
        columns: (30%, 70%),
        gutter: 0pt,
        {
          blockWithoutSpacing(
            fill: rgb("BCBABF"),
            {
              block(
                {
                  image(
                    "../" + profil_picture,
                    width: 100pt,
                    height: 100pt,
                  )
                }
              )
              profile
            }
          )
          blockWithoutSpacingFullHeight(
            fill: rgb("F3EFF6"),
            {
              skills
              languages
              interests
            }
          )
        },
        {
          blockWithoutSpacing(
            fill: rgb("F3EFF6"),
            {
              text()[
                #eval(description, mode: "markup")
              ]
            }
          )
          blockWithoutSpacingFullHeight(
            fill: rgb("FCF8FF"),
            {
              experiences
              education
              volunteering
            }
          )
        }
      )
    }
  )

  body
}