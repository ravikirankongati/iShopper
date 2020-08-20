const cds = require('@sap/cds')
module.exports = async function (){

    const { Details, RelationshipDetails,countOrders,mainShoppingList,shoppingItems,masterShoppingLisy } = this.entities

    this.on('generateShoppingList', async req => {
        console.log("hello: " + JSON.stringify(req.data))
        return "Hello " + req.data.to
      })

}
