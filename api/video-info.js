let fetch;
import('node-fetch').then(module => {
  fetch = module.default;
});

module.exports = async (req, res) => {
  if (!fetch) {
    await import('node-fetch').then(module => {
      fetch = module.default;
    });
  }

  const bvid = req.query.bvid;
  const apiUrl = `https://api.bilibili.com/x/web-interface/view?bvid=${bvid}`;

  try {
    const response = await fetch(apiUrl);
    const data = await response.json();
    res.json(data);
  } catch (error) {
    console.error('Error fetching video info:', error);
    res.status(500).json({ error: 'Error fetching video info' });
  }
};
