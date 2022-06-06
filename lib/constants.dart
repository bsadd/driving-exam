import 'package:flutter/material.dart';

const kBlackColor = Color(0xFF393939);
const kLightBlackColor = Color(0xFF8F8F8F);
const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);

final kShadowColor = const Color(0xFFD3D3D3).withOpacity(.84);
const kSecondaryColor = Color(0xFF8B94BC);
const kIconColor = Color(0xFFF48A37);
const kProgressIndicator = Color(0xFFBE7066);

const kPrimaryGradient = LinearGradient(
  colors: [
    Color(0xFF46A0AE),
    Color(0xFF00FFCB),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const kDelayTime = 1;

const List<List> kDummyData = [
  [
    {
      'id': 1,
      'question': 'After overtaking you should go back to ______.',
      'options': [
        'Your lane',
        'Your normal road position',
        'Adjacent lane',
        'Their lane',
      ],
      'answer_index': 1,
    },
    {
      'id': 2,
      'question': 'When can you overtake on the right?',
      'options': [
        'When you see an obsacle',
        'When you need to overtake',
        'On or before a roundabout',
        'When there is no traffic signal',
      ],
      'answer_index': 2,
    },
    {
      'id': 3,
      'question': 'Which one is not considered a special maneuver?',
      'options': [
        'Pulling away',
        'Reversing',
        'Parking',
        'Performing a U-turn',
      ],
      'answer_index': 2,
    },
    {
      'id': 4,
      'question': 'Which one is not considered a special maneuver?',
      'options': [
        'Pulling away',
        'Reversing',
        'Parking',
        'Performing a U-turn',
      ],
      'answer_index': 2,
    },
  ],
  [
    {
      'id': 1,
      'question': 'Other data: After overtaking you should go back to ______',
      'options': [
        'Your lane',
        'Your normal road position',
        'Addjacent lane',
        'Their lane',
      ],
      'answer_index': 1,
    },
    {
      'id': 2,
      'question': 'When can you overtake on the right?',
      'options': [
        'When you see an obsacle',
        'When you need to overtake',
        'On or before a roundabout',
        'When there is no traffic signal',
      ],
      'answer_index': 2,
    },
    {
      'id': 3,
      'question': 'Which one is not considered a special maneuver?',
      'options': [
        'Pulling away',
        'Reversing',
        'Parking',
        'Performing a U-turn',
      ],
      'answer_index': 2,
    },
    {
      'id': 4,
      'question': 'Which one is not considered a special maneuver?',
      'options': [
        'Pulling away',
        'Reversing',
        'Parking',
        'Performing a U-turn',
      ],
      'answer_index': 2,
    },
  ],
];

const String kDummyText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pretium mollis purus sit amet consequat. Phasellus varius urna eu aliquam luctus. Integer molestie pretium lacus, sit amet pulvinar dui cursus vitae. Suspendisse consectetur ex eget elit aliquet dignissim. Donec sollicitudin orci felis, nec suscipit lorem suscipit sit amet. Maecenas rutrum vulputate massa, id semper orci hendrerit vel. Donec ornare dapibus pulvinar. Etiam mollis ac metus et cursus. Nam aliquam sapien eget nibh tincidunt, sit amet congue felis consectetur. Sed placerat vestibulum eros. Curabitur commodo hendrerit lacus, at consequat eros ultricies quis. Nulla non justo nulla.';
