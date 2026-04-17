import 'package:flutter/material.dart';


class PrescriptionWritingScreen extends StatefulWidget {
   const PrescriptionWritingScreen({super.key});
  @override
  State<PrescriptionWritingScreen> createState() => _PrescriptionWritingScreenState();
}

class _PrescriptionWritingScreenState extends State<PrescriptionWritingScreen> {
  String selectedFrequency = "Twice daily (BID)";
  bool isDays = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New Prescription",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "ACTIVE CONSULTATION",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 6),
              const Text(
                "Patient: Sarah Jenkins (ID: #882-01)",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 20),

              // MEDICATION CARD
              _buildCard(
                title: "Medication Name",
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Start typing medication (e.g. Amoxicillin)",
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      children: const [
                        Chip(label: Text("Amoxicillin 500mg")),
                        Chip(label: Text("Azithromycin 250mg")),
                      ],
                    )
                  ],
                ),
              ),

              // DOSAGE
              _buildCard(
                title: "Dosage",
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "e.g. 500mg",
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "VERIFY WITH PATIENT HISTORY",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              // FREQUENCY
              _buildCard(
                title: "Frequency",
                child: DropdownButtonFormField<String>(
                  value: selectedFrequency,
                  items: [
                    "Twice daily (BID)",
                    "Once daily (OD)",
                    "Three times daily (TID)"
                  ]
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      selectedFrequency = val!;
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              // DURATION
              _buildCard(
                title: "Duration",
                child: Column(
                  children: [
                    Row(
                      children: [
                        _toggleButton("Days", isDays, () {
                          setState(() => isDays = true);
                        }),
                        const SizedBox(width: 10),
                        _toggleButton("Weeks", !isDays, () {
                          setState(() => isDays = false);
                        }),
                      ],
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hintText: isDays ? "7" : "1",
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),

              // NOTES
              _buildCard(
                title: "Additional Notes",
                child: TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText:
                        "Take after food. Avoid dairy for 2 hours post-dosage.",
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              // PHARMACY
              _buildCard(
                title: "Preferred Pharmacy",
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("CVS Pharmacy #402",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("1221 Medical Center Dr, Austin TX",
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("CHANGE"),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // BUTTON
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.blueAccent],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    "Preview Prescription",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required String title, required Widget child}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }

  Widget _toggleButton(String text, bool active, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: active ? Colors.blue : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: active ? Colors.white : Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}