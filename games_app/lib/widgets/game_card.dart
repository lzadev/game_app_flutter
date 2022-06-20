import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GarmeCard extends StatelessWidget {
  const GarmeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
        child: Container(
          color: const Color.fromRGBO(35, 58, 102, 1),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      right: BorderSide(
                          width: 5, color: Color.fromRGBO(254, 214, 145, 1)))),
              height: 180,
              width: double.infinity,
              // color: Colors.indigo,
              child: Row(
                children: [
                  const ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    child: FadeInImage(
                      placeholder: AssetImage('assets/thumbnail.jpg'),
                      image: AssetImage('assets/thumbnail.jpg'),
                      height: 180,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Diablo Immortal',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            letterSpacing: 1.2,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
