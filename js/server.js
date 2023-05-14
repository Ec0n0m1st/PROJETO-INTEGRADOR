import mock from "./mock.js";

const dbName = "powerplant.database";

const salvar = (db) => localStorage.setItem(dbName, JSON.stringify(db));

const carregar = () => {
  try {
    var database = JSON.parse(localStorage.getItem(dbName));

    if (!database) return mock;

    return database;
  } catch {
    return mock;
  }
};

const dropar = (tabela) => {
  const database = carregar();

  if (tabela) {
    database[tabela] = undefined;
    return salvar(database);
  }
  localStorage.removeItem(dbName);
};

const get = (tabela) => {
  try {
    const database = carregar();

    return database[tabela] ?? [];
  } catch {
    return [];
  }
};

const getByFilter = (tabela, filtro) => {
  try {
    const rows = get(tabela);

    return rows.filter((row) =>
      row.nome.toUpperCase().includes(filtro.toUpperCase())
    );
  } catch {
    return [];
  }
};

const post = (tabela, entidade) => {
  const database = carregar();

  if (!database[tabela]) database[tabela] = [];

  database[tabela].push(entidade);

  salvar(database);
};

export default {
  salvar,
  carregar,
  post,
  dropar,
  get,
  getByFilter,
};
