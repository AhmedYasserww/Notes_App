import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.only(left: 16,top: 24,bottom: 24),
        color: Color(0xffFFCC80),

        child: Column(

          children: [
            ListTile(

              title: Text(
                "Flutter tips",
                style: TextStyle(
                    fontSize: 26,  fontWeight: FontWeight.w600),

              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text("Build your Career with Ahmed yasser", style: TextStyle(
                    fontSize: 20, color: Colors.black.withOpacity(.6), fontWeight: FontWeight.w400),),
              ),
              textColor: Colors.black,
              trailing: Icon(FontAwesomeIcons.trash,color: Colors.black,size: 26,),

            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(

                    "May21, 2022",
                    style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

