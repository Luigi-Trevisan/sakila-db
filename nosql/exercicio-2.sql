// EXERCÍCIO 2 - CONTADORES NOSQL
// ========================================

// 2.1 - Contador: Livros NÃO publicados E pageCount < 300
db.books.countDocuments({
  $and: [
    { status: { $ne: "PUBLISH" } },
    { pageCount: { $lt: 300 } }
  ]
});

// 2.2 - Contador: Livros com "MongoDB" E "SQL Server" no título
db.books.countDocuments({
  $and: [
    { title: { $regex: "MongoDB", $options: "i" } },
    { title: { $regex: "SQL Server", $options: "i" } }
  ]
});

// 2.3 - Contador: Livros onde ISBN começa com "18"
db.books.countDocuments({
  isbn: { $regex: "^18" }
});

// 2.4 - Contador: Livros com "JAVA" OU "Mobile" na descrição
db.books.countDocuments({
  longDescription: { 
    $regex: "\\b(java|mobile)\\b", 
    $options: "i" 
  }
});