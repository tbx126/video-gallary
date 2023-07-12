let fetch;
import('node-fetch').then(module => {
  fetch = module.default;
});

module.exports = async (req, res) => {
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
};
