import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
 
class CartForm extends StatefulWidget {
  const CartForm({Key? key}) : super(key: key);

  @override
  State<CartForm> createState() => _CartFormState();
}

class _CartFormState extends State<CartForm> {
  int _activeStepIndex=0;
  
  TextEditingController nommarieController = TextEditingController();
  TextEditingController prenommarieController = TextEditingController();
  TextEditingController nommarieeController = TextEditingController();
  TextEditingController prenommarieeController= TextEditingController();
  TextEditingController couleur_mariage = TextEditingController();
  TextEditingController date_mariage = TextEditingController();
  TextEditingController quantite = TextEditingController();
  TextEditingController theme_mariage = TextEditingController();
  TextEditingController heure_ceremonieciv= TextEditingController();
  TextEditingController lieu_ceremonieciv = TextEditingController();
  TextEditingController heure_ceremonierelig = TextEditingController();
  TextEditingController lieu_ceremonierelig = TextEditingController();
  TextEditingController heure_reception = TextEditingController();
  TextEditingController lieu_reception = TextEditingController();
  TextEditingController num_person_temoin = TextEditingController();
  TextEditingController message = TextEditingController();

  String date = "Choisir date" ;
  // String getText(){
  //   if (date==null){
  //     return "Date du mariage";
  //   }else{
  //     return DateFormat("yyyy-MM-dd").format(date);
  //   }
  // }

  void datePicker(){
    showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(DateTime.now().year), 
      lastDate: DateTime(DateTime.now().year + 5)
      ).then((value) {
        setState(() {
          date = ('${value!.day}/${value.month}/${value.year}');
        });
      });
  }

  // Future pickDate (BuildContext context) async {

  //   final initialDate=DateTime.now();
  //   final newDate = await showDatePicker(
  //     context: context,
  //     initialDate: initialDate,
  //     firstDate: DateTime(DateTime.now().year-5),
  //     lastDate: DateTime(DateTime.now().year+5),
  //   );
  //   if (newDate==null) return;
  //   setState((() => date=newDate));
  // }

  List<Step> stepList()=>[
    Step(
      state: _activeStepIndex <=0 ?StepState.editing : StepState.complete,
      isActive: _activeStepIndex >=0,
      title: const Text("Info Personnelles"),
      content: Container(
      child: Column(
        children: [
          TextField(
            textInputAction: TextInputAction.next,
            controller: nommarieController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Nom du Marié",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: prenommarieController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Prenom du Marié",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: nommarieeController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Nom de la mariée",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: prenommarieeController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Prenom de la mariée",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: couleur_mariage,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Couleur du mariage",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: datePicker, 
            child: Text("Date : $date")),
          // TextField(
          //   controller: date_mariage,
          //   decoration: const InputDecoration(
          //     border: OutlineInputBorder(),
          //     labelText: "Date du mariage",
          //   ),
          // ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            controller: quantite,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Quantité",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: message,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Message",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: theme_mariage,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Thème du Mariage",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            controller: num_person_temoin,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Numéro du témoin",
            ),
          ),
        ],
      ),
    ),
    ),
    Step(
      state: _activeStepIndex <=1 ?StepState.editing : StepState.complete,
      isActive: _activeStepIndex >=1,
      title: const Text("Info sur l'Evènements"),
     content: Container(
      child: Column(
        children: [
          TextField(
            textInputAction: TextInputAction.next,
            controller: heure_ceremonieciv,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Heure Cérémonie Civil",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: lieu_ceremonieciv,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Lieu Cérémonie Civil",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: heure_ceremonierelig,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Heure Cérémonie Réligieuse",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: lieu_ceremonierelig,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Lieu Cérémonie Réligieuse",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: heure_reception,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Heure Réception",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: lieu_reception,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Lieu Réception",
            ),
          ), 
        ],
      ),
    ),
    ),
    Step(
      state: StepState.complete,
      isActive: _activeStepIndex >=2,
      title: const Text("confirmer"), 
      content: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Nom du marié: ${nommarieController.text} "),
          Text("Prenom du marié: ${prenommarieController.text} "),
          Text("Nom de la Mariée: ${nommarieeController.text} "),
          Text("Prenom de la Mariée: ${prenommarieController.text} "),
          Text("Couleur du Mariage: ${couleur_mariage.text} "),
          Text("Date du Mariage: ${date_mariage.text} "),
          Text("Quantité: ${quantite.text} "),
          Text("Message: ${message.text} "),
          Text("Thème du Mariage: ${theme_mariage.text} "),
          Text("Numéro du Témoin: ${num_person_temoin.text} "),
          Text("Heure Cérémonie Civil: ${heure_ceremonieciv.text} "),
          Text("Lieu Cérémonie Civil: ${lieu_ceremonieciv.text} "),
          Text("Heure Cérémonie Réligieuse: ${heure_ceremonierelig.text} "),
          Text("Lieu Cérémonie Réligieuse: ${lieu_ceremonierelig.text} "),
          Text("Heure Réception: ${heure_reception.text} "),
          Text("Lieu Réception: ${lieu_reception.text} "),
        ],
      ),
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green,
        title: const Text("Remplissez  tous les champs"),
        ),
      body: 
       Theme(
    data: ThemeData(
                  accentColor: Colors.green,
                  primarySwatch: Colors.green,
                  colorScheme: ColorScheme.light(
                    primary: Colors.green
                  )
                ),
    child:  Stepper(
        
        type: StepperType.vertical,
        currentStep: _activeStepIndex,
        steps: stepList(),
        onStepContinue: (){
          // backgroundColor:Colors.green;
          if (_activeStepIndex<(stepList().length-1)){
            _activeStepIndex +=1;
          }
          setState(() {
            
          });
        },
        onStepCancel: (){
          if (_activeStepIndex==0){
            return;
          }
          _activeStepIndex -=1;
          setState(() {
            
          });
        },
      ), 
    )); 
  }
}
