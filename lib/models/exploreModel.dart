class exploreModel {
  BrandImage brandImage;
  BrandDescription brandDescription;
  String websiteUrl;
  String sId;
  List<String> category;

  exploreModel(
      {this.brandImage,
      this.brandDescription,
      this.websiteUrl,
      this.sId,
      this.category});

  exploreModel.fromJson(Map<String, dynamic> json) {
    brandImage = json['brand_image'] != null
        ? new BrandImage.fromJson(json['brand_image'])
        : null;
    brandDescription = json['brand_description'] != null
        ? new BrandDescription.fromJson(json['brand_description'])
        : null;
    websiteUrl = json['website_url'];
    sId = json['_id'];
    category = json['category'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.brandImage != null) {
      data['brand_image'] = this.brandImage.toJson();
    }
    if (this.brandDescription != null) {
      data['brand_description'] = this.brandDescription.toJson();
    }
    data['website_url'] = this.websiteUrl;
    data['_id'] = this.sId;
    data['category'] = this.category;
    return data;
  }
}

class BrandImage {
  String logo;
  String title;
  String cover;

  BrandImage({this.logo, this.title, this.cover});

  BrandImage.fromJson(Map<String, dynamic> json) {
    logo = json['logo'];
    title = json['title'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['logo'] = this.logo;
    data['title'] = this.title;
    data['cover'] = this.cover;
    return data;
  }
}

class BrandDescription {
  String contactEmail;
  String contactPhone;
  String pincodesServicable;

  BrandDescription(
      {this.contactEmail, this.contactPhone, this.pincodesServicable});

  BrandDescription.fromJson(Map<String, dynamic> json) {
    contactEmail = json['contact_email'];
    contactPhone = json['contact_phone'];
    pincodesServicable = json['pincodes_servicable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contact_email'] = this.contactEmail;
    data['contact_phone'] = this.contactPhone;
    data['pincodes_servicable'] = this.pincodesServicable;
    return data;
  }
}
