import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'firestore_state.dart';

class FirestoreCubit extends Cubit<FirestoreState> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirestoreCubit() : super(FirestoreState()) {
    readData();
  }

  Stream<DocumentSnapshot> init() {
    Stream st =
        firestore.collection('content').doc('fvXoCgt3kA1BCDlKMrFs').snapshots();
    print("Created1");
    return st;
    //readData(Stream<DocumentSnapshot> st);
  }

  void readData() {
    Stream<DocumentSnapshot> snapshot = init();
    // if (snapshot.toString() != null) {
    emit(FirestoreState(stream: snapshot));
    print("Created2");
    //}
  }

  //Stream _stream = FirebaseFirestore.instance.collection('content').doc('fvXoCgt3kA1BCDlKMrFs').snapshots();

}
