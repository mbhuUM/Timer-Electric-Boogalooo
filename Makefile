CC=g++ -g -Wall -std=c++17

# SOURCES=main.cpp pomodoro.cpp timer.cpp

all: PomodoroTimer

# TIMER_OBJS=${SOURCES:.cpp=.o}

# # Generic rules for compiling a source file to an object file
# %.o: %.cpp
# 	${CC} -c $<
# %.o: %.cc
# 	${CC} -c $<

# clean:
# 	rm -f ${TIMER_OBJS} main


DEPS = dependencies/pomodoro.h dependencies/timer.h
OBJ = main.o pomodoro.o timer.o

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

PomodoroTimer: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -f $(OBJ) PomodoroTimer