// The Worker's tests only (tests-worker/), run inside workerd by the Workers
// Vitest pool. The game's own tests are plain `node --test` (npm test).
import { defineConfig } from 'vitest/config';
import { cloudflareTest } from '@cloudflare/vitest-pool-workers';

export default defineConfig({
    plugins: [
        cloudflareTest({
            wrangler: { configPath: './tests-worker/wrangler.test.jsonc' },
        }),
    ],
    test: {
        include: ['tests-worker/**/*.test.js'],
    },
});
