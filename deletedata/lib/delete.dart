void _deleteAction() async {
     final post = {
      "id": widget.id
    };
    bool result = await api.deleteData(post);
    if (result) {
      _showSnackBar(context, 'Hapus ${widget.nama} Berhasil');
      debugPrint(widget.id);
    }
    else{
      _showSnackBar(context, 'Fail');
      debugPrint(widget.id);

      return null;

    }
    _refreshList();
  }