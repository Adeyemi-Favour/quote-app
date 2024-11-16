import 'package:flutter/material.dart';

class wisdomQuotes extends StatefulWidget {
  const wisdomQuotes({super.key});

  @override
  State<wisdomQuotes> createState() => _wisdomQuotesState();
}

class _wisdomQuotesState extends State<wisdomQuotes> {
  int _index = 0;

  List quotes = [
    "Life is what happens when you're busy making other plans. – John Lennon",
    "In the end, we only regret the chances we didn't take. – Lewis Carroll",
    "Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment. – Buddha",
    "The purpose of life is not to be happy. It is to be useful, to be honorable, to be compassionate, to have it make some difference that you have lived and lived well. – Ralph Waldo Emerson",
    "Life isn't about waiting for the storm to pass, but learning to dance in the rain. – Vivian Greene",
    "To live is the rarest thing in the world. Most people exist, that is all. – Oscar Wilde",
    "Your time is limited, so don’t waste it living someone else’s life. – Steve Jobs",
    "You only live once, but if you do it right, once is enough. – Mae West",
    "Life is really simple, but we insist on making it complicated. – Confucius",
    "Don't count the days, make the days count. – Muhammad Ali",
    "Difficulties in life are intended to make us better, not bitter. – Dan Reeves",
    "Life is either a daring adventure or nothing at all. – Helen Keller",
    "Life is a journey that must be traveled no matter how bad the roads and accommodations. – Oliver Goldsmith",
    "The biggest adventure you can take is to live the life of your dreams. – Oprah Winfrey",
    "The good life is one inspired by love and guided by knowledge. – Bertrand Russell",
    "You miss 100% of the shots you don’t take. – Wayne Gretzky",
    "Life is too important to be taken seriously. – Oscar Wilde",
    "Do not go where the path may lead, go instead where there is no path and leave a trail. – Ralph Waldo Emerson",
    "Life is short, and it is up to you to make it sweet. – Sarah Louise Delany",
    "What we think, we become. – Buddha",
    "Life itself is the most wonderful fairy tale. – Hans Christian Andersen",
    "Life is what we make it, always has been, always will be. – Grandma Moses",
    "Live in the sunshine, swim in the sea, drink the wild air. – Ralph Waldo Emerson",
    "Happiness is not something ready-made. It comes from your own actions. – Dalai Lama",
    "Don’t watch the clock; do what it does. Keep going. – Sam Levenson",
    "The unexamined life is not worth living. – Socrates",
    "Life is about making an impact, not making an income. – Kevin Kruse",
    "Success is not the key to happiness. Happiness is the key to success. – Albert Schweitzer",
    "The longer I live, the more I realize the impact of attitude on life. – Charles R. Swindoll",
    "Change your thoughts and you change your world. – Norman Vincent Peale",
    "Life shrinks or expands in proportion to one's courage. – Anaïs Nin",
    "The best way to predict your future is to create it. – Abraham Lincoln",
    "Life is 10% what happens to us and 90% how we react to it. – Charles R. Swindoll",
    "Life is a balance between holding on and letting go. – Rumi",
    "Keep your face always toward the sunshine—and shadows will fall behind you. – Walt Whitman",
    "It’s not the years in your life that count, it’s the life in your years. – Abraham Lincoln",
    "The only impossible journey is the one you never begin. – Tony Robbins",
    "Life’s tragedy is that we get old too soon and wise too late. – Benjamin Franklin",
    "Everything has beauty, but not everyone sees it. – Confucius",
    "The best things in life are free. – Coco Chanel",
    "Life is a succession of lessons which must be lived to be understood. – Ralph Waldo Emerson",
    "The greatest pleasure of life is love. – Euripides",
    "Live life to the fullest, and focus on the positive. – Matt Cameron",
    "Life is like riding a bicycle. To keep your balance, you must keep moving. – Albert Einstein",
    "Success is how high you bounce when you hit bottom. – George S. Patton",
    "The biggest risk is not taking any risk. – Mark Zuckerberg",
    "When life gives you lemons, make lemonade. – Elbert Hubbard",
    "You have within you right now, everything you need to deal with whatever the world can throw at you. – Brian Tracy",
    "Dream as if you’ll live forever. Live as if you’ll die today. – James Dean",
    "Life is not measured by the number of breaths we take, but by the moments that take our breath away. – Maya Angelou"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(margin: EdgeInsets.only(bottom: 40),
              child: Text(
                quotes[_index % quotes.length],  //start the quote all over when it reaches the last one
                textAlign: TextAlign.center,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            Divider(
              thickness: 1.2,
              color: Colors.black,
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: TextButton.icon(
                onPressed: _showQuotes,
                label: Text(
                  'Inspire me',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                icon: Icon(
                  Icons.light_mode_rounded,
                  color: Colors.white,
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showQuotes() {
    setState(() {
      _index++;
    });
  }
}
