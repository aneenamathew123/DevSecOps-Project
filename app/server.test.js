const request = require("supertest");
const app = require("./server");

describe("GET /", () => {
  test("should return Hello DevSecOps Project", async () => {
    const response = await request(app).get("/");

    expect(response.statusCode).toBe(200);
    expect(response.text).toBe("My Project 🚀");
  });
});