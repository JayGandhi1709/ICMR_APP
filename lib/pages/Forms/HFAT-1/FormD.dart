import '../../../components/models/checkbox_option.dart';
import '../../../components/models/question.dart';

final List<Question> hfat1FormD = [
  Question(
    type: 'checkbox',
    subtitle: 'Drug Name:',
    question:
        '1D.1 : Which of the following essential emergency drugs are available at the DH/ Tertiary Care Hospital? (Multiple answers possible)?',
    options: <CheckBoxOption>[
      CheckBoxOption(label: 'Oxygen medicinal gas'),
      CheckBoxOption(label: 'Atropine'),
      CheckBoxOption(label: 'Diazepam/Lorazepam'),
      CheckBoxOption(label: 'Adrenaline'),
      CheckBoxOption(label: 'Charcoal activated'),
      CheckBoxOption(label: 'Antisnake venom'),
      CheckBoxOption(label: 'Pralidoxime (PAM)'),
      CheckBoxOption(label: 'Magnesium sulphate'),
      CheckBoxOption(label: 'Tetanus immunoglobulin'),
      CheckBoxOption(label: 'Neostigmine'),
      CheckBoxOption(label: 'Aspirin'),
      CheckBoxOption(label: 'Clopidogrel'),
      CheckBoxOption(label: 'Atorvastatin'),
      CheckBoxOption(label: 'Misoprostol'),
      CheckBoxOption(label: 'Labetalol IV'),
      CheckBoxOption(label: 'Phenobarbitone'),
      CheckBoxOption(label: 'Phenytoin (inj)'),
      CheckBoxOption(label: 'Plasma volume expander'),
      CheckBoxOption(label: '3% Saline'),
      CheckBoxOption(label: 'Dobutamine'),
      CheckBoxOption(label: 'Streptokinase'),
      CheckBoxOption(label: 'Tenecteplase'),
      CheckBoxOption(label: 'Oxytocin'),
      CheckBoxOption(label: 'Salbutamol sulphate'),
      CheckBoxOption(label: 'Glucose/ 25 % dextrose'),
      CheckBoxOption(label: 'Tranexamic acid'),
      CheckBoxOption(label: 'tPA IV'),
      CheckBoxOption(label: 'Methergine'),
      CheckBoxOption(label: 'Carboprost'),
    ],
    value: <String>[],
  ),
  Question(
    type: 'checkbox',
    subtitle:
        '24x7 availability of (with numbers and availability and functionality):',
    question:
        '1D.2 : Which of the following essential emergency equipment is available at the DH/ Tertiary Care Hospital? (Multiple answers possible)',
    options: <CheckBoxOption>[
      CheckBoxOption(label: 'Mobile Bed for Resuscitation'),
      CheckBoxOption(label: 'Crash Cart (specialized cart for resuscitation)'),
      CheckBoxOption(label: 'Hard Cervical Collar'),
      CheckBoxOption(label: 'Oxygen Cylinder/Central Oxygen Supply'),
      CheckBoxOption(label: 'Suction Machine'),
      CheckBoxOption(
          label:
              'Multipara Monitor (To monitor Heart rate, BP, SPO2 [Essential] ECG, Respiration Rate [Desirable] etc)'),
      CheckBoxOption(label: 'Defibrillator with or without external Pacer'),
      CheckBoxOption(
          label:
              'Toothed Forceps, Kocher Forceps, Magill\'s forceps, Artery forceps'),
      CheckBoxOption(label: 'AMBU Bag for Adult and Paediatric'),
      CheckBoxOption(
          label:
              'Basic airway equipment like oropharyngeal nasopharyngeal airway, LMA for Adult and Pediatric'),
      CheckBoxOption(
          label:
              'Advanced laryngoscope and endotracheal tube or other similar device'),
      CheckBoxOption(label: 'Tourniquet'),
      CheckBoxOption(label: 'Pelvic binder or bed sheets with clips'),
      CheckBoxOption(label: 'Laryngoscope with all sized Blades'),
      CheckBoxOption(label: 'Endotracheal Tubes of all Sizes'),
      CheckBoxOption(label: 'Laryngeal Mask Airway (LMA)'),
      CheckBoxOption(label: 'Chest Tubes with Water Seal Drain'),
      CheckBoxOption(label: 'ECG Machine'),
      CheckBoxOption(label: 'Nebulizer'),
      CheckBoxOption(label: 'Fluid Warmer'),
      CheckBoxOption(label: 'Infusion Pump and Syringe Drivers'),
      CheckBoxOption(label: 'Spine Board with Sling and Scotch Tapes'),
      CheckBoxOption(label: 'Splints for all types of Fracture'),
      CheckBoxOption(label: 'Non-invasive Ventilators'),
      CheckBoxOption(label: 'Invasive Ventilators'),
      CheckBoxOption(label: 'Incubators'),
      CheckBoxOption(
        label: 'Other (Specify)',
        isOther: true,
      ),
    ],
    value: <String>[],
  ),
];
