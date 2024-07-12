import 'dart:io';

void main(){
    print("Enter the command to be processed");
    while(true){
    String cmd = stdin.readLineSync()!;
    switch (cmd){
        case "ls":ls();
        break;
        case "pwd":pwd();
        break;
        case "touch":touch();
        break;
        case "mkdir":mkdir();
        break;
        case "rm":rm();
        break;
        case "cd":cd();
        break;
        case "mv":mv
        case "exit": quit();
        break;
        default:print("Invalid command! Check your command");

    }
    }

}
    void ls(){
        final cmd= new Directory("./");
        cmd.listSync().forEach((e) {
            print(e);
        });
    }
    void pwd(){
        print(Directory.current.path);
        }
    void touch(){
        print("Enter the file name");
        String fileName = stdin.readLineSync()!;
        File file = new File(fileName);
        file.createSync();
        }
    void mkdir(){
        print("Enter the directory name");
        String dirName = stdin.readLineSync()!;
        Directory directory = new Directory(dirName);
        directory.createSync();
        }
    void rm(){
        print("Enter the file name");
        String fileName = stdin.readLineSync()!;
        File file = new File(fileName);
        file.deleteSync();
        }
    void cd(){
        print("Enter the directory name");
        String dirName = stdin.readLineSync()!;
        Directory directory = new Directory(dirName);
        Directory.current = directory;
        }



    void quit(){
        exit(0);
        }
