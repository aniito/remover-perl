use Try::Tiny;

sub main()
{
print("

  ___  _____    
 .c/,-Yc     \"~-.  
 l.Y             ^.           
 /\\               _\\_  
i            ___/-   -\\ 
|          /-   -\   o !   
l         ]     o !__./   
 \/ _  _    \\.___./    c~\\  
  X \\/ \\            ___./  
 ( \\ ___.   _..--~~c   ~`-.  
  ` Z,--   /               \\    
    \\__.  (   /       ______)  #43G remover [discord.gg/FyY9Hvm8T8]
      \\   l  /-----~~c /   
       Y   \\          / 
       ||    cx______.^ 
       ||           \\    
       ||            \\
");
sleep(1);
print("\n>>------> Skiddage en cours ...");
}

sub prout()
{
 sleep(0.5);
 print("\n\n>>------> mettez le fichier dans lequel vous indiquez les fichiers à enlever ! : ");
 my $file= <>;
 chomp $file;
 system("clear");
 print("                                
                         ____________________
                        /                    \\
                        !  Attention  à      !
                        !     la  casse !    !
                        \\____________________/
                                 !  !
                                 !  !
                                 L_ !
                                / _)!
                               / /__L
                         _____/ (____)
                                (____)
                         _____  (____)
                              \\_(____)
                                 !  !
                                 !  !
                                 \\__/ 
 ");
 print("pour arrêter faites CTRL + C ");
 print("\n\nvoulez vous vraiment continuer ? : ");
 my $alerte= <>;
 
 sub fileoui() 
 {
 open (HANDLER, "<", $file);
 print("|-----------REMOVED-------------|\n\n");
 while ( <HANDLER> )
 {
  system("sudo rm -rf $_\n");
  print("$_");
 }
 print("|-----------REMOVED-------------|");
 close(HANDLER);
 }; 
 
 
 sub filenon() 
 {
 print("\n\n|-- Erreur ! Le fichier que vous avez indiqué n'es pas trouvable ! --|\n");
 print("je fais donc avec le remv.txt\n");
 print("faites CTRL + C si vous ne voulez pas avec remv.txt ! continuer ? :");
 my $alert2=<>;
 my $file = "remv.txt";
 print("|-----------REMOVED-------------|\n\n");
 open (HANDLER, "<", $file);
 while ( <HANDLER> )
 {
  system("sudo rm -rf $_");
  print("$_");
 }
 print("|-----------REMOVED-------------|\n\n");
 close(HANDLER);
 };
 
 
 
 
 
 if (-e $file)
 {
   #print("le file existe");
   &fileoui;
 }
 else
 {
  #print("le fichier n'existe pas");
  &filenon;
 }
 
}


sub lanceur()
{
 &main;
 &prout;
}

my @wh = `whoami`;
my $rut;
foreach $rut (@wh) {
   chomp $rut;
   ($rut eq "root") ? &lanceur : print("\n\n\n
   Attention Le script est à faire tourner en Super Utilisateur (Root)
           \\
            \\______ Si vous voulez supprimer des fichiers avec des permissions root -- faites un sudo su ou sudo remover.pl avant de lancer le script\n\n\n")
}



