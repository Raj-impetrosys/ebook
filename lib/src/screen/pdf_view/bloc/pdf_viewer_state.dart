part of 'pdf_viewer_bloc.dart';

abstract class PdfViewerState {}

class PdfViewerInitial extends PdfViewerState {}

class PdfViewerLoaded extends PdfViewerState {
  bool? isLoading;
  bool? isSlider;
  bool? isFirstImage;
  List<GalleryImage>? galleryImageList;
  List<String>? imageList;
  String? frontImage;

  PdfViewerLoaded({
    this.isLoading,
    this.isSlider,
    this.isFirstImage = true,
    this.galleryImageList,
    this.imageList,
    this.frontImage,
  });

  PdfViewerLoaded copyWith({
    bool? isLoading,
    bool? isSlider,
    bool? isFirstImage,
    List<GalleryImage>? galleryImageList,
    List<String>? imageList,
    String? frontImage,
  }) =>
      PdfViewerLoaded(
        isLoading: isLoading ?? this.isLoading,
        isSlider: isSlider ?? this.isSlider,
        isFirstImage: isFirstImage ?? this.isFirstImage,
        galleryImageList: galleryImageList ?? this.galleryImageList,
        imageList: imageList ?? this.imageList,
        frontImage: frontImage ?? this.frontImage,
      );
}