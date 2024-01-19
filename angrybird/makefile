# $(C_Compiler) = sdcc

OBJ_DIR=obj
OBJ_PATH=./obj/
SRC_PATH_FROM_OBJ=./src
INC_PATH_FROM_OBJ=./inc

OUTPUT_FLAG=-o ./obj/
C_FLAG=-I $(INC_PATH_FROM_OBJ)

CC:=sdcc
ixh2hex:=packihx
hex_file:=main.hex
ihx_file:=main.ihx
main_rel:=main.rel

# Search all .c file except for main.c
cur_path:=${wildcard $(SRC_PATH_FROM_OBJ)/*.c}
cur_src:=${notdir $(cur_path)}
cur_obj:=${patsubst %.c, %.rel, $(cur_src)}
final_rel:=${filter-out $(main_rel), $(cur_obj)} 
inc_path:=${wildcard $(INC_PATH_FROM_OBJ)/*.h}

# mkdir $(OBJ_DIR)
ifneq ($(OBJ_DIR), $(wildcard $(OBJ_DIR)))
	SHELL_HACK := $(shell mkdir $(OBJ_DIR))
endif 	

# File Search Path
vpath %.rel $(OBJ_DIR)
vpath %.ihx $(OBJ_DIR)
vpath %.c $(SRC_PATH_FROM_OBJ)

# Target

# packihx ./obj/main.ihx > ./obj/main.hex
# cp ./obj/main.hex .
all:$(ihx_file)
	$(ixh2hex) $(OBJ_PATH)$(ihx_file) > $(OBJ_PATH)$(hex_file)
	@cp $(OBJ_PATH)$(hex_file) . 

# cd ./obj && sdcc main.c *.c
$(ihx_file):$(cur_obj)
	cd $(OBJ_PATH) && $(CC) $(main_rel) $(final_rel) 

# sdcc -c ./src/*.c	-I ./inc -o ./obj/
%.rel: %.c $(inc_path)
	$(CC) -c $(SRC_PATH_FROM_OBJ)/$*.c $(C_FLAG) $(OUTPUT_FLAG)


.PHONY: clean
clean:
	@rm -rf $(OBJ_PATH)
	@rm -f $(hex_file)
	@echo remove obj and main.hex
