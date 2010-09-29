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
package de.flashforum.ffk10.beautiful.architectures.services;

import de.flashforum.ffk10.beautiful.architectures.domain.Greeting;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GreetingServiceImpl implements GreetingService
{

    public Greeting getMessage() {
        Greeting greeting = new Greeting();
        greeting.setDate(new Date());
        greeting.setId(0);
        greeting.setMessage("Your Flex - BlazeDS connection works!");

        return greeting;
    }

    public List<Greeting> getManyGreetings() {
        List<Greeting> list = new ArrayList<Greeting>();
        Greeting greeting = new Greeting();
        greeting.setDate(new Date());
        greeting.setId(1);
        greeting.setMessage("1. Your Flex <-> BlazeDS connection works!");
        list.add(greeting);

        greeting = new Greeting();
        greeting.setDate(new Date());
        greeting.setId(2);
        greeting.setMessage("2. Your Flex <-> BlazeDS connection works!");
        list.add(greeting);

        greeting = new Greeting();
        greeting.setDate(new Date());
        greeting.setId(3);
        greeting.setMessage("3. Your Flex <-> BlazeDS connection works!");
        list.add(greeting);

        return list;  //To change body of implemented methods use File | Settings | File Templates.
    }
}