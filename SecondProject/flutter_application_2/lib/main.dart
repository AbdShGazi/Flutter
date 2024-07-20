// import 'package:flutter/material.dart';
// import 'quote.dart';
// void main() =>runApp(MaterialApp(
// home:quotelist()

// ));

// class quotelist extends StatefulWidget {
//   const quotelist({super.key});

//   @override
//   State<quotelist> createState() => _quotelistState();
// }
// // Import the library that defines the 'Quote' class
//   Quote(author: 'Oscar Wilde', quote: 'Be yourself; everyone else is already taken'),
//   Quote(author: 'Oscar Wilde', quote: 'I have nothing to declare except my genius'),
//   Quote(author: 'Oscar Wilde', quote: 'The truth is rarely pure and never simple')
//   Quote(author: 'Oscar Wilde',quote: 'Be yourself; everyone else is already taken'),
//   Quote(author: 'Oscar Wilde',quote: 'I have nothing to declare except my genius'),
//   Quote(author: 'Oscar Wilde',quote: 'The truth is rarely pure and never simple')
// ];
//  Widget qouteTemplate(quote){
//     Text(quote.quote, style: TextStyle(fontSize: 18.0, color: Colors.grey[600])),
// child: Column(
//   children: [
//     Text(Quote.text,style: TextStyle(fontSize: 18.0,color: Colors.grey[600]),
    
    
//     ),
//     SizedBox(height: 6.0),
//     Text(quote.author,style: TextStyle(fontSize: 14.0,color: Colors.grey[800]))
//   ],
// ),
  
// );

//  }

// class _quotelistState extends State<quotelist> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 255, 255, 255),
//       appBar: AppBar(
//         title: Text('Awesome Quotes'),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 6, 179, 247),
//       ),
//       body: Column(
//         children: quotes.map((quote) => qouteTemplate(quote)).toList(),

//       )
//     );
//   }
// }

