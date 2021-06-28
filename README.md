Monolog Request Id Processor
====================

[![Latest Version](https://img.shields.io/github/release/softonic/monolog-request-id-processor.svg?style=flat-square)](https://github.com/softonic/monolog-request-id-processor/releases)
[![Software License](https://img.shields.io/badge/license-Apache%202.0-blue.svg?style=flat-square)](LICENSE.md)
[![Build Status](https://img.shields.io/travis/softonic/monolog-request-id-processor/master.svg?style=flat-square)](https://travis-ci.org/softonic/gmonolog-request-id-processor)
[![Total Downloads](https://img.shields.io/packagist/dt/softonic/monolog-request-id-processor.svg?style=flat-square)](https://packagist.org/packages/softonic/monolog-request-id-processor)
[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/softonic/monolog-request-id-processor.svg?style=flat-square)](http://isitmaintained.com/project/softonic/monolog-request-id-processor "Average time to resolve an issue")
[![Percentage of issues still open](http://isitmaintained.com/badge/open/softonic/monolog-request-id-processor.svg?style=flat-square)](http://isitmaintained.com/project/softonic/monolog-request-id-processor "Percentage of issues still open")

Monolog X-Request-ID processor to add traceability to all logs.

Processor based on the official [UidProcessor](https://github.com/Seldaek/monolog/blob/main/src/Monolog/Processor/UidProcessor.php) implementation, but using x-request-id 
instead of `uid`.

Main features
-------------

* Add to the extra logs field the x-request-id provided.

Installation
-------------

You can require the last version of the package using composer
```bash
composer require softonic/monolog-request-id-processor
```

### Configuration

```php
use Monolog\Logger;

$requestId = 'fb703a2f-04ac-470c-bc6b-a4d965a7e404'; // Get x-request-id from any source instead of hardcode it.

$log = new Monolog\Logger('test');
$log->pushProcessor(new \Softonic\Monolog\Processors\RequestId($requestId));
$log->pushHandler(…);

$log->info('Interesting information about the request.');
```

Testing
-------

`softonic/monolog-request-id-processor` has a [PHPUnit](https://phpunit.de) test suite, and a coding style compliance test suite using [PHP CS Fixer](http://cs.sensiolabs.org/).

To run the tests, run the following command from the project folder.

``` bash
$ make tests
```

To open a terminal in the dev environment:
``` bash
$ make debug
```

License
-------

The Apache 2.0 license. Please see [LICENSE](LICENSE) for more information.
