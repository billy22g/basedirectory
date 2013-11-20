module BasesHelper
  def image_for(base)
    if base.image_filename.blank?
      image_tag 'placeholder.jpg'
    else
      image_tag base.image_filename
    end
  end

end
