import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SnapPhotoCard extends StatefulWidget {
  const SnapPhotoCard({super.key});

  @override
  State<SnapPhotoCard> createState() => _SnapPhotoCardState();
}

class _SnapPhotoCardState extends State<SnapPhotoCard> {

  File? _image;

  final ImagePicker _picker = ImagePicker();

  Future<void> _openCamera() async {
    final XFile? photo =
    await _picker.pickImage(source: ImageSource.camera);

    if (photo != null) {
      setState(() {
        _image = File(photo.path);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _openCamera,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  colors: [Color(0xFF1E66D0), Color(0xFF2D7BEA)],
                ),
              ),
              child: _image == null ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                    ),
                    child: const Icon(Icons.camera_alt,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 12),
                  const Text("Snap a Photo",
                      style: TextStyle(color: Colors.white)),
                  const SizedBox(height: 4),
                  const Text(
                    "Instant scan your document",
                    style: TextStyle(
                        color: Colors.white70, fontSize: 12),
                  ),
                ],
              ): ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.file(
                  _image!,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}
