# Create Resource group Block 
module "Mrg" {
  source = "../../Modules/Resource_Group"
  rgs    = var.rg
}


# Create Resource ACR 

module "acr" {
  source = "../../Modules/ACR"
  jioacr = var.acr

}


