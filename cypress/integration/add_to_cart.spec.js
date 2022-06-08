describe("Basic functionality of Cart", () => {
  beforeEach(() => {
    cy.visit("/");
  });

  it("Validates that an item has been added to cart after add to cart button has been clicked", () => {

    cy.get("li.nav-item.end-0").should("include.text", "My Cart (0)");
    cy.get('.button_to > .btn').first().click({ force: true });
    cy.get("li.nav-item.end-0").should("include.text", "My Cart (1)");

  });
});