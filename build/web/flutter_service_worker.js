'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/index.html": "ad35b3f784d4f84131dbddba00d7ee0f",
"/main.dart.js": "2f84e0b8ec07d781d6c7e0ccc9c2a866",
"/favicon.ico": "88c8ffa15ca34ed53d78a9a871f2c156",
"/manifest.json": "0cd4c9d954c3e172e7515a3c1053e4e0",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/LICENSE": "d33ef91063d303a9847c2c8169ebaad8",
"/assets/AssetManifest.json": "464861319f096efa0e88d9df824a76e3",
"/assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"/assets/assets/cloudlyricsapp.png": "1063c1dd21ab64a6082d52b1dc88d28e",
"/assets/assets/siamawanders.png": "0fa3d0a9d61f9a34f8a1262d17212cd4",
"/assets/assets/github.png": "08754edacfb488778e7b2eb049e2f370",
"/assets/assets/facebook.png": "7b96c178d6decbd749843f3dfceb7e7a",
"/assets/assets/linkedin.png": "2aac921286e88d8f26e6b1a889b1fc75",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
