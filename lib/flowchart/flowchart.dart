import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
class Flowchart extends StatefulWidget {
  const Flowchart({super.key});

  @override
  State<Flowchart> createState() => _FlowchartState();
}

class _FlowchartState extends State<Flowchart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
              color: Colors.white,
              child: TimelineTile(
                alignment: TimelineAlign.manual,
                lineXY: 0.2,
                endChild: Container(
                  constraints: const BoxConstraints(
                    minHeight: 120,
                  ),
                  color: Colors.lightGreenAccent,
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Phase 1: Planning and Requirements Gathering'),
                        Text('Milestone 1: Project kickoff meeting (January 10, 2024)'),
                        Text('Milestone 2: Requirements documentation completed (February 15, 2024)'),
                      ],
                    ),
                  )),
                ),
                startChild: Container(
                  color: Colors.amberAccent,
                ),
              )
          ),
          Container(
              color: Colors.white,
              child: TimelineTile(
                alignment: TimelineAlign.manual,
                lineXY: 0.2,
                endChild: Container(
                  constraints: const BoxConstraints(
                    minHeight: 120,
                  ),
                  color: Colors.lightGreenAccent,
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phase 2: Design and Prototyping'),
                        Text('Milestone 3: Initial design concepts presented (March 1, 2024)'),
                        Text('Milestone 4: Final design approved (April 5, 2024)'),
                      ],
                    ),
                  )),
                ),
                startChild: Container(
                  color: Colors.amberAccent,
                ),
              )
          ),
          Container(
              color: Colors.white,
              child: TimelineTile(
                alignment: TimelineAlign.manual,
                lineXY: 0.2,
                endChild: Container(
                  constraints: const BoxConstraints(
                    minHeight: 120,
                  ),
                  color: Colors.lightGreenAccent,
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phase 3: Development and Testing'),
                        Text('Milestone 5: Development starts (March 15, 2024)'),
                        Text('Milestone 6: Beta testing begins (April 25, 2024)'),
                      ],
                    ),
                  )),
                ),
                startChild: Container(
                  color: Colors.amberAccent,
                ),
              )
          ),
          Container(
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              endChild: Container(
                constraints: const BoxConstraints(
                  minHeight: 120,
                ),
                color: Colors.lightGreenAccent,
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Phase 4: Launch and Post-Launch'),
                      Text('Milestone 7: Website launch (May 15, 2024)'),
                      Text('Milestone 8: Post-launch user feedback collected (June 1, 2024)'),
                    ],
                  ),
                )),
              ),
              startChild: Container(
                color: Colors.amberAccent,
              ),
            )
          ),
          Container(
              color: Colors.white,
              child: TimelineTile(
                alignment: TimelineAlign.manual,
                lineXY: 0.2,
                endChild: Container(
                  constraints: const BoxConstraints(
                    minHeight: 120,
                  ),
                  color: Colors.lightGreenAccent,
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phase 2 design depends on Phase 1 requirements'),
                        Text('Phase 3 development depends on Phase 2 design approval'),

                      ],
                    ),
                  )),
                ),
                startChild: Container(
                  color: Colors.amberAccent,
                ),
              )
          ),
        ],
      ),
    );
  }
}


