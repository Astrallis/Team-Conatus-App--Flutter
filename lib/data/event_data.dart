import '../models/event.dart';

class EventData {
  static List<Event> _events = [
    new Event(
        name: "CONATUS BIRTHDAY 2018",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/birthday.jpg?alt=media&token=383b3736-d9f8-4319-9754-6579349dfd41",
        description:
            "In order to maintain continuum, TEAM CONATUS launched the 19th edition of CONOSCENZA on 1st November 2018, the tech torrent that addresses the applied and theoretical issues of the technical field. The 19th edition contains articles overloaded with information like Blockchain, The Verge, Bitcoin, Halberd, Zenbot, Net Neutrality and much more.​"),
    new Event(
        name: "\"CODE-O-FIESTA 2018\" : Online Coding Contest",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/codeofiesta.jpg?alt=media&token=835458ce-d04b-4983-96bd-7ad83f3c973f",
        description:
            "CONATUS and OSS R&D Centre, AKGEC in association with CodeChef conducted “Code-O-Fiesta 2018 – an Online Coding Contest on 20 September 2018. ‘Code-O-Fiesta’ was an initiative which aroused from a combative attitude that paves a way towards building a strong foundation. The contest was basically a step to upgrade the knowledge and combative spirit of students regarding their coding skills and competence."),
    new Event(
        name: "\"ODYSSEY\" – THE ULTIMATE SHOWDOWN",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/odyssey.jpg?alt=media&token=6b370c22-80ac-46c6-a800-3a4e100f5a2d",
        description:
            "Team CONATUS organized the event ODYSSEY – an online coding, gaming and designing contest on 13th and 14th March 2018. ‘ODYSSEY’ was an exciting series of events which brightened the monotonous college life with a tincture of enjoyment, competence and excellence. The event presented a unique challenge of balancing Coding and Technical Knowledge with Real Time Gaming experience."),
    new Event(
        name: "\"C\" – CLASSES FOR 1st Year STUDENTS",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/conatus-app.appspot.com/o/c-class.jpg?alt=media&token=e9d3d0cf-a534-4620-8420-144e6bad8167",
        description: "")
  ];

  static get eventsData => List.of(_events);
}
