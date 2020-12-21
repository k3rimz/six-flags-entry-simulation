import org.omnetpp.queueing.Classifier;
import org.omnetpp.queueing.Fork;
import org.omnetpp.queueing.PassiveQueue;
import org.omnetpp.queueing.Queue;
import org.omnetpp.queueing.Router;
import org.omnetpp.queueing.Server;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;
import org.omnetpp.queueing.SourceOnce;



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
        passiveQueue: PassiveQueue {
            @display("p=215,144;is=l");
        }
        server: Server {
            @display("p=215,48;is=l");
        }
        router1: Router {
            @display("p=668,240");
        }
        sink: Sink {
            @display("p=1094,277;is=l");
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
        passiveQueue1: PassiveQueue {
            @display("p=464,159");
        }
        passiveQueue2: PassiveQueue {
            @display("p=464,248");
        }
        passiveQueue4: PassiveQueue {
            @display("p=464,340");
        }
        server1: Server {
            @display("p=553,152");
        }
        server2: Server {
            @display("p=556,247");
        }
        server3: Server {
            @display("p=553,340");
        }
        passiveQueue5: PassiveQueue {
            @display("p=733,175");
        }
        passiveQueue6: PassiveQueue {
            @display("p=733,258");
        }
        passiveQueue7: PassiveQueue {
            @display("p=733,340");
        }
        passiveQueue8: PassiveQueue {
            @display("p=733,419");
        }
        passiveQueue9: PassiveQueue {
            @display("p=733,494");
        }
        classifier1: Classifier {
            @display("p=996,277");
        }
        source: Source {
            @display("p=74,273;is=l");
        }
        router: Router {
            @display("p=338,255");
        }
        classifier: Classifier {
            @display("p=207,263;is=l");
        }
    connections:
        passiveQueue.out++ --> server.in++;
        router1.out++ --> passiveQueue5.in++;
        passiveQueue5.out++ --> server4.in++;
        router1.out++ --> passiveQueue6.in++;
        passiveQueue6.out++ --> server5.in++;
        router1.out++ --> passiveQueue7.in++;
        passiveQueue7.out++ --> server6.in++;
        router1.out++ --> passiveQueue8.in++;
        passiveQueue8.out++ --> server7.in++;
        router1.out++ --> passiveQueue9.in++;
        passiveQueue9.out++ --> server8.in++;
        passiveQueue1.out++ --> server1.in++;
        server1.out --> router1.in++;
        passiveQueue2.out++ --> server2.in++;
        server2.out --> router1.in++;
        passiveQueue4.out++ --> server3.in++;
        server3.out --> router1.in++;
        classifier1.out++ --> sink.in++;
        server4.out --> classifier1.in++;
        server5.out --> classifier1.in++;
        server6.out --> classifier1.in++;
        server7.out --> classifier1.in++;
        server8.out --> classifier1.in++;
        classifier1.rest --> passiveQueue5.in++;
        server.out --> router.in++;
        router.out++ --> passiveQueue1.in++;
        router.out++ --> passiveQueue2.in++;
        router.out++ --> passiveQueue4.in++;
        source.out --> classifier.in++;
        classifier.rest --> passiveQueue.in++;
        classifier.out++ --> router.in++;
}
