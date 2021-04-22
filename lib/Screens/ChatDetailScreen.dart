import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tot1/Constants.dart';
import 'package:tot1/Constants/DocumentModel.dart';
import 'package:tot1/Widgets/CCircleAvatar.dart';
import 'package:tot1/Widgets/customExpansionTile.dart';

class ChatDetailScreen extends StatefulWidget {
  ChatDetailScreen({Key key}) : super(key: key);

  @override
  _ChatDetailScreenState createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {

  List<Docs> _tileList=[
    Docs(title: "Set up a chat",doc:<DocumentModel>[
      DocumentModel(avatar: avatar1,filename: "File1.pdf"),
    ]),
    Docs(title: "Privacy & Help",doc:<DocumentModel>[
      DocumentModel(avatar: avatar1,filename: "File1.pdf"),
    ]),
    Docs(title: "Shared Files",doc:<DocumentModel>[
      DocumentModel(avatar: ic_word,filename: "File1.docx"),
      DocumentModel(avatar: ic_excel,filename: "File2.xlsx"),
      DocumentModel(avatar: ic_pdf,filename: "My Pdf.pdf"),
      DocumentModel(avatar: ic_word,filename: "Word2.pdf"),
      DocumentModel(avatar: ic_word,filename: "Word1.pdf"),
      DocumentModel(avatar: ic_excel,filename: "Excel File.pdf"),
      DocumentModel(avatar: ic_pdf,filename: "Pdf File.pdf"),
    ]),
    Docs(title: "Shared Photos",doc:<DocumentModel>[
      DocumentModel(avatar: avatar1,filename: "File1.pdf"),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
          child: Container(
        color: Colors.black.withOpacity(0.6),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CustomAvatar(
                          avatar: avatar12,
                          height: 100,
                          width: 100,
                        ),
                        Positioned(
                            right: 7,
                            bottom: 7,
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height:kDefaultPadding/2),
                    Text("STOFFER",style:
                                TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 16)),
                    SizedBox(height:2),
                    Text("Active Now",style:
                                TextStyle(color: Colors.white.withOpacity(0.5))),
                  ],
                ),
              ),
            ),
            Divider(color:Colors.blueGrey,height: 2,),
            Expanded(
              child:ListView.builder(
                itemCount: _tileList.length,
                itemBuilder:(context,index){
                  return Container(
                    padding:EdgeInsets.symmetric(horizontal:kDefaultPadding),
                    child: CustomExpansionTile(
                      title: Text("${_tileList[index].title}",style: TextStyle(color:Colors.white,fontSize: 16),),
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: _tileList[index].doc.length,
                          itemBuilder: (con,subindex){
                            return Container(
                              margin:EdgeInsets.symmetric(horizontal:15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top:subindex==0?0:kDefaultPadding/2,bottom:kDefaultPadding/2 ),
                                    child: Row(
                                      children: [
                                        Container(width:30,child:Image.asset(_tileList[index].doc[subindex].avatar)),
                                        SizedBox(width:kDefaultPadding/4),
                                        Expanded(
                                          child:Text("${_tileList[index].doc[subindex].filename}",style: TextStyle(color:Colors.white),overflow: TextOverflow.ellipsis,maxLines: 1,),
                                        ),
                                        SizedBox(width:kDefaultPadding/4),
                                        Container(
                                          width: 25,
                                          height:25,
                                          decoration: BoxDecoration(
                                            shape:BoxShape.circle,
                                            color: Colors.black.withOpacity(0.3)
                                          ),
                                          child:IconButton(icon:Icon(Icons.download_rounded,color:Colors.white,size: 15,),
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){},
                                          )
                                        )
                                      ],
                                    ),
                                  ),
                                  if(subindex<_tileList[index].doc.length-1)
                                  Divider(height:2,color:Colors.white.withOpacity(0.2),),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
