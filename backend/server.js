import express from "express";
import cors from "cors";
import mysql from "mysql2/promise";

const app = express();

app.use(cors());
app.use(express.json());

const db = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "root",
  database: "empresa"
});

app.get("/", (req, res) => {
  res.json({
    mensagem: "API de Fornecedores funcionando!"
  });
});

app.get("/fornecedores", async (req, res) => {
  try {
    const [fornecedores] = await db.query(
      "SELECT * FROM Fornecedor ORDER BY nome"
    );

    res.json(fornecedores);
  } catch (error) {
    console.error(error);
    res.status(500).json({
      erro: "Erro ao consultar fornecedores"
    });
  }
});

app.get("/fornecedores/:id", async (req, res) => {
  try {
    const [fornecedores] = await db.query(
      "SELECT * FROM Fornecedor WHERE id = ?",
      [req.params.id]
    );

    if (fornecedores.length === 0) {
      return res.status(404).json({
        erro: "Fornecedor não encontrado"
      });
    }

    res.json(fornecedores[0]);
  } catch (error) {
    console.error(error);
    res.status(500).json({
      erro: "Erro ao buscar fornecedor"
    });
  }
});

app.post("/fornecedores", async (req, res) => {
  try {
    const { nome, telefone, endereco } = req.body;

    const [resultado] = await db.query(
      "INSERT INTO Fornecedor (nome, telefone, endereco) VALUES (?, ?, ?)",
      [nome, telefone, endereco]
    );

    res.status(201).json({
      id: resultado.insertId,
      nome,
      telefone,
      endereco
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({
      erro: "Erro ao cadastrar fornecedor"
    });
  }
});

app.put("/fornecedores/:id", async (req, res) => {
  try {
    const { nome, telefone, endereco } = req.body;

    const [resultado] = await db.query(
      `UPDATE Fornecedor
       SET nome = ?, telefone = ?, endereco = ?
       WHERE id = ?`,
      [nome, telefone, endereco, req.params.id]
    );

    if (resultado.affectedRows === 0) {
      return res.status(404).json({
        erro: "Fornecedor não encontrado"
      });
    }

    res.json({
      mensagem: "Fornecedor atualizado com sucesso"
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({
      erro: "Erro ao atualizar fornecedor"
    });
  }
});

app.delete("/fornecedores/:id", async (req, res) => {
  try {
    const [resultado] = await db.query(
      "DELETE FROM Fornecedor WHERE id = ?",
      [req.params.id]
    );

    if (resultado.affectedRows === 0) {
      return res.status(404).json({
        erro: "Fornecedor não encontrado"
      });
    }

    res.json({
      mensagem: "Fornecedor excluído com sucesso"
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({
      erro: "Erro ao excluir fornecedor"
    });
  }
});

app.listen(3000, () => {
  console.log("Servidor rodando em http://localhost:3000");
});