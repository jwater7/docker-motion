# docker-motion
Implements [the Motion project](https://motion-project.github.io/) in a docker container.  Motion is a software motion detector that monitors the video signal from one or more cameras and is able to detect if a significant part of the picture has changed.  It is developed in the [Motion-Project at GitHub](https://github.com/Motion-Project/motion)

## Setup
See the [Motion Guide](http://htmlpreview.github.io/?https://github.com/Motion-Project/motion/blob/master/motion_guide.html) for information about setting up the motion config file.

## Usage

This container uses docker volumes to set up motion and control motion's behavior.

### Configuration:
| Volume               | Description |
| -------------------- | ----------- |
| /etc/motion          | This is the default configuration directory for motion.conf |

### Command Line
You can test it out like this:
~~~
sudo docker run --rm \
 -v '/path/to/localconfig:/etc/motion' \
 -it jwater7/motion
~~~

or run it in daemon mode:
~~~
sudo docker run -d --name=my-motion --restart=always \
 -v '/path/to/localconfig:/etc/motion' \
 jwater7/motion
~~~

### docker-compose
A sample docker-compose:
~~~
  my-motion:
    image: jwater7/motion
    container_name: my-motion
    volumes:
      - "/path/to/localconfig:/etc/motion"
    restart: always
~~~

