import 'package:flutter/material.dart';

void main() {
  runApp(const TranslationApp());
}

class TranslationApp extends StatelessWidget {
  const TranslationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignToTextPage(),
    );
  }
}

class SignToTextPage extends StatelessWidget {
  const SignToTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    // الألوان المستخدمة في التصميم (نفس أسلوبك بالضبط)
    const Color primaryColor = Color(0xFF00A896);
    const Color secondaryBg = Color(0xFFF8F9FA);
    const Color placeholderBg = Color(0xFF1A1F2E);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign to Text/Voice",
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Detection mode active",
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // --- القسم الأول: منطقة المعاينة (بدون كود الكاميرا البرمجي) ---
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: placeholderBg,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.videocam_outlined, color: Colors.white54, size: 50),
                    SizedBox(height: 8),
                    Text("Preview Area", style: TextStyle(color: Colors.white54)),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // --- القسم الثاني: أزرار التحكم ---
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.play_arrow_outlined, color: Colors.white, size: 18),
                        SizedBox(width: 8),
                        Text('Start', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.upload_outlined, color: primaryColor, size: 18),
                        SizedBox(width: 8),
                        Text('Upload', style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // --- القسم الثالث: ترويسة الترجمة ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Translation",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.language, color: primaryColor, size: 26),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.record_voice_over, color: primaryColor, size: 26),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10),

            // --- القسم الرابع: صندوق عرض النص ---
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: secondaryBg,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey.shade100),
                ),
                child: const Center(
                  child: Text(
                    "Translation results will appear here",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            // صندوق التلميحات السفلي (نفس ستايل كودك)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.05),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Ensure your signs are clear within the preview frame",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueGrey, fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}