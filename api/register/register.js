'use strict';

module.exports.register = async event => {
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        message: process.env.DYNAMODB_USERS,
        input: event,
      },
      null,
      2
    ),
  };
  
};