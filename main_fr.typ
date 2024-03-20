#import "lib/template.typ": resume_template
#import "lib/profile.typ": profile
#import "lib/skills.typ": skills
#import "lib/languages.typ": languages
#import "lib/interests.typ": interests
#import "lib/experiences.typ": experiences

#let resume = yaml("fr.yaml")

#set page(margin: (x: 0pt, y: 0pt))
#set text(font: "Manjari", fill: rgb("3F3E40"))

#show: resume_template.with(
  profil_picture: "profil-picture.png",
  translations: resume.translations,
  profile: profile(resume.profile),
  description: resume.description,
  skills: skills(resume.translations.skills, resume.skills),
  languages: languages(resume.translations.languages, resume.languages),
  interests: interests(resume.translations.interests, resume.interests),
  experiences: experiences(resume.translations.experiences, resume.experiences),
)
