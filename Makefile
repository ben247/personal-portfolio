build:
	rm -rf public
	hugo
deploy: build
	aws s3 sync public/ s3://benwhalley.co.uk --acl public-read --delete
	aws configure set preview.cloudfront true
	aws cloudfront create-invalidation --distribution-id E123MIFFT8VJIA --paths '/*'