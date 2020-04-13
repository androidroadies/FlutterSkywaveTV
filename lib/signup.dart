import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:skywavetvapp/loginscreen.dart';
import 'package:skywavetvapp/utilities/constant.dart';
class SignupPage extends StatefulWidget{

  @override
  _ProfileScreenState createState() => new _ProfileScreenState();
  
}

class _ProfileScreenState extends State<SignupPage> {

  final _formKey = GlobalKey<FormState>();

  String currentSelectedValue;
  static const deviceTypes = ["Premium", "Platinum", "Family Premium - Monthly","Family Platinum - Yearly"];

  String currentCountry;
  static const deviceCountry = ["India", "USA", "U.K","Australia"];

  String currentState;
  static const deviceState = ["Gujrat", "California", "England","Tasmania"];

  String currentCity;
  static const deviceCity = ["Ahmedabad", "Los Angeles", "Birmingham","Burnie"];

   final designationController = TextEditingController();
   final firstNameController = TextEditingController();   
   final lastNameController = TextEditingController();   
   final contactnoController = TextEditingController();   
   final genderController = TextEditingController();   
   final addressline1Controller = TextEditingController();   
   final addressline2Controller = TextEditingController();   
   final cityController = TextEditingController();   
   final pincodeController = TextEditingController();   
   final birthdateController = TextEditingController();
   final skillsController = TextEditingController();   

     @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    designationController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    contactnoController.dispose();
    genderController.dispose();
    addressline1Controller.dispose();
    addressline2Controller.dispose();
    cityController.dispose();
    pincodeController.dispose();
    birthdateController.dispose();
    skillsController.dispose();
    super.dispose();
  }

  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(0, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        title: Text("Sign UP"),
        actions: <Widget>[
      
        ],
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        child: new Form(
         key: _formKey, 
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                 decoration: BoxDecoration(
	                      color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('assets/images/mobile.png'),
                          fit: BoxFit.fitHeight
                        ),
	                      borderRadius: BorderRadius.circular(10),
	                      boxShadow: [
	                        BoxShadow(
	                          color: Colors.white,
	                          blurRadius: 10.0,
	                          offset: Offset(0, 10)
	                        )
	                      ]
	                    ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 20.0,
                  ),               
                  child: Column(                   
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 0.0)),
                      SizedBox(height: 15.0),
                      _buildFirstName(),
                      SizedBox(height: 15.0,),
                      _buildLastName(),
                      SizedBox(height: 15.0,),
                      _buildEmail(),
                      SizedBox(height: 15.0,),
                      _buildnewpassword(),
                      SizedBox(height: 15.0,),
                      _buildConfirmPassword(),
                      SizedBox(height: 15.0,),
                      _builPhoneNo(),
                      SizedBox(height: 15.0,),
                      _typePrimium(),
                      SizedBox(height: 10.0,),
                      _selectCountry(),
                      SizedBox(height: 15.0,),
                      _selectState(),
                      SizedBox(height: 15.0,),
                      _selectcity(),
                      SizedBox(height: 15.0,),
                      _builAddress(),
                      SizedBox(height: 25.0,),
                      _buildLoginbtn() ,
                      SizedBox(height: 1.0,),
                      _buildRegister(),
                      SizedBox(height: 15.0,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        ), 
        value: SystemUiOverlayStyle.light,
      ),
    );
  }

   Widget _buildLoginbtn() {
    return GestureDetector(
      onTap: () {
         Navigator.push(context, 
               new MaterialPageRoute(
               builder: (context) => LoginScreen()
              )
             );
      },
      child: RichText(
        text: TextSpan(
          children: 
          [
            TextSpan(
              text: 'Already Have an Account Yet?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: 'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
          'First Name',
          style: kLabelStyle,
        ),
        Padding(padding: EdgeInsets.only(top: 0.0)),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 5.0 , left: 10.0),
              hintText: 'Enter your First Name',
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'OpenSans',
                )
            ),
            controller: firstNameController,
            validator: (valueText) {
             if (valueText.isEmpty) {
              return 'Please Enter Your First Name';
                }
              return null;
             }, 
          ),
        ),
      ],
    );
  }

