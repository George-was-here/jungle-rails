describe("Basic functionality of Jungle", () => {
  beforeEach(() => {
    cy.visit("/");
  });

  it("should navigate to a product", () => {

    cy.get('article > a').click({ multiple: true });
  });

  it("should navigate to the first item and click on it", () => {

    cy.get('article > a')
      .first()
      .click();
      
  });
});