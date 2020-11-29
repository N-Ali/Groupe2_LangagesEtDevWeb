class dataStudent {
    constructor(params) {
        var me = this;
        this.cont = params.cont ? params.cont : d3.select('body');
        this.apiUrl = params.apiUrl ? params.apiUrl : false;
        this.waitUrl = params.waitUrl ? params.waitUrl : false;
        this.data = params.data ? params.data : {}; 
        this.idVocab = 0;
        var vocab, tables, classes, properties, items=[], omekaQuery=[],divWait
        , propsForOmekaType = {
            'o:ResourceClass':['@id','o:id','o:label','o:term']
            ,'o:Property':['@id','o:id','o:label','o:term']
            ,'o:Item':['@id','o:id','o:title','o:resource_class','properties']
        };

        function createItems(data) {

            if (data[0].length > 1) {
                // Dans le cas d'un array contenant plusieurs item
                var dataItems = data[0];
            } else {
                // Dans le cas d'un item unique
                var dataItems = data;
            }

            var cards = d3.select(me.cont)
                .attr("class", "container justify-content-around")
                .selectAll("div")
                .data(dataItems)
                .enter()
                .append("div")
                .attr("class","card w-25 m-3 d-inline-block text-center border-success");

            var cardHeader = cards.append("div")
                .attr("class", "card-header bg-dark text-white")
                .html(d => {
                    return d["o:title"];
                });
            var cardBody = cards.append("div")
                .attr("class", "card-body p-0");
            cardBody.append("h5")
                .attr("class", "card-text text-center bg-success py-4 my-0")
                .html(d => {
                    return d["foaf:firstName"][0]["@value"] + " " + d["foaf:name"][0]["@value"];
                });

            cardBody.append("p")
                .attr("class", "border border-secondary py-0 my-0")
                .html(d => {
                    return d["etud:Studentstudent_class"][0]["display_title"];
                });

            cardBody.append("p")
            .attr("class", "border border-secondary py-0 my-0")
            .html(d => {
                    return d["etud:Studentstudent_number"][0]["@value"];
                });

            cardBody.append("p")
                .attr("class", "border border-secondary py-0 my-0")
                .html(d => {
                    return d["etud:Studentemail"][0]["@value"];
                });

            cardBody.append("div")
                .attr("class", "border border-secondary py-0 my-0")
                .each(function(d){ // each() pour accéder aux valeurs d'un array de array
                    d3.select(this).selectAll("p")
                        .data(d["etud:Studentnetwork"])
                        .enter()
                        .append("p")
                        .html(d => {
                            return d["display_title"];
                        })
                });
            
            cardBody.append("div")
                .attr("class", "border border-secondary py-0 my-0")
                .each(function(d){ 
                    d3.select(this).selectAll("p")
                        .data(d["etud:Studentcms"])
                        .enter()
                        .append("p")
                        .html(d => {
                            return d["display_title"];
                        })
                });
            cardBody.append("div")
                .attr("class", "border border-secondary py-0 my-0")
                .each(function(d){ 
                    d3.select(this).selectAll("p")
                        .data(d["etud:Studenttools"])
                        .enter()
                        .append("p")
                        .html(d => {
                            return d["display_title"];
                        })
                });
        }

        this.getData = function(data){
            d3.queue()
            .defer(d3.json, me.apiUrl)
            .awaitAll(function(error, results) {
                if (error) throw error;
                createItems(results);    
            });
        }

    }
}