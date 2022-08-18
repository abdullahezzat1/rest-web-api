<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  @include('style')
  <title>Demo REST API</title>
</head>
<body>
  <div class="container">
    <br>
    <h1>Welcome to Demo REST API</h1>
    <br><br>
    <h2>Usage</h2>
    <ul>

      <br>
      <li>
        <h4>Root URL</h4>
      </li>
      <p><code>{{env('APP_URL')}}/api</code></p>
      <li>
        <h4>Endpoints</h4>
      </li>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th scope="col">Method</th>
            <th scope="col">Endpoint</th>
            <th scope="col">Query Parameters</th>
            <th scope="col">Description</th>
          </tr>
        </thead>
        <tr>
          <th rowspan="3">GET</th>
          <td rowspan="3"><code>/agents</code></td>
          <td><code>working_area</code></td>
          <td>Optional</td>
        </tr>
        <tr>
          <td><code>from</code></td>
          <td>Default value is 1</td>
        </tr>
        <tr>
          <td><code>to</code></td>
          <td>Default value is 10</td>
        </tr>
        <tr>
          <th rowspan="3">GET</th>
          <td rowspan="3"><code>/companies</code></td>
          <td><code>city</code></td>
          <td>Optional</td>
        </tr>
        <tr>
          <td><code>from</code></td>
          <td>Default value is 1</td>
        </tr>
        <tr>
          <td><code>to</code></td>
          <td>Default value is 10</td>
        </tr>
        <tr>
          <th rowspan="3">GET</th>

          <td rowspan="3"><code>/customers</code></td>

          <td><code>country</code></td>
          <td>Optional</td>
        </tr>
        <tr>
          <td><code>from</code></td>
          <td>Default value is 1</td>
        </tr>
        <tr>
          <td><code>to</code></td>
          <td>Default value is 10</td>
        </tr>
        <tr>
          <th>GET</th>
          <td><code>/agents/{agent_id}</code></td>
          <td><code>-</code></td>
          <td>Example: <code>/agents/1</code></td>

        </tr>
        <tr>
          <th>GET</th>
          <td><code>/companies/{company_id}</code></td>
          <td><code>-</code></td>
          <td>Example: <code>/companies/2</code></td>

        </tr>
        <tr>
          <th>GET</th>
          <td><code>/customers/{customer_id}</code></td>
          <td><code>-</code></td>
          <td>Example: <code>/customers/3</code></td>

        </tr>
        <tr>
          <th rowspan="5">POST</th>
          <td rowspan="5"><code>/agent</code></td>
          <td><code>name</code></td>
          <td rowspan="5">All parameters are required <br>
            and must be sent as the request body <br>
            in the format of a query string.<br>
            Example of body: <br>
            <code>
              name=Samuel&working-area=Cairo<br>
              &commission=0.17&phone=325-32586945&country=Egypt
            </code>
          </td>
        </tr>
        <tr>
          <td><code>working_area</code></td>
        </tr>
        <tr>
          <td><code>commission</code></td>
        </tr>
        <tr>
          <td><code>phone</code></td>
        </tr>
        <tr>
          <td><code>country</code></td>
        </tr>
        <tr>
          <th rowspan="2">POST</th>
          <td rowspan="2"><code>/company</code></td>
          <td><code>name</code></td>
          <td rowspan="2">All parameters are required <br>
            and must be sent as the request body <br>
            in the format of a query string.<br>
            Example of body: <br>
            <code>
              name=Vortex&city=Munich
            </code>
          </td>

        </tr>
        <tr>
          <td><code>city</code></td>
        </tr>
        <tr>
          <th rowspan="6">PUT</th>
          <td rowspan="6"><code>/agent</code></td>
          <td><code>id</code></td>
          <td rowspan="6">
            <code>id</code> is required <br>
            and at least one more parameter.<br>
            Example of body: <br>
            <code>
              id=12&name=John&working-area=Cairo&commission=0.17<br>
              &phone=325-32586945&country=Egypt
            </code>
          </td>
        </tr>
        <tr>
          <td><code>name</code></td>
        </tr>
        <tr>
          <td><code>working_area</code></td>
        </tr>
        <tr>
          <td><code>commission</code></td>
        </tr>
        <tr>
          <td><code>phone</code></td>
        </tr>
        <tr>
          <td><code>country</code></td>
        </tr>
        <tr>
          <th rowspan="3">PUT</th>

          <td rowspan="3"><code>/company</code></td>

          <td><code>id</code></td>
          <td rowspan="3">
            <code>id</code> is required <br>
            and at least one more parameter.<br>
            Example of body: <br>
            <code>
              ?id=16&name=Vortex&city=Munich
            </code>

          </td>
        </tr>
        <tr>
          <td><code>name</code></td>
        </tr>
        <tr>
          <td><code>city</code></td>
        </tr>
        <tr>
          <th>DELETE</th>
          <td><code>/agent</code></td>
          <td><code>id</code></td>
          <td><code>id</code> is required</td>
        </tr>
        <tr>
          <th>DELETE</th>
          <td><code>/company</code></td>
          <td><code>id</code></td>
          <td><code>id</code> is required</td>
        </tr>
      </table>
    </ul>



  </div>
  @include('scripts')
</body>
</html>
