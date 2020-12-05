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

        function GetImage(img){
            let url = new URL(img);
            let urlParam = new URLSearchParams(url.search);
            let id = urlParam.get('id');
            let urlTof = "https://drive.google.com/uc?id="+id;                        
            return urlTof; 
        }

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
                .attr("class","card w-25 m-3 d-inline-block");

            var cardHeader = cards.append("div")
                .attr("class", "card-header bg-dark text-white text-center")
                .html(d => {
                    if(!d["foaf:img"]){
                        return d["o:title"];
                    }

                    else{
                        console.log(GetImage(d["foaf:img"][0]["@id"]));
                        return d["o:title"] + "<img class='profil-img' src='" + GetImage(d["foaf:img"][0]["@id"] + "'>"); 
                    }
                    
                });


            var cardBody = cards.append("div")
                .attr("class", "card-body p-2");

            cardBody.append("p")
                //.attr("class", "card-text text-center bg-success py-4 my-0")
                .html(d => {
                    return "<i class='fa fa-id-card'></i> " + d["foaf:firstName"][0]["@value"] + " " + d["foaf:name"][0]["@value"].toUpperCase()+ " <span class='number'>" + d["etud:Studentstudent_number"][0]["@value"]+ "</span>";
                });

            cardBody.append("p")
                //.attr("class", "border border-secondary py-0 my-0")
                .html(d => {
                    return "<i class='fa fa-envelope'></i> <a href='mailto:" +  d["etud:Studentemail"][0]["@value"] + "'>" + d["etud:Studentemail"][0]["@value"] + "</a>";
                });

            cardBody.append("p")
                //.attr("class", "border border-secondary py-0 my-0")
                .html(d => {
                    return "<i class='fa fa-graduation-cap'></i> " + d["etud:Studentstudent_class"][0]["display_title"];
                });

            cardBody.append("p")
                //.attr("class", "border border-secondary py-0 my-0")
                .html(d => {
                    if(d["etud:Studentgithub"])
                        return "<i class='fa fa-github'></i> <a target='_blank' href='" +  d["etud:Studentgithub"][0]["@id"] + "'>" + d["etud:Studentgithub"][0]["@id"] + "</a>";
                });


           

            cardBody.append("p")
                //.attr("class", "border border-secondary py-0 my-0")
                .html("<i class='fa fa-users'></i> ")
                .each(function(d){ // each() pour accéder aux valeurs d'un array de array
                    d3.select(this).selectAll("span")
                        .data(d["etud:Studentnetwork"])
                        .enter()
                        .append("span")
                        .html(d => {
                            return d["display_title"] + " ";
                        })
                });
            
            cardBody.append("p")
                //.attr("class", "border border-secondary py-0 my-0")
                .html("<i class='fa fa-tasks'></i> ")
                .each(function(d){ 
                    d3.select(this).selectAll("span")
                        .data(d["etud:Studentcms"])
                        .enter()
                        .append("span")
                        .html(d => {
                            return d["display_title"] + " ";
                        })
                });
            cardBody.append("p")
                //.attr("class", "border border-secondary py-0 my-0")
                .html("<i class='fa fa-spinner'></i> ")
                .each(function(d){ 
                    d3.select(this).selectAll("span")
                        .data(d["etud:Studenttools"])
                        .enter()
                        .append("span")
                        .html(d => {
                            return d["display_title"] + " ";
                        })
                });
        }

        this.getData = function(data){
            d3.queue()
            .defer(d3.json, me.apiUrl)
            .awaitAll(function(error, results) {
                if (error) throw error;
                console.log(results);
                createItems(results);    

            });
        }

    }
}