import express from "express";

const app = express();
const port = 4000;

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.get("/", (_, res) => {
  res.json({ from: "Hello from backend 2", port });
});

app.listen(port, () => {
  console.log(`server running on port ${port}`);
});
