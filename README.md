# Bharat Truck Simulator

**Drive a truck down an endless Indian highway — from your chair.** Play at
**[bharattrucksimulator.com](https://bharattrucksimulator.com)**: free, no account, no ads.
(It was called ChairDrive until October 2026; chairdrive.com still redirects here.)

- First-person cab with marigolds, a gamcha-wearing driver, real sun, rain and regions
- Drive with the keyboard, a touch screen, or **your phone as the steering wheel**
- **Chair mode:** lay an office chair on its back, strap your phone to the base with two rubber
  bands, and turn the chair to steer · **C** = smart cruise · **Lean to drive** with your webcam
- Cab radio (via YouTube), indicators with Indian-highway overtaking etiquette, cab / chase / top cameras

## Develop

```bash
npm install
npm run dev          # the site + game (phone pairing needs the Worker: npm run dev:worker)
npm test             # engine + game tests
npm run test:worker  # pairing Worker tests
```

Pushing to `main` tests and deploys to Cloudflare (`.github/workflows/deploy.yml`).
Manual deploy: `npm run deploy` (needs `wrangler login`).

## Credits
Fonts: Inter, JetBrains Mono, Yatra One (SIL OFL) · Hand model: WebXR generic hand (MIT © 2019 Amazon) ·
Face tracking: MediaPipe (Apache-2.0) · UI click sounds: CC0 · Songs play from YouTube; Bharat Truck
Simulator isn't affiliated with the labels.
