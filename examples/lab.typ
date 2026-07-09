#import "titlepage.typ": titlepage
#import "style.typ": apply_styles

#show: apply_styles

#titlepage(
  "Название дисциплины", "Тема", 2,
  "Иванов И.И.",
  ("", 4352, "Даричев Е.М."),
)
#set page(numbering: "1")


= Основная часть
#lorem(5)
== Подтемка
#lorem(100)
=== Ещё более подтемная темка
#lorem(20)
