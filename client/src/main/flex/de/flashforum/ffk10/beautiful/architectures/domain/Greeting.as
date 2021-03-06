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
package de.flashforum.ffk10.beautiful.architectures.domain
{

    [RemoteClass(alias="de.flashforum.ffk10.beautiful.architectures.domain.Greeting")]
    public class Greeting
    {

        //---------------------------------------------------------------------
        //
        //          Properties
        //
        //---------------------------------------------------------------------

        //-----------------------------
        //          date
        //-----------------------------

        private var _date:String;

        public function get date():String
        {
            return _date;
        }

        public function set date(value:String):void
        {
            _date = value;
        }

        //-----------------------------
        //          id
        //-----------------------------

        private var _id:int;

        public function get id():int
        {
            return _id;
        }

        public function set id(value:int):void
        {
            _id = value;
        }

        //-----------------------------
        //          message
        //-----------------------------

        private var _message:String;

        public function get message():String
        {
            return _message;
        }

        public function set message(value:String):void
        {
            _message = value;
        }

        //---------------------------------------------------------------------
        //
        //          Methods
        //
        //---------------------------------------------------------------------

        public function Greeting()
        {
            super();
        }
    }
}
