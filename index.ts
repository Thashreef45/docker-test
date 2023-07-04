import express, { Request, Response ,Application} from 'express';

const app:Application = express();
const port = 3000;

app.get('/', (req: Request, res: Response) => {
  res.json({_:"Docker Test"});
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
