echo "Launching $BUILD_NAME IN AMAZON ECS"
ecs-cli configure --region us-west-1 --access-key AKIAJTA5RMP7AREEUGBQ --secret-key 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 --cluster spmia-tmx-dev
ecs-cli compose --file docker/common/docker-compose.yml up
rm -rf ~/.ecs
