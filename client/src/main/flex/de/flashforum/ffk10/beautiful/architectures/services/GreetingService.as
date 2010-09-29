/*
 * Copyright 2010 Florian Salihovic
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package de.flashforum.ffk10.beautiful.architectures.services
{

    import flash.events.EventDispatcher;

    import flash.events.IEventDispatcher;

    import mx.messaging.ChannelSet;
    import mx.messaging.channels.AMFChannel;
    import mx.rpc.AbstractOperation;
    import mx.rpc.AsyncToken;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    import mx.rpc.remoting.RemoteObject;

    public class GreetingService extends EventDispatcher implements IGreetingService
    {

        //---------------------------------------------------------------------
        //
        //          Class Constants
        //
        //---------------------------------------------------------------------

        private static const CHANNEL_ID:String = "my-amf";

        private static const DESTINATION:String = "greetingService";

        private static const ENDPOINT_URL:String = "http://localhost:8080/webapp/spring/messagebroker/amf";

        //---------------------------------------------------------------------
        //
        //          Properties
        //
        //---------------------------------------------------------------------

        private var _service:RemoteObject;

        //---------------------------------------------------------------------
        //
        //          Constructor
        //
        //---------------------------------------------------------------------

        public function GreetingService()
        {
            super();
            initialize();
        }

        //---------------------------------------------------------------------
        //
        //          Methods
        //
        //---------------------------------------------------------------------

        public function getMessage():AsyncToken
        {
            const operation:AbstractOperation = _service.getOperation("getMessage");
            operation.addEventListener(FaultEvent.FAULT, getMessageOperation_faultEventHandler);
            operation.addEventListener(ResultEvent.RESULT, getMessageOperation_resultEventHandler);

            return operation.send();
        }

        public function getManyGreetings():AsyncToken
        {
            const operation:AbstractOperation = _service.getOperation("getManyGreetings");
            operation.addEventListener(FaultEvent.FAULT, manyMassagesOperation_faultEventHandler);
            operation.addEventListener(ResultEvent.RESULT, manyMassagesOperation_resultEventHandler);

            return operation.send();
        }

        protected function initialize():void
        {
            var channel:AMFChannel = new AMFChannel(CHANNEL_ID, ENDPOINT_URL);
            var channelSet:ChannelSet = new ChannelSet();
            channelSet.addChannel(channel);

            _service = new RemoteObject();
            _service.destination = DESTINATION;
            _service.channelSet = channelSet;
        }

        //---------------------------------------------------------------------
        //
        //          Event Handler
        //
        //---------------------------------------------------------------------

        private function getMessageOperation_resultEventHandler(event:ResultEvent):void
        {
            IEventDispatcher(event.target).removeEventListener(event.type, arguments.callee);

            dispatchEvent(event.clone());
        }

        private function getMessageOperation_faultEventHandler(event:FaultEvent):void
        {
            IEventDispatcher(event.target).removeEventListener(event.type, arguments.callee);

            dispatchEvent(event.clone());
        }

        private function manyMassagesOperation_resultEventHandler(event:ResultEvent):void
        {
            IEventDispatcher(event.target).removeEventListener(event.type, arguments.callee);

            dispatchEvent(event.clone());
        }

        private function manyMassagesOperation_faultEventHandler(event:FaultEvent):void
        {
            IEventDispatcher(event.target).removeEventListener(event.type, arguments.callee);

            dispatchEvent(event.clone());
        }
    }
}
