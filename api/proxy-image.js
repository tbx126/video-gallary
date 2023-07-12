import fetch from 'node-fetch';

module.exports = async (req, res) => {
  const imageUrl = req.query.url;

  try {
    const response = await fetch(imageUrl, {
      headers: {
        'Referer': 'https://www.bilibili.com',
      },
    });

    if (response.ok) {
      const contentType = response.headers.get('content-type');
      res.setHeader('Content-Type', contentType);
      response.body.pipe(res);
    } else {
      res.status(response.status).json({ error: `Error fetching image: ${response.statusText}` });
    }
  } catch (error) {
    console.error('Error fetching image:', error);
    res.status(500).json({ error: 'Error fetching image' });
  }
};
