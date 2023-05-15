import mock from "./mock.js";

const USE_DATABASE = false;
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

const get = async (tabela) => {
  try {
    if (USE_DATABASE) {
      const dados = await fetch(
        "controller/appHandler.php?" +
          new URLSearchParams({
            category: tabela,
          }),
        {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
          },
        }
      ).then(async (response) => {
        return await response.json();
      });

      return dados;
    } else {
      const database = carregar();
      return database[tabela] ?? [];
    }
  } catch {
    return [];
  }
};

const getByMealName = async (tabela, termoBusca) => {
  try {
    const dados = await fetch(
      "controller/appHandler.php?" +
        new URLSearchParams({
          categoryMeal: tabela,
          term: termoBusca,
        }),
      {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
        },
      }
    ).then(async (response) => {
      return await response.json();
    });

    return dados;
  } catch {
    return [];
  }
};

const getByFilter = async (tabela, filtro) => {
  try {
    let rows;

    if (USE_DATABASE) {
      rows = await getByMealName(tabela, filtro);
    } else {
      const dados = await get(tabela);
      rows = dados.filter((row) =>
        row.nome.toUpperCase().includes(filtro.toUpperCase())
      );
    }

    return rows;
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
