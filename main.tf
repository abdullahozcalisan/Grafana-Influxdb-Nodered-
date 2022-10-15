module "image" {
  source     = "./image"
  for_each   = local.deployment
  app_img_in = each.value.image
}


module "container" {
  source     = "./container"
  for_each   = local.deployment
  count_in   = each.value.cont_count
  name_in    = each.key
  image_in   = each.value.image
  int_in     = each.value.int
  ext_in     = each.value.ext
  volumes_in = each.value.volumes
}
