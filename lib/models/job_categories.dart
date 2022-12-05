class job_categories {
  final String name_of_job_category;
  final String image;

  job_categories(this.name_of_job_category, this.image);
}

List<job_categories> categories = categoriesData
    .map((item) => job_categories(item['name_of_job_category']!, item['image']!))
    .toList();
var categoriesData = [
  {"name_of_job_category": "Food", "image": "assets/images/food_image.png"},
  {"name_of_job_category": "Sales", "image": "assets/images/sales_image.png"},
  {
    "name_of_job_category": "Logistics",
    "image": "assets/images/logistics_image.png"
  },
  {
    "name_of_job_category": "Delivery",
    "image": "assets/images/delivery_image.png"
  },
  {
    "name_of_job_category": "Konbini",
    "image": "assets/images/kombini_image.png"
  }
];
