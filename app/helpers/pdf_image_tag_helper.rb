module PdfImageTagHelper
  def image_tag *args, &block
    if request.format.pdf?
      super wicked_pdf_asset_path(args[0]), *args[1..-1], &block
    else
      super *args, &block
    end
  end
end