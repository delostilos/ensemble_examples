function log(message) {
    model.appView.log(message)
}
// set the surrogate for each entity
for each(entity in model.entitySet.toArray()){
    entity.createSurrogateKey = true
    log("Surrogate key set for entity: " + entity);
}
// set the relations to use the surrogate key
for each(relation in model.relationSet.toArray()) {
    relation.useSurrogateKey = true
    log("Use surrogate key set for relation: " + relation);
}
