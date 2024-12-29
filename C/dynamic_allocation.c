char* get_user_input(){
    char* user_input;
    size_t size = 64 ;
    size_t used = 0;
    int c;

    user_input = (char *)malloc(size * sizeof(char));

    if(user_input == NULL){
        return NULL;
    }

    while((c = getchar()) != '\n' && c != EOF){

        if(used + 1 >= size){
            size *= 2;
            char* temp = (char *)realloc(user_input, size * sizeof(char));
            if(temp == NULL){
                free(user_input);
                return NULL;
            }
            user_input = temp;
        }
        user_input[used++] = c;
    }

    user_input[used] = '\0';

    return user_input;

}