OBJDIR = obj
BINDIR = bin
SRCDIR = $(wildcard )

# Mark this $(BINDIR)/exe is always out of date
.PHONY: $(BINDIR)/exe

# Only compile if $(BINDIR)/exe is out of date
#all : $(BINDIR)/exe


# Target $(BINDIR)/exe needs : $(OBJDIR)/main.o $(BINDIR)/
$(BINDIR)/exe : $(OBJDIR)/main.o $(BINDIR)
	# gcc -o $(BINDIR)/exe $(OBJDIR)/main.o
	gcc -o $@ $<


# To create $(BINDIR) : mkdir $(BINDIR)
$(BINDIR) : 
	$(shell mkdir $(BINDIR))


# Target $(OBJDIR)/main.o needs : $(CURDIR)/a.c $(CURDIR)/a.h $(OBJDIR)
$(OBJDIR)/main.o : $(CURDIR)/a.c $(CURDIR)/a.h $(OBJDIR)
	# gcc -c $(CURDIR)/a.c $(CURDIR)/a.h $(OBJDIR)/ -o $(OBJDIR)/main.o
	gcc -c $< -o $@

# To create $(OBJDIR) : mkdir $(OBJDIR)
$(OBJDIR) :
	$(shell mkdir $(OBJDIR))

