<?php
namespace Application\Factories;

class IndexControllerFactory
{
    public function __invoke($container)
    {
        return new IndexController($this->get('Db\ApplicationAdapter'));
    }
}
