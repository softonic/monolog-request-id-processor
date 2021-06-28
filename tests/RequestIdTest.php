<?php

declare(strict_types=1);

namespace Softonic\Monolog\Processors;

use PHPUnit\Framework\TestCase;

class RequestIdTest extends TestCase
{
    /**
     * @test
     */
    public function whenRecordIsProcessedItShouldAddTheXRequestId()
    {
        $processor = new RequestId(':x-request-id');

        $record = [];
        $record = $processor($record);

        self::assertSame(':x-request-id', $record['extra']['x-request-id']);
    }
}
