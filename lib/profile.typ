#import "components/link_with_icon.typ": linkWithIcon

#let profile(profile) = [
  #block(breakable: false)[
    #set text(size: 10pt)
    #text(size: 18pt, weight: 800, fill: rgb("404040"))[#profile.name]
    #text(size: 10pt, weight: 300,)[#profile.position]

    #text(size: 10pt)[
      #profile.birthday \
      #profile.address

      #grid(
        columns: (100%),
        gutter: 0pt,
        row-gutter: 1em,
        ..profile.links.map((data_link) => [
          #linkWithIcon(
            data_link.icon,
            data_link.url,
            data_link.name
          )
        ])
      )
    ]
  ]
]