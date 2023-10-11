import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  List<String> comments = ['Great Project',];
  TextEditingController commentController = TextEditingController();

  void _showCommentDialog(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Container(
              color: Colors.brown.shade100,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: commentController, // Use the controller to capture user input
                    decoration: InputDecoration(
                      labelText: 'Add a Comment',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown.shade400,
                    ),
                    onPressed: () {
                      String newComment = commentController.text;
                      if (newComment.isNotEmpty) {
                        setState(() {
                          comments.add(newComment);
                          commentController.clear(); // Clear the text field
                        });
                        Navigator.of(context).pop(); // Close the modal
                      }
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showCommentDialog(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.brown.shade400,
      ),
      backgroundColor: Color(0xff2c100c),
      body: ListView.builder(
        itemCount: comments.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title:Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.NqY3rNMnx2NXYo3KJfg43gHaHa&pid=Api&rs=1&c=1&qlt=95&w=123&h=123'),
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color:  Colors.brown.shade100,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:8.0,top: 8.0),
                                child: Text(
                                  "Rishikesh Devare",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text(
                                  "SIGCE",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Container(
                                  height:75,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color:  Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:8.0,top: 8.0),
                                    child: Text(
                                      comments[index],style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],),),
                  SizedBox(
                    height:1,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 80,
                      ),
                      Text('Like',style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),)  ,
                      SizedBox(width: 20,),
                      Text('Comment',style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),)  ,
                    ],
                  )

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
