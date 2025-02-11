// ----- Title Page ------------------------

#let titlepage(
  doc-category,
  doc-title,
  author,
  affiliation-left,
  affiliation-right,
  logo,
  logo-placement,
  heading-font,             // the heading-font is also used for all text on the titlepage
  info-size,                // used throughout the document for "info text"
) = {

  // ----- Page-Setup ------------------------
  set page(
    paper: "a4",
    margin: (top: 3cm, left: 3cm, right: 3cm, bottom: 4.5cm),
  )

  // Some basic rules for the title page layout:
  // - logo is right-justified
  // - all other elements are left-justified
  // - the page uses a grid of 1.5 cm units

  // ----- Logo ------------------------
  place(
    // `place` so that the remaining layout is independent of the size of the logo
    logo-placement,
    logo,
  )

  v(8cm)

  // ----- Title Category & Title ------------------------
  align(center,
    text(font: heading-font, weight: "light", size: 28pt,  fill: blue,
      doc-title,
    ),
  )

  align(
    center,
    text(font: heading-font, weight: "regular", size: 18pt,
      doc-category,
    ),
  )

  // ----- Info Block ------------------------
  set par(leading: 1em)  
  
  place(
    bottom + center,
    text( font: heading-font, weight: "regular", size: info-size, fill: black,)[
          #datetime.today().display("[day].[month].[year]") \
          #author \
          #affiliation-left \
          #affiliation-right
        ]
  )
}
