#import "lib/template.typ": resume_template
#import "lib/profile.typ": profile
#import "lib/skills.typ": skills
#import "lib/languages.typ": languages
#import "lib/interests.typ": interests
#import "lib/experiences.typ": experiences
#import "lib/education.typ": education
#import "lib/volunteering.typ": volunteering

#let resume = yaml("datas/fr.yaml")

#set page(margin: (x: 0pt, y: 0pt))
#set text(font: "Manjari", fill: rgb("3F3E40"))
#show link: link => {
  text(weight: 600)[#underline()[#link]]
}

#show: resume_template.with(
  profil_picture: "profil-picture.png",
  translations: resume.translations,
  profile: profile(resume.profile),
  description: resume.description,
  skills: skills(resume.translations.skills, resume.skills),
  languages: languages(resume.translations.languages, resume.languages),
  interests: interests(resume.translations.interests, resume.interests),
  experiences: experiences(resume.translations.experiences, resume.experiences),
  education: education(resume.translations.education, resume.education),
  volunteering: volunteering(resume.translations.volunteering, resume.volunteering),
)
