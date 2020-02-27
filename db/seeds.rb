# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

customers = [
    {
    name: "Balfour Beatty Construction",
    royalty: 0.0,
    wholesale_margin: 0.0
},
    {
    name: "Brown University",
    royalty: 0.1,
    wholesale_margin: 0.5
},
    {
    name: "California State University - Long Beach" ,
    royalty: 0.0,
    wholesale_margin: 0.5
},
    {
    name: "Carmel Country Club",
    royalty: 0.0,
    wholesale_margin: 0.3
},
    {
    name: "Charlotte Country Day School",
    royalty: 0.0,
    wholesale_margin: 0.3
},
    {
    name: "Cornell University",
    royalty: 0.0,
    wholesale_margin: 0.5
},
    {
    name: "Credit Suisse",
    royalty: 0.0,
    wholesale_margin: 0.0
},
    {
    name: "Davidson College", 
    royalty: 0.1,
    wholesale_margin: 0.4
},
    {
    name: "Duke University",
    royalty: 0.0,
    wholesale_margin: 0.5
},
    {
    name: "Event Customer",
    royalty: 0.0,
    wholesale_margin: 0.0
},
    {
    name: "Hampden Sydney University",
    royalty: 0.0,
    wholesale_margin: 0.5
},
    {
    name: "Miami University - Ohio",
    royalty: 0.12,
    wholesale_margin: 0.40
},
    {
    name: "Auburn University",
    royalty: 0.12,
    wholesale_margin: 0.4
},
    {
    name: "Online Customer",
    royalty: 0.0,
    wholesale_margin: 0.0
},
    {
    name: "Texas A&M University",
    royalty: 0.12,
    wholesale_margin: 0.40
},
    {
    name: "University of Virginia - Courts & Commerce",
    royalty: 0.12,
    wholesale_margin: 0.40
},
    {
    name: "University of Virginia - Darden Exchange",
    royalty: 0.12,
    wholesale_margin: 0.40
},
    {
    name: "Volshop",
    royalty: 0.0,
    wholesale_margin: 0.5
},
    {
    name: "Washington and Lee University",
    royalty: 0.08,
    wholesale_margin: 0.4
},
    {
    name: "Xavier University",
    royalty: 0.12,
    wholesale_margin: 0.4
},
    {
    name: "Yale - The Yale Club",
    royalty: 0.1,
    wholesale_margin: 0.4
},
    {
    name: "Yale - Retail One Group",
    royalty: 0.1,
    wholesale_margin: 0.4
},
{
    name: "Wyoming University",
    royalty: 0.085,
    wholesale_margin: 0.4
},
{
    name: "University of Oregon",
    royalty: 0.23,
    wholesale_margin: 0.4
}
]

customers.each do |customer|
    Customer.create(customer)
end