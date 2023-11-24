# ## Ajout d'un fichier DESCRIPTION ----
# rcompendium::add_description()
# ## Ajout d'une licence ----
# rcompendium::add_license(license = "GPL-2")
# ## Ajout de sous-répertoires ----
# rcompendium::add_compendium(compendium = c("data", "analyses", "R", "figures", "outputs"))
targets::tar_config_set(
  store = "outputs/pipeline/",
  script = "analyses/pipeline.R"
)

## Génération de la doc ----
devtools::document()

## Ajout de dépendances ----
rcompendium::add_dependencies(compendium = ".")

## Ajout d'un README ----
# rcompendium::add_readme_rmd(type = "compendium")
# ## Conversion du README.Rmd en README.md ----
# rmarkdown::render("README.Rmd")
# 


## Installation des packages manquants ----
remotes::install_deps(upgrade = "never")

## Chargement des packages et fonctions R ----
devtools::load_all()

targets::tar_make()
targets::tar_visnetwork()



