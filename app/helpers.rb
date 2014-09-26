module Map

  def location
    markers = []
    Clinic.all.map do |clinic|
      markers << [clinic.name,clinic.latitude.to_f,clinic.longitude.to_f,clinic.website,clinic.address,clinic.phone,clinic.city]
    end
    return markers
  end
end
