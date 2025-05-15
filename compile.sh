sudo chown eliasnacher -R android
npm run build
npx cap sync android
docker run --rm \
  -v $(pwd):/app \
  vue-capacitor-builder \
  bash -c "./gradlew bundleRelease"