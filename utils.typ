#let chev(n) = [#sym.quote.chevron#(n)#sym.quote.chevron.r]

#let sign(n: 15) = [\_]*n

#let style(doc) = [
  #set page(
    "a4",
    margin: (
      top: 2cm,
      bottom: 2cm,
      left: 3cm,
      right: 1cm
    )
  )
  #set text(14pt, lang: "ru", font: "Times New Roman")
  #doc
]
