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
network SixFlags2
{
    @display("bgb=1532.8726,815.765");
    submodules:
        source: Source {
            @display("p=55.955,399.04752;is=l");
        }
        classifier: Classifier {
            @display("p=214.985,399.04752;is=l");
        }
        passiveQueue: PassiveQueue {
            @display("p=231.1825,217.93001;is=l");
        }
        server: Server {
            @display("p=231.1825,50.065;is=l");
        }
        router: Router {
            @display("p=443.2225,410.8275;is=l");
        }
        sink: Sink {
            @display("p=1365.0076,290.0825;is=l");
        }
        fork: Fork {
            @display("p=1216.285,315.115;is=l");
        }
        queue: Queue {
            @display("p=684.7125,217.93001");
        }
        queue1: Queue {
            @display("p=684.7125,341.62");
        }
        queue2: Queue {
            @display("p=684.7125,469.7275");
        }
        myQueue: MyQueue {
            @display("p=918.84,160.5025");
        }
        queue3: Queue {
            @display("p=918.84,275.3575");
        }
        queue4: Queue {
            @display("p=918.84,399.04752");
        }
        queue5: Queue {
            @display("p=918.84,565.44");
        }
        myQueue1: MyQueue {
            @display("p=918.84,671.46");
        }
        router1: Router {
            @display("p=783.37,555.1325");
        }
        router2: Router {
            @display("p=792.205,182.59");
        }
        passiveQueue1: PassiveQueue {
            @display("p=1066.09,319.5325");
        }
    connections:
        source.out --> classifier.in++;
        classifier.out++ --> passiveQueue.in++;
        passiveQueue.out++ --> server.in++;
        fork.out++ --> sink.in++;
        server.out --> queue.in++;
        classifier.out++ --> router.in++;
        router.out++ --> queue.in++;
        router.out++ --> queue1.in++;
        router.out++ --> queue2.in++;
        queue1.out --> queue4.in++;
        queue.out --> router2.in++;
        router2.out++ --> myQueue.in++;
        router2.out++ --> queue3.in++;
        router1.out++ --> queue5.in++;
        router1.out++ --> myQueue1.in++;
        myQueue.out --> passiveQueue1.in++;
        queue3.out --> passiveQueue1.in++;
        queue4.out --> passiveQueue1.in++;
        queue5.out --> passiveQueue1.in++;
        myQueue1.out --> passiveQueue1.in++;
        passiveQueue1.out++ --> fork.in;
        fork.out++ --> router2.in++;
}
