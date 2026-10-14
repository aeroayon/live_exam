
import 'package:flutter/material.dart';

class BloodRequestsPage extends StatelessWidget {
  const BloodRequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),

      appBar: AppBar(
        title: const Text(
          'Blood Requests',
          style: TextStyle(
            color: Color(0xFF243B80),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 10),

          bloodCard(
            bloodGroup: 'O-',
            units: '3 Units',
            address: 'Khulna City Medical College Hospital, KDA Ave...',
          ),

          const SizedBox(height: 16),

          bloodCard(
            bloodGroup: 'O+',
            units: '2 Units',
            address: 'Khulna City Medical College Hospital, KDA Ave...',
          ),
        ],
      ),
    );
  }

  Widget bloodCard({
    required String bloodGroup,
    required String units,
    required String address,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: const Border(
          left: BorderSide(
            color: Color(0xFFE57386),
            width: 5,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.12),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE8EC),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'URGENT',
                  style: TextStyle(
                    color: Color(0xFFCF5369),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),

              Row(
                children: [
                  const Icon(
                    Icons.water_drop,
                    color: Color(0xFFE0526B),
                    size: 18,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    units,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF243B80),
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(
            '$bloodGroup Blood Needed',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF243B80),
            ),
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.blueGrey,
                size: 18,
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  address,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: double.infinity,
            height: 44,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF243B80),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              child: const Text(
                'View Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
