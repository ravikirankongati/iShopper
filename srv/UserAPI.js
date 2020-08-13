module.exports = (srv) => {

    const { Details, RelationshipDetails } = srv.entities

    srv.on('hello', req => {
        console.log("hello: " + JSON.stringify(req.data))
        return "Hello " + req.data.to
      })

}
