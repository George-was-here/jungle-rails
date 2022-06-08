describe('Home', () => {
  it('Visits home page, running server', () => {
    cy.visit('/');

  });
});

// it("Verify the total amount in cart after clicking add to cart button", () => {
//   cy.get("li.nav-item.end-0").should("include.text", "\n           \n          My Cart (0) \n        ");

//   button_to add_item_cart_path(product_id: product.id)

//   it("should navigate to the first item and click on it", () => {

//     cy.get('article > a')
//       .first()
//       .click();
//   });