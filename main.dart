import 'dart:io';
void main() {

 gestionRestaurant();
}



void gestionRestaurant() {
  // Déclaration des plats et leurs prix
const Map<String, double> plats = {
  
 'Eru': 1800,
 'Ndole': 1500,
 'Salade': 1400,
 'Boisson': 500,
 };
 // Liste pour stocker les commandes
 List<Map<String, int>> commandes = [];
 bool continuer = true;
 // Boucle pour le menu principal
do {
  afficherMenu(plats);
 print("Entrez votre choix : ");
 String choix = stdin.readLineSync() ?? '';
 switch (choix) {
case '1':
 case '2':
 case '3':
 case '4':
 ajouterCommande(plats, choix, commandes);
 break;
 case '5':
 continuer = false;
 break;
 default:
 print("Choix invalide, veuillez réessayer.");
 }
 } while (continuer);
 // Affichage du récapitulatif des commandes
 afficherRecap(commandes, plats);
 }
void afficherMenu( Map<String, double> plats) {
 print("\n=== Menu de Restaurant ===");
 int i = 1;
 plats.forEach((plat, prix) {
 print("$i. $plat (\$$prix)");
 i++;
 });
 print("5. Terminer la commande");
}
void ajouterCommande(Map<String, double> plats, String choix,
List<Map<String, int>> commandes) {

 String platChoisi;
 switch (choix) {
 case '1':
 platChoisi = 'Eru';
 break;
 case '2':
 platChoisi = 'Ndole';
 break;
 case '3':
 platChoisi = 'Salade';
 break;
 case '4':
 platChoisi = 'Boisson';
 break;
 default:
 platChoisi = '';
 }
 print("Combien de $platChoisi voulez-vous commander ? ");
 int quantite = int.parse(stdin.readLineSync() ?? '0');
 commandes.add({platChoisi: quantite});
 print("$quantite $platChoisi ajouté(s) à la commande.");
}
void afficherRecap(List<Map<String, int>> commandes, Map<String, double>
plats) {
  double total = 0.0;
 print("\n=== Récapitulatif des Commandes ===");
 for (var commande in commandes) {
 commande.forEach((plat, quantite) {
 double prix = plats[plat]! * quantite;
 total += prix;
 print("$quantite x $plat - ${prix.toStringAsFixed(2)} FCFA");
 });
 }
 print("Total à payer : ${total.toStringAsFixed(2)} FCFA");
 print("Merci pour votre commande");
 /// Affiche le menu des plats disponibles
void afficherMenu(Map<String, double> plats) {
 print("\n=== Menu de Restaurant ===");
 int i = 1;
 plats.forEach((plat, prix) {
 print("$i. $plat ($prix)FCFA");
 i++;
});
print("5. Terminer la commande");
}
/// Ajoute une commande à la liste des commandes.
void ajouterCommande(Map<String, double> plats, String choix,
List<Map<String, int>> commandes) {
 String platChoisi;
 switch (choix) {
 case '1':
 platChoisi = 'Eru';
 break;
 case '2':
 platChoisi = 'Ndole';
 break;
 case '3':
 platChoisi = 'Salade';
 break;
 case '4':
 platChoisi = 'Boisson';
 break;
 default:
 platChoisi = '';
 }
 print("Combien de $platChoisi voulez-vous commander ? ");
 int quantite = int.parse(stdin.readLineSync() ?? '0');
 commandes.add({platChoisi: quantite});
 print("$quantite $platChoisi ajouté(s) à la commande.");
}
/// Affiche le récapitulatif des commandes et calcule le total à payer.
void afficherRecap(List<Map<String, int>> commandes, Map<String, double>
plats) {
 double total = 0.0;
 print("\n=== Récapitulatif des Commandes ===");
 for (var commande in commandes) {
 commande.forEach((plat, quantite) {
 double prix = plats[plat]! * quantite;
 total += prix;
 print("$quantite x $plat - ${prix.toStringAsFixed(2)} FCFA");
 });
 }
 print("Total à payer : ${total.toStringAsFixed(2)} FCFA");
 print("Merci pour votre commande !");
}
}



