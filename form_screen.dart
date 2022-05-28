import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget{
  State<StatefulWidget> createstate() {
    return FormScreenState();
  }

  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen>{

  late String firstname;
  late String lastname;
  late String email;
  late String phonenumber;
  late String nationalID;
  late String birthdate;
  late String address;
  late String school;
  late String schoolgrade;
  late String parentfirstname;
  late String parentlastname;
  late String parentnationalid;
  late String parentphonenumber;
  late String parentjob;



  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget buildFirstName(){
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: 'FirstName'),
      validator: (value){
        if(value!.isEmpty){
          return 'FirstName is required';
        }
        },
      onSaved: (value){
        firstname = value!;
      },
    );
  }

  Widget buildLastName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'LastName',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'LastName is required';
        }
      },
      onSaved: (value){
        lastname = value!;
      },
    );;
  }

  Widget buildEmail(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'Email is required';
        }
      },
      onSaved: (value){
        email = value!;
      },
    );;
  }

  Widget buildPhoneNumber(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'PhoneNumber',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'PhoneNumber is required';
        }
      },
      onSaved: (value){
        phonenumber = value!;
      },
    );;
  }

  Widget buildNationalID(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'NationalID',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'NationalID is required';
        }
      },
      onSaved: (value){
        nationalID = value!;
      },
    );;
  }

  Widget buildBirthDate(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'BirthDate',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'BirthDate is required';
        }
      },
      onSaved: (value){
       birthdate = value!;
      },
    );
  }

  Widget buildAddress(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'Address is required';
        }
      },
      onSaved: (value){
        address = value!;
      },
    );
  }

  Widget buildSchool(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'School',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'School is required';
        }
      },
      onSaved: (value){
        school = value!;
      },
    );
  }

  Widget buildSchoolGrade(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'SchoolGrade',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'SchoolGrade is required';
        }
      },
      onSaved: (value){
        schoolgrade = value!;
      },
    );
  }

  Widget buildParentFirstName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'ParentFirstName',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'ParentFirstName is required';
        }
      },
      onSaved: (value){
        parentfirstname = value!;
      },
    );
  }

  Widget buildParentLastName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'ParentLastName',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'ParentLastName is required';
        }
      },
      onSaved: (value){
        parentlastname = value!;
      },
    );
  }

  Widget buildParentNationalId(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'ParentNationalId',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'ParentNationalId is required';
        }
      },
      onSaved: (value){
        parentnationalid = value!;
      },
    );
  }

  Widget buildParentPhoneNumber(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'ParentPhoneNumber',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'ParentPhoneNumber is required';
        }
      },
      onSaved: (value){
        parentphonenumber = value!;
      },
    );
  }
  Widget buildParentJob(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'ParentJob',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      validator: (value){
        if(value!.isEmpty){
          return 'ParentJob is required';
        }
      },
      onSaved: (value){
        parentjob = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context){
    var formkey;
    return Scaffold(
      appBar: AppBar(title: Text("Form Demo")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
              key: _formkey,
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              buildFirstName(),
              SizedBox(height:15),
              buildLastName(),
              SizedBox(height:15),
              buildEmail(),
              SizedBox(height:15),
              buildPhoneNumber(),
              SizedBox(height:15),
              buildNationalID(),
              SizedBox(height:15),

              buildBirthDate(),
              SizedBox(height:15),

              buildAddress(),
              SizedBox(height:15),

              buildSchool(),
              SizedBox(height:15),

              buildSchoolGrade(),
              SizedBox(height:15),

              buildParentFirstName(),
              SizedBox(height:15),

              buildParentLastName(),
              SizedBox(height:15),

              buildParentNationalId(),
              SizedBox(height:15),

              buildParentPhoneNumber(),
              SizedBox(height:15),

              buildParentJob(),
              SizedBox(height:15),

              SizedBox(height: 30),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.teal.shade400,
                ),
                child: MaterialButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white, fontSize: 20,),
                    ),
                    onPressed: () => {}
         ),
              )
            ],
          ),
          ),
        ),
      ),
    );
  }
}