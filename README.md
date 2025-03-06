# Darkly - École 42

## Introduction

Ce projet, développé dans le cadre du cursus de l'École 42, a pour objectif d'initier à la sécurité informatique dans le domaine du web. L'exploration des vulnérabilités courantes permettra de les identifier et de les corriger. La découverte de l'OWASP, le plus grand projet dédié à la sécurité web à ce jour, est également au programme.

## Status:

Validé le 15/04/2024

Note: 125% ✅

## Instalation de la VM

- Download `Darkly_i386.iso` from the 42 intra.
- Virtual Box > NEW
- Name : `Darkly`
- Folder: `......./goinfre/vm_darkly`
- ISO : `......./Darkly_i386.iso`
- Type : `Linux` (automatique)
- Version : `Ubuntu (64-bit)` (automatique)
- Base Memory : `default (2048 MB)`
- Processors : `default (1 CPU)`
- Create a virutal Hard Disk Now: Size: `1.00 GB`

- Settings > Network > Adapter 1 > Attached to: `Bridged Adapter`
- Start

## Par où commencer

- Explorer TOUTES les pages et suivre TOUS le liens.

- Sur chaque page, regarder le code source (ctrl+U).

  - Ne pas faire `inspecter` (F12), car les commentaires sont masqués et le `view-source` est plus lisible.

- Si l'adresse d'une page contient un paramètre (en plus de `page=`), essayer de modifier ce paramètre.

  ex: `http://{IP}/?page=media&src=nsa`

- Essayer de trouver des pages, des dossiers ou fichiers cachés communs à beaucoup de sites (page admin, robot.txt, etc/passwd)

- Regarder les cookies.

- Regarder si la validation des formulaires ne se fait que sur le front (en modifiant le code des inputs ou avec curl).

- On peut se dire qu'il y aura surement un peu d'injection SQL, du XSS et comme on peut uploader une image, on va essayer d'envoyer autre chose.

- J'aurais dû le mettre en 1er: Taper `OWASP` dans un moteur de recherche !
