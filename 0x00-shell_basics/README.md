**Basic shell scripts codes**
* **_0-current_working_directory_** :     prints the absolute path name of the current working directory.
* **_1-listit_** :                        Display the contents list of your current directory.
* **_2-bring_me_home_** :                 changes the working directory to the user’s home directory.
* **_3-listfiles_** :                     Display current directory contents in a long format
* **_4-listmorefiles_** :                 Display current directory contents, including hidden files (starting with .). Use the long format.
* **_5-listfilesdigitonly_** :            Display current directory contents.Long format , with user and group IDs displayed numerically , And hidden files (starting                                               with .)
* **_6-firstdirectory_** :                creates a directory named my_first_directory in the /tmp/ directory.
* **_7-movethatfile_** :                  Move the file betty from /tmp/ to /tmp/my_first_directory.
* **_8-firstdelete_** :                   Delete the file betty.
* **_9-firstdirdeletion_** :              Delete the directory my_first_directory that is in the /tmp directory.
* **_10-back_** :                         changes the working directory to the previous one.
* **_11-lists_** :                        lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory                                             and the parent of the working directory and the /boot directory (in this order), in long format.
* **_12-file_type_** :                    prints the type of the file named iamafile. The file iamafile will be in the /tmp directory when we will run your script.
* **_13-symbolic_link_** :                Create a symbolic link to /bin/ls, named __ls__. The symbolic link should be created in the current working directory.
* **_14-copy_html_** :                    script that copies all the HTML files from the current working directory to the parent of the working directory,
                                          but onlycopy files that did not exist in the parent of the working directory or were newer than the versions in the parent of                                             the working directory.
* **_100-lets_move_** :                   moves all files beginning with an uppercase letter to the directory /tmp/u.
* **_101-clean_emacs_** :                 deletes all files in the current working directory that end with the character ~.
* **_102-tree_** :                        creates the directories welcome/, welcome/to/ and welcome/to/school in the current directory.
* **_103-commas_** :                      a command that lists all the files and directories of the current directory, separated by commas (,).
                                          Directory names should end with a slash (/)
                                          Files and directories starting with a dot (.) should be listed
                                          The listing should be alpha ordered, except for the directories . and .. which should be listed at the very beginning
                                          Only digits and letters are used to sort; Digits should come first
                                          The listing ends with a new line
* **_school.mgc_** :                      a magic file school.mgc that can be used with the command file to detect School data files. School data files always contain                                             the string SCHOOL at offset 0.                                   
