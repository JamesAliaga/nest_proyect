import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): any {
    return this.manifestJSON();
  }

  async manifestJSON() {
    const axios = require("axios");
    const response = await axios.get(
      "https://jsonplaceholder.typicode.com/posts"
    );

    // console.log(response);

    return response.data;
  }
}