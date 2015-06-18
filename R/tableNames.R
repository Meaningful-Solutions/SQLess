require(RSQLite);

tableNames<-
  function( sqlite.file ){
        
    table.names<<-
      dTableNames(sqlite.file);
  }