#let doc_page(doc) = {
  set page(
    "a4",
    margin: (
      left: 3cm,
      right: 1cm,
      rest: 2cm
    ),
  )
  set text(14pt, lang: "ru", font: "Times New Roman")
  set par(justify: true)
  doc

  show figure.where(kind: image): set figure(
    supplement: [Рисунок],
  )
  show figure.where(kind: image): set figure.caption(
    position: bottom,
    separator: [ — ],
  )
  set figure(numbering: "1")
  show figure.caption: set align(center)
}

#let headers(doc) = {
  show heading: set text(14pt)
  show heading.where(level: 1): set align(center)
  show heading.where(level: 2): set heading(numbering: (num1, num2) => [#num2.]
)
}

#let default_style = (doc_page, )

#let apply_styles(doc, styles: default_style) = {
  let result = doc
  for wrapper in styles {
    result = wrapper(result)
  }
  result
}

#set page(numbering: "1")



