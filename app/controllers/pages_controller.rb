class PagesController < ApplicationController
  def home
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
  end
  
end
