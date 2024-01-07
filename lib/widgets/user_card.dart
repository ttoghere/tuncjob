import 'package:flutter/material.dart';
import 'package:tuncjob/models/models.dart';
import 'package:tuncjob/screens/screens.dart';
import 'package:tuncjob/widgets/widgets.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'user_card',
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.4,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(user.imageUrls[0]),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: const Offset(3, 3),
                    )
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${user.name}, ${user.age}',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      user.jobTitle,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                    Row(
                      children: [
                        UserImage.small(url: user.imageUrls[1]),
                        UserImage.small(url: user.imageUrls[2]),
                        UserImage.small(url: user.imageUrls[3]),
                        UserImage.small(url: user.imageUrls[4]),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () => Navigator.of(context).pushNamed(
                              UsersScreen.routeName,
                              arguments: user),
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.info_outline,
                              size: 25,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
