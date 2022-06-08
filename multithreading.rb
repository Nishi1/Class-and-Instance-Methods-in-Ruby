=begin
Multithreading is a feature in Ruby that allows us to create and work with threads.
A thread is a lightweight process. Using Multithreading in Ruby, we can create several threads, that run in parallel and share process CPU and memory.
Multiple threads can share memory and communicate with each other.
This can significantly speed up your program execution.
Example if you have to parse a large CSV file, you can create 500 worker threads to do it and speed up time.
Or if you have to run background operations in a User Interface program, you can create a background thread to do so.

In Ruby you can create thread as shown below.
=end

Demo of creating a thread in Ruby

def run
    puts "Thread is Running"
end

t1 = Thread.new{run()}
t1.join

Joining a thread
We can use join method on Thread to wait until that thread has finished its execution.
    
def cosmicthread1
    puts "Is your refrigerator running?"
    puts "Then go catch it!"
end

def cosmicthread2
    puts "I art thou, thou art I"
    puts "I = Eye get it?"
end

def cosmicthread3
    puts "Human Knowledge belongs to the World"
    puts "Like Asprin"
end

cthread1 = Thread.new{cosmicthread1()}
cthread2 = Thread.new{cosmicthread2()}
cthread3 = Thread.new{cosmicthread3()}

cthread1.join()
cthread2.join()
cthread3.join()

Output:
Is your refrigerator running?
Then go catch it!
I art thou, thou art I
I = Eye get it?
Human Knowledge belongs to the World
Like Asprin
  

Thread Priority
We can set a priority value to a thread. Very important threads can be assigned a higher priority, so that they can get more CPU time.
Setting priority does not guarantee execution, because it is operating system dependent.
    
def cosmicthread1
    puts Thread.current.priority
    puts "Is your refrigerator running?"
    puts "Then go catch it!"
end

def cosmicthread2
    puts Thread.current.priority
    puts "I art thou, thou art I"
    puts "I = Eye get it?"
end

def cosmicthread3
    puts Thread.current.priority
    puts "Human Knowledge belongs to the World"
    puts "Like Asprin"
end

cthread1 = Thread.new{cosmicthread1()}
cthread2 = Thread.new{cosmicthread2()}
cthread3 = Thread.new{cosmicthread3()}
cthread1.priority = 3
cthread2.priority = -3

cthread1.join
cthread2.join
cthread3.join  
