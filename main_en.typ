#import "template.typ": *
#set text(font: "Lato")

#show: resume.with(
  profil_picture: "profil-picture.jpg",
  name: "Alexandre Marre",
  position: "Fullstack / Devops - Freelance",
  location: "Paris, 75011, France",
  email: [
    #link("pro.alexandre.marre@gmail.com")
  ],
  external_links: [
    #block[
      #link("https://www.linkedin.com/in/its-alex/")[
        Linkedin
      ]

      #link("https://github.com/Its-Alex")[
        Github
      ]
    ]
  ]
)
