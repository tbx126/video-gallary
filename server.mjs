import express from 'express';

let fetch;
import('node-fetch').then(module => {
  fetch = module.default;
});

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.static('public'));

app.get('/video-info/:bvid', async (req, res) => {
  if (!fetch) {
    await import('node-fetch').then(module => {
      fetch = module.default;
    });
  }

  const bvid = req.params.bvid;
  const apiUrl = `https://api.bilibili.com/x/web-interface/view?bvid=${bvid}`;

  try {
    const response = await fetch(apiUrl);
    const data = await response.json();
    res.json(data);
  } catch (error) {
    console.error('Error fetching video info:', error);
    res.status(500).json({ error: 'Error fetching video info' });
  }
});

app.get('/proxy-image', async (req, res) => {
  const imageUrl = req.query.url;

  if (!fetch) {
    await import('node-fetch').then(module => {
      fetch = module.default;
    });
  }

  try {
    const response = await fetch(imageUrl, {
      headers: {
        'Referer': 'https://www.bilibili.com',
      },
    });

    if (response.ok) {
      const contentType = response.headers.get('content-type');
      res.set('Content-Type', contentType);
      response.body.pipe(res);
    } else {
      res.status(response.status).json({ error: `Error fetching image: ${response.statusText}` });
    }
  } catch (error) {
    console.error('Error fetching image:', error);
    res.status(500).json({ error: 'Error fetching image' });
  }
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});