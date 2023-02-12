resource "aws_ecs_cluster" "cluster" {
  name               = "lucas-cluster"

}

resource "aws_ecs_task_definition" "task" {
  family                = "worker-lucas"
  container_definitions = file("task.json")
  network_mode          = "bridge"
}

resource "aws_ecs_service" "service" {
  name            = "lucas-service"
  cluster         = aws_ecs_cluster.cluster.id
  task_definition = aws_ecs_task_definition.task.arn
  desired_count   = 1
 
  load_balancer {
    target_group_arn = aws_lb_target_group.target_group.arn
    container_name   = "lucas-container"
    container_port   = 80
  }
  launch_type = "EC2"
  depends_on  = [aws_lb_listener.listener]
}

