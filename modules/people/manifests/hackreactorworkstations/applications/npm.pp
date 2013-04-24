class people::hackreactorworkstations::applications::npm {

  notify { 'class people::hackreactorworkstations::applications::npm declared': }

  nodejs::module {
    'chai':
      node_version => 'v0.10';

    'coffee-script':
      node_version => 'v0.10';

    'coffeelint':
      node_version => 'v0.10';

    'csslint':
      node_version => 'v0.10';

    'express':
      node_version => 'v0.10';

    'grunt-cli':
      node_version => 'v0.10';

    'grunt-init':
      node_version => 'v0.10';

    'jscover':
      node_version => 'v0.10';

    'jsctags':
      node_version => 'v0.10';

    'jshint':
      node_version => 'v0.10';

    'meteor':
      node_version => 'v0.10';

    'meteorite':
      node_version => 'v0.10';

    'mocha':
      node_version => 'v0.10';

    'mysql':
      node_version => 'v0.10';

    'mustache':
      node_version => 'v0.10';

    'node-inspector':
      node_version => 'v0.10';

    'jasmine-node':
      node_version => 'v0.10';

    'requirejs':
      node_version => 'v0.10';

    'request':
      node_version => 'v0.10';

    'supervisor':
      node_version => 'v0.10';

    'uglify-js':
      node_version => 'v0.10';

    'lodash':
      node_version => 'v0.10';

    'webdriverjs':
      node_version => 'v0.10';
  }

}
