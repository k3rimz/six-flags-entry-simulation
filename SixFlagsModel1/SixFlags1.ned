import org.omnetpp.queueing.Classifier;
import org.omnetpp.queueing.Fork;
import org.omnetpp.queueing.PassiveQueue;
import org.omnetpp.queueing.Router;
import org.omnetpp.queueing.Server;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;


//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//
network SixFlags1
{
    @display("bgb=1174,626");
    submodules:
        source: Source {
            @display("p=65,201;is=l");
        }
        classifier: Classifier {
            @display("p=215,240;is=l");
        }
        passiveQueue: PassiveQueue {
            @display("p=215,144;is=l");
        }
        server: Server {
            @display("p=215,48;is=l");
        }
        server1: Server {
            @display("p=554,175");
        }
        server2: Server {
            @display("p=548,249");
        }
        server3: Server {
            @display("p=548,316");
        }
        passiveQueue2: PassiveQueue {
            @display("p=645,249;is=l");
        }
        router: Router {
            @display("p=447,249;is=l");
        }
        router1: Router {
            @display("p=740,277");
        }
        sink: Sink {
            @display("p=1094,277;is=l");
        }
        fork: Fork {
            @display("p=999,223;is=l");
        }
        server4: Server {
            @display("p=808,175");
        }
        server5: Server {
            @display("p=808,258");
        }
        server6: Server {
            @display("p=808,340");
        }
        server7: Server {
            @display("p=809,413");
        }
        server8: Server {
            @display("p=809,494");
        }
        passiveQueue3: PassiveQueue {
            @display("p=906,286");
        }
    connections:
        source.out --> classifier.in++;
        passiveQueue.out++ --> server.in++;
        router.out++ --> server1.in++;
        router.out++ --> server2.in++;
        router.out++ --> server3.in++;
        server3.out --> passiveQueue2.in++;
        server2.out --> passiveQueue2.in++;
        server1.out --> passiveQueue2.in++;
        passiveQueue2.out++ --> router1.in++;
        fork.out++ --> sink.in++;
        router1.out++ --> server4.in++;
        router1.out++ --> server5.in++;
        router1.out++ --> server6.in++;
        router1.out++ --> server7.in++;
        router1.out++ --> server8.in++;
        fork.out++ --> passiveQueue2.in++;
        passiveQueue3.out++ --> fork.in;
        server4.out --> passiveQueue3.in++;
        server5.out --> passiveQueue3.in++;
        server6.out --> passiveQueue3.in++;
        server7.out --> passiveQueue3.in++;
        server8.out --> passiveQueue3.in++;
        classifier.rest --> passiveQueue.in++;
        classifier.out++ --> router.in++;
        server.out --> router.in++;
}
