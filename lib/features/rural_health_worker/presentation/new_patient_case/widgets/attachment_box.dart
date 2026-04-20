import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AttachmentBox extends StatefulWidget {
  const AttachmentBox({super.key});

  @override
  State<AttachmentBox> createState() => _AttachmentBoxState();
}

class _AttachmentBoxState extends State<AttachmentBox> {
  File? selectedImage;

  ///image from gallery
  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();

    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "CLINICAL ATTACHMENTS",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(height: 10),

        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                height: 120,
                child: Center(
                  child: selectedImage == null
                      ? TextButton(
                          onPressed: pickImage,

                          child: Row(
                            mainAxisSize: .min,
                            children: [
                              Icon(Icons.camera_alt_outlined, size: 40),
                              SizedBox(width: 10),
                              const Text("ADD PHOTO"),
                            ],
                          ),
                        )
                      : Image.file(selectedImage!),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
