NAME = scop

SRCS = SRCS/main.cpp\
		SRCS/winApp.cpp\

OBJS = $(SRCS:.cpp=.o)

CFLAGS = 

LDFLAGS = -Iinclude -Llib -lglfw -lGLEW -lGL -lX11 -lpthread -lXrandr -lXi -ldl -D GLEW_STATIC

all: 		$(NAME)

$(NAME):	$(OBJS)
		g++ $(CFLAGS) -o $(NAME) $(SRCS) $(LDFLAGS)

test: 		$(NAME)
		./$(NAME)

clean:
		rm -f $(OBJS)

fclean:		clean
		rm -f shaders/frag.spv
		rm -f shaders/vert.spv
		rm -f $(NAME)

re:		fclean all

.PHONY: all test clean fclean re