import 'package:equatable/equatable.dart';
import 'image_links.dart';
import 'industry_identifier.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.pageCount,
    this.printType,
    this.categories,
    this.imageLinks,
    this.language,
    this.previewLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json['title'] as String?,
        authors: (json['authors'] as List<dynamic>?)?.cast<String>(),
        publishedDate: json['publishedDate'] as String?,
        description: json['description'] as String?,
        industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
            ?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
            .toList(),
        pageCount: json['pageCount'] as int?,
        printType: json['printType'] as String?,
        categories: (json['categories'] as List<dynamic>?)?.cast<String>(),
        imageLinks: json['imageLinks'] == null
            ? null
            : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
        language: json['language'] as String?,
        previewLink: json['previewLink'] as String?, // إضافة previewLink هنا
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'authors': authors,
        'publishedDate': publishedDate,
        'description': description,
        'industryIdentifiers':
            industryIdentifiers?.map((e) => e.toJson()).toList(),
        'pageCount': pageCount,
        'printType': printType,
        'categories': categories,
        'imageLinks': imageLinks?.toJson(),
        'language': language,
        'previewLink': previewLink,
      };

  @override
  List<Object?> get props {
    return [
      title,
      authors,
      publishedDate,
      description,
      industryIdentifiers,
      pageCount,
      printType,
      categories,
      imageLinks,
      language,
      previewLink,
    ];
  }
}
