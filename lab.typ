#import "titlepage.typ": titlepage
#import "utils.typ": style

#show: style

#titlepage(
  "Название дисциплины", "Тема", 2,
  "Иванов И.И.",
  ("", 4352, "Даричев Е.М."),
)

= Основная часть
#lorem(5)
== Подтемка
#lorem(100)
