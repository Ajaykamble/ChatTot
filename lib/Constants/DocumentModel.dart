class DocumentModel
{
  final String filename;
  final String avatar;

  DocumentModel({this.avatar, this.filename});

}

class Docs
{
  final String title;
  final List<DocumentModel> doc;
  Docs({this.title, this.doc});
}