Widget _buildLastName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
          'Last Name',
          style: kLabelStyle,
        ),
        Padding(padding: EdgeInsets.only(top: 0.0)),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 5.0 , left: 10.0),
              hintText: 'Enter your Last Name',
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'OpenSans',
                )
            ),
            controller: lastNameController,
            validator: (valueText) {
             if (valueText.isEmpty) {
              return 'Please Enter Your Last Name';
                }
              return null;
             },
          ),
        ),
      ],
    );
  }

  Widget _buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
          'Email',
          style: kLabelStyle,
        ),
        Padding(padding: EdgeInsets.only(top: 0.0)),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            keyboardType: TextInputType.number,
            //maxLength: 10,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 5.0 , left: 10.0),
              hintText: 'Enter your Email',
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'OpenSans',
                )
            ),
            controller: contactnoController,
            validator: (valueText) {
             if (valueText.isEmpty) {
              return 'Please Enter Your Email';
                }
              return null;
             },
          ),
        ),
      ],
    );
  }

  Widget _buildnewpassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
          'New Password',
          style: kLabelStyle,
        ),
        Padding(padding: EdgeInsets.only(top: 0.0)),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 5.0 , left: 10.0),
              hintText: 'Enter New Password',
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'OpenSans',
                )
            ),
            controller: genderController,
            validator: (valueText) {
             if (valueText.isEmpty) {
              return 'Please New Password';
                }
              return null;
             },
          ),
        ),
      ],
    );
  }

  Widget _buildConfirmPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
          'Confirm Password',
          style: kLabelStyle,
        ),
        Padding(padding: EdgeInsets.only(top: 0.0)),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 5.0 , left: 10.0),
              hintText: 'Enter your Confirm Password',
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'OpenSans',
                )
            ),
            controller: addressline1Controller,
            validator: (valueText) {
             if (valueText.isEmpty) {
              return 'Please Enter Your Confirm Password';
                }
              return null;
             },
          ),
        ),
      ],
    );
  }

  Widget _builPhoneNo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
          'Phone NO.',
          style: kLabelStyle,
        ),
        Padding(padding: EdgeInsets.only(top: 0.0)),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 5.0 , left: 10.0),
              hintText: 'Enter your Phone NO.',
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'OpenSans',
                )
            ),
            controller: addressline2Controller,
             validator: (valueText) {
             if (valueText.isEmpty) {
              return 'Please Enter Your Phone NO.';
                }
              return null;
             },
          ),
        ),
      ],
    );
  }

  Widget _buildRegister() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0, 
          onPressed: (){
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'REGISTER',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _typePrimium() {
return Container(
      padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 17,top:12),
  child: FormField<String>(
  
    builder: (FormFieldState<String> state) {
      return InputDecorator(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
            fillColor: Colors.white,
            filled: true,
            ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text("-- Choose Premium Type --",style: TextStyle(
                  color: Colors.grey,
                ),),
            value: currentSelectedValue,
            isDense: true,
            onChanged: (newValue) {
              setState(() {
                currentSelectedValue = newValue;
              });
              print('currentSelectedValue===>'+currentSelectedValue);
            },
            items: deviceTypes.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, 
                style: TextStyle(
                  color: Colors.black,
                ),
                ),
              );
            }).toList(),
          ),
        ),
      );
    },
  ),
);
}

 Widget _selectCountry() {
return Container(
      padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 17,top:12),
  child: FormField<String>(
  
    builder: (FormFieldState<String> state) {
      return InputDecorator(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
            fillColor: Colors.white,
            filled: true,
            ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text("-- Choose Country --",style: TextStyle(
                  color: Colors.grey,
                ),),
            value: currentCountry,
            isDense: true,
            onChanged: (newValue) {
              setState(() {
                currentCountry = newValue;
              });
              print('currentSelectedValue===>'+currentCountry);
            },
            items: deviceCountry.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, 
                style: TextStyle(
                  color: Colors.black,
                ),
                ),
              );
            }).toList(),
          ),
        ),
      );
    },
  ),
);
}


 Widget _selectState() {
return Container(
      padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 17,top:12),
  child: FormField<String>(
  
    builder: (FormFieldState<String> state) {
      return InputDecorator(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
            fillColor: Colors.white,
            filled: true,
            ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text("-- Choose State --",style: TextStyle(
                  color: Colors.grey,
                ),),
            value: currentState,
            isDense: true,
            onChanged: (newValue) {
              setState(() {
                currentState = newValue;
              });
              print('currentSelectedValue===>'+currentState);
            },
            items: deviceState.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, 
                style: TextStyle(
                  color: Colors.black,
                ),
                ),
              );
            }).toList(),
          ),
        ),
      );
    },
  ),
);
}

Widget _selectcity() {
return Container(
      padding: const EdgeInsets.only(left: 0, right: 0 , bottom: 17,top:12),
  child: FormField<String>(
  
    builder: (FormFieldState<String> state) {
      return InputDecorator(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
            fillColor: Colors.white,
            filled: true,
            ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text("-- Choose City --",style: TextStyle(
                  color: Colors.grey,
                ),),
            value: currentCity,
            isDense: true,
            onChanged: (newValue) {
              setState(() {
                currentCity = newValue;
              });
              print('currentSelectedValue===>'+currentCity);
            },
            items: deviceCity.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, 
                style: TextStyle(
                  color: Colors.black,
                ),
                ),
              );
            }).toList(),
          ),
        ),
      );
    },
  ),
);
}

 Widget _builAddress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
          'Address',
          style: kLabelStyle,
        ),
        Padding(padding: EdgeInsets.only(top: 0.0)),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 5.0 , left: 10.0),
              hintText: 'Enter your Address',
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'OpenSans',
                )
            ),
            controller: addressline2Controller,
             validator: (valueText) {
             if (valueText.isEmpty) {
              return 'Please Enter Your Phone NO.';
                }
              return null;
             },
          ),
        ),
      ],
    );
  }

}