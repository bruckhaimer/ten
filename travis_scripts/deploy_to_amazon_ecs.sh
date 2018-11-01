echo "Launching $BUILD_NAME IN AMAZON ECS"
ecs-cli configure --region us-west-1 --access-key --secret-key  --cluster spmia-tmx-dev
ecs-cli compose --file docker/common/docker-compose.yml up
rm -rf ~/.ecs
