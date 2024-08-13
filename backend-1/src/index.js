import express from "express";

const app = express();
const port = 3000;

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.get("/", (_, res) => {
  res.json({ from: "Hello from backend 1", port });
});

app.listen(port, () => {
  console.log(`server running on port ${port}`);
});
