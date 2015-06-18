require(RSQLite);

viewNames<-
  function( sqlite.file ){
    
    view.names<<-
      dViewNames(sqlite.file=sqlite.file);
  }