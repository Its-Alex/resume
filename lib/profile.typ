#let profile(profile) = [
  #block(breakable: false)[
    #text(size: 18pt, weight: 800, fill: rgb("404040"))[#profile.name]
    #text(size: 10pt, weight: 200,)[#profile.position]

    #text(size: 10pt)[
      #profile.birthday \
      #profile.address \
      #link("mailto:" + profile.email)[#profile.email]

      // How to: https://sitandr.github.io/typst-examples-book/book/typstonomicon/try_catch.html
      // #for data_link in profile.links {
      //   if str(data_link.icon).len() > 0 [
      //     #text()[
      //       #image("../" + data_link.icon, fit: "contain") #link(data_link.url)[#data_link.name]

      //     ]
      //   ] else [
      //     #link(data_link.url)[#data_link.name]

      //   ]
      // }
      #for data_link in profile.links [
        #link(data_link.url)[#data_link.name]

      ]
    ]
  ]
]