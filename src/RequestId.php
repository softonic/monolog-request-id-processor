<?php
declare(strict_types=1);

namespace Softonic\Monolog\Processors;

use Monolog\Processor\ProcessorInterface;

class RequestId implements ProcessorInterface
{
    private string $xRequestId;

    public function __construct(string $xRequestId)
    {
        $this->xRequestId = $xRequestId;
    }

    public function __invoke(array $record): array
    {
        $record['extra']['x-request-id'] = $this->xRequestId;

        return $record;
    }
}
