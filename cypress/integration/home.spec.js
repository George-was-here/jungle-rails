describe('Home', () => {
  it('Visits home page, running server', () => {
    cy.visit('/');
  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
});