// class SubCategories {
//   int? id;
//   String? name;
//   String? image;
//   String? icon;
//   int? categoryId;
//   int? status;
  

//   SubCategories(
//       {this.id,
//       this.name,
//       this.image,
//       this.icon,
//       this.categoryId,
//       this.status,
//       });

//   SubCategories.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     image = json['image'];
//     icon = json['icon'];
//     categoryId = json['category_id'];
//     status = json['status'];
  
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['image'] = this.image;
//     data['icon'] = this.icon;
//     data['category_id'] = this.categoryId;
//     data['status'] = this.status;
   
//     return data;
//   }
// }