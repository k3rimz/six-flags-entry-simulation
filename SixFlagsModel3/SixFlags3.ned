import org.omnetpp.queueing.Classifier;
import org.omnetpp.queueing.Fork;
import org.omnetpp.queueing.MyQueue;
import org.omnetpp.queueing.PassiveQueue;
import org.omnetpp.queueing.Queue;
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
network SixFlags3
{
    @display("bgb=1532.8726,815.765");
    submodules:
        source: Source {
            @display("p=55.955,399.04752;is=l");
        }
        classifier: Classifier {
            @display("p=214.985,399.04752;is=l");
        }
        sink: Sink {
            @display("p=1365.0076,290.0825;is=l");
        }
        fork: Fork {
            @display("p=1216.285,315.115;is=l");
        }
        passiveQueue1: PassiveQueue {
            @display("p=1118,417.3");
        }
        router1: Router {
            @display("p=201.5,176.8;is=l");
        }
        myQueue: MyQueue {
            @display("p=349.69998,101.4");
        }
        queue: Queue {
            @display("p=349.69998,217.09999");
        }
        passiveQueue: PassiveQueue {
            @display("p=474.5,399.1");
        }
        server: Server {
            @display("p=642.2,295.1");
        }
        server1: Server {
            @display("p=642.2,404.3");
        }
        server2: Server {
            @display("p=639.6,516.1");
        }
        passiveQueue2: PassiveQueue {
            @display("p=817.7,391.3");
        }
        server3: Server {
            @display("p=936,215.8");
        }
        server4: Server {
            @display("p=936,301.6");
        }
        server5: Server {
            @display("p=934.7,397.8");
        }
        server6: Server {
            @display("p=925.6,501.8");
        }
        server7: Server {
            @display("p=930.8,592.8");
        }
    connections:
        source.out --> classifier.in++;
        fork.out++ --> sink.in++;
        passiveQueue1.out++ --> fork.in;
        fork.out++ --> passiveQueue2.in++;
        server3.out --> passiveQueue1.in++;
        server4.out --> passiveQueue1.in++;
        server5.out --> passiveQueue1.in++;
        server6.out --> passiveQueue1.in++;
        server7.out --> passiveQueue1.in++;
        passiveQueue2.out++ --> server3.in++;
        passiveQueue2.out++ --> server4.in++;
        passiveQueue2.out++ --> server5.in++;
        passiveQueue2.out++ --> server6.in++;
        passiveQueue2.out++ --> server7.in++;
        server.out --> passiveQueue2.in++;
        server1.out --> passiveQueue2.in++;
        server2.out --> passiveQueue2.in++;
        passiveQueue.out++ --> server.in++;
        passiveQueue.out++ --> server1.in++;
        passiveQueue.out++ --> server2.in++;
        router1.out++ --> myQueue.in++;
        router1.out++ --> queue.in++;
        myQueue.out --> passiveQueue.in++;
        queue.out --> passiveQueue.in++;
        classifier.out++ --> router1.in++;
        classifier.out++ --> passiveQueue.in++;
}
