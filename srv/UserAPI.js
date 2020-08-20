const cds = require('@sap/cds')
module.exports = async function (){

    const { Details, RelationshipDetails,countOrders } = this.entities

    this.on('countOrders', async req => {
        console.log("hello: " + JSON.stringify(req.data))
        return "Hello " + req.data.to
      })

}
