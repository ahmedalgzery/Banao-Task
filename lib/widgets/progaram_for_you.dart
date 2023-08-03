
import 'package:banao/model/program.dart';
import 'package:banao/service/get_progarm.dart';
import 'package:banao/widgets/program_item.dart';
import 'package:flutter/material.dart';

class ProgramForYou extends StatelessWidget {
  const ProgramForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Programs for you',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Spacer(),
              Text(
                'View all',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.arrow_right_alt_outlined),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            height: 270,
            child: FutureBuilder<List<ProgramModel>>(
                future: PrgarmService().getProgram(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ProgramModel> program = snapshot.data!;
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: program.length,
                      itemBuilder: (context, index) => ProgramItem(
                        program: program[index],
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          )
        ],
      ),
    );
  }
}
