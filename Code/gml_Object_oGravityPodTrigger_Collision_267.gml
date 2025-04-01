if (other.state == 11 || other.state == 10 || other.state == 23 || other.state == 24 || other.state == 27)
{
    with (other.id)
        event_user(1)
    instance_destroy()
}
