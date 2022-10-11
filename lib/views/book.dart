part of 'pages.dart';

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  void initState() {
    super.initState();
  }

  final _bookKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  void dispose() {
    ctrlName.dispose();
    ctrlEmail.dispose();
    ctrlPhone.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  bool _isNumeric(String str) {
    if (str == null) {
      return false;
    }
    return double.tryParse(str) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bugatti Veyron"),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(24),
            child: Form(
                key: _bookKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Full Name",
                          prefixIcon: Icon(Icons.people)),
                      controller: ctrlName,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value.toString().length < 1
                            ? 'Nama harus diisi'
                            : null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Email Address",
                          prefixIcon: Icon(Icons.email)),
                      controller: ctrlEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return !EmailValidator.validate(value.toString())
                            ? 'Email tidak valid!'
                            : null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Phone Number",
                          prefixIcon: Icon(Icons.phone_android)),
                      controller: ctrlPhone,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return _isNumeric(value.toString())
                            ? null
                            : 'Telepon harus angka';
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "City",
                          prefixIcon: Icon(Icons.location_city)),
                      controller: ctrlCity,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value.toString().length < 1
                            ? 'Kota harus diisi'
                            : null;
                      },
                    ),
                    SizedBox(height: 32),
                    ElevatedButton(
                        onPressed: () {
                          if (_bookKey.currentState!.validate()) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: const Text('Booking Confirmation'),
                                      content: Text("Name: " +
                                          ctrlName.text +
                                          "\nEmail: " +
                                          ctrlEmail.text +
                                          "\nPhone: " +
                                          ctrlPhone.text +
                                          "\nCity: " +
                                          ctrlCity.text),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () => Navigator
                                              .pushAndRemoveUntil<dynamic>(
                                                  context,
                                                  MaterialPageRoute<dynamic>(
                                                      builder: (context) =>
                                                          MyHomePage()),
                                                  (route) => false),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ));
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: const Text('Booking Failed'),
                                      content:
                                          const Text("Please fil all field!"),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ));
                          }
                        },
                        child: SizedBox(
                          width: 95,
                          child: Row(children: [
                            Icon(Icons.save),
                            Spacer(),
                            Text("Book Now"),
                          ]),
                        ))
                  ],
                ))),
      ),
    );
  }
}
