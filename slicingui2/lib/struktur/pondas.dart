import 'package:flutter/material.dart';

void main() {
  runApp(const SkeletonUI());
}

class SkeletonUI extends StatelessWidget {
  const SkeletonUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 100, height: 13, color: Colors.grey),
                      const SizedBox(height: 6),
                      Container(width: 150, height: 17, color: Colors.grey),
                      
                    ],
                  ),
                  Row(
                    children: [
                      Container(width: 25, height: 25, decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle)),
                      const SizedBox(width: 8),
                      Container(width: 25, height: 25, decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle)),
                      const SizedBox(width: 8),
                      Container(width: 40, height: 25, decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(20))),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(width: 100, height: 12, color: Colors.grey),
                        const SizedBox(height: 6),
                        Container(width: 70, height: 12, color: Colors.grey),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: List.generate(4, (index) => Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                
              ])
            ],
          ),
        ),
      );
    
  }
}
