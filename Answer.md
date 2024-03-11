<h2>1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.</h2>
   <h4>Relationship between “Product” and “Product_Category” entities: In the diagram, the “Product” entity is related to the “Product_Category” entity through a foreign key relationship.
   The “category_id” attribute in the “Product” table is a foreign key that references the primary key “id” of the “Product_Category” table. This means each product is associated with a specific category.</h4>
<h2>2. How could you ensure that each product in the "Product" table has a valid category assigned to it?</h2>
    <h4>Ensuring each product has a valid category: To ensure that each product in the “Product” table has a valid category assigned to it, you can:
      <br>-Make sure that the “category_id” field is set as NOT NULL. This ensures that every product record must have a category id.
      <br> -Implement foreign key constraints between “category_id” in “Product” and “id” in “Product_Category”. 
        <br> This ensures referential integrity, meaning every category id assigned to a product must exist in the Product_Category table.</h4>

