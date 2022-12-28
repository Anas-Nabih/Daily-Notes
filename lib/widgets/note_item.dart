import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          vertical: 2.h,horizontal: 2.w),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.07),
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title:Text("Data",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600)),
            subtitle: Text("Content",style: TextStyle(fontSize: 14.sp)),
            trailing: GestureDetector(onTap: (){},child: Icon(Icons.delete)),
          ),
          SizedBox(height: 2.h),
          Align(alignment: Alignment.bottomRight,
              child: Text("28 DEC 2022",style: TextStyle(fontSize: 9.sp))),

        ],
      ),
    );
  }
}