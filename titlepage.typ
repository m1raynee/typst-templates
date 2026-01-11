#import "utils.typ": sign, chev

#let titlepage(
  department: [САПР], discipline, theme,
  worktype: [лабораторной работе], number,
  year: 2026,
  teacher, ..authors,

) = {
  let by = ()
  for author in authors.pos() {
    by.push("Студент" + author.at(0) + " гр. " + str(author.at(1)))
    by.push(sign())
    by.push(author.at(2))
  }
  for item in ("Преподаватель", sign(), teacher) {
    by.push(item)
  }

  [
    #text(weight: "bold")[
    #align(center + top)[
      МИНОБРНАУКИ РОССИИ

      САНКТ-ПЕТЕРБУРГСКИЙ ГОСУДАРСТВЕННЫЙ

      ЭЛЕКТРОТЕХНИЧЕСКИЙ УНИВЕРСИТЕТ

      #chev("ЛЭТИ") ИМ. В.И. УЛЬЯНОВА (ЛЕНИНА)

      Кафедра #(department)
    ]
    // #v(14pt * 10)
    #align(center + horizon)[
      ОТЧЁТ

      по #worktype №#number
      
      по дисциплине #chev(discipline)

      Тема: #theme
    ]

    ]
    #align(center + bottom)[
      #grid(
        columns: (50%, 25%, 25%),
        rows: 1.08cm,
        align: (left, center, center),
        ..by,
      )

      #v(14pt)
      Санкт-Петербург

      #year
    ]
    #pagebreak()
  ]
}