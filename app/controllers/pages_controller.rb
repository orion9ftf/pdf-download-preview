class PagesController < ApplicationController
  
  def home
    @people = Person.all
  end

  def download

    pdf = Prawn::Document.new
    pdf.text 'texto del pdf'

    send_data(pdf.render,
      filename: 'texto.pdf',
      type: 'application/pdf'
    )
  end

  def preview
    pdf = Prawn::Document.new
    pdf.text 'texto del pdf preview'
    pdf.text 'this is the preview text'
    pdf.start_new_page
    pdf.text 'this is a new page...'

    send_data(pdf.render,
      filename: 'texto.pdf',
      type: 'application/pdf',
      disposition: 'inline'
    )
  end
  
end
