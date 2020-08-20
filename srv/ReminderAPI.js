git 
module.exports = srv => {

    srv.on('READ', 'Details', () => console.log('Details API Called'));
}

// Reference : https://cap.cloud.sap/docs/node.js/api#cds-event-handlers