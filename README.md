# Mireb Commercial B2B (Flutter)

Application Flutter minimaliste pour catalogue et annonces B2B.

## Démarrer en local

Prérequis: Flutter 3.22+ installé.

```bash
flutter pub get
flutter run -d chrome   # ou -d emulator-5554 / -d linux / -d web-server
```

## Structure

- `lib/main.dart` point d'entrée
- `lib/screens/` écrans: accueil, produit, annonce
- `pubspec.yaml` dépendances

## CI/CD

- Build + tests + analyse à chaque push sur `main`
- Génère un APK (artifact) et un build Web
- Déploie le Web sur GitHub Pages

Activer Pages: Settings > Pages > Source: GitHub Actions.

## Routes

- `/` Accueil
- `/product` Détails produit
- `/ads` Publier annonce
