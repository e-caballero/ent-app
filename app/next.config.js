/** @type {import('next').NextConfig} */
module.exports = {
  reactStrictMode: true,
  images: {
    domains: ['lalatinadev.blob.core.windows.net'],
  },
  env: { 
    private_key: process.env.PRIVATE_KEY,
  }
}
