# Beer Song

미국에서 여행을 갈 때 널리 불리는 'N - Bottles of Beer on the Wall' 이라는 노래가 있다.

N 값으로 예를 들어 5가 주어지면, 이와 같이 노래를 부르는 식이다.

    5 bottles of beer on the wall, 5 bottles of beer.
    Take one down and pass it around, 4 bottles of beer on the wall.

    4 bottles of beer on the wall, 4 bottles of beer.
    Take one down and pass it around, 3 bottles of beer on the wall.

    3 bottles of beer on the wall, 3 bottles of beer.
    Take one down and pass it around, 2 bottles of beer on the wall.

    2 bottles of beer on the wall, 2 bottles of beer.
    Take one down and pass it around, 1 bottles of beer on the wall.

    1 bottles of beer on the wall, 1 bottles of beer.
    Take one down and pass it around, no more bottles of beer on the wall.

    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.

N 값이 주어질 때, 이처럼 노래 가사를 출력하는 클래스를 작성하라.


## Structure 

BeerSong 클래스를 작성한다. 생성자를 통해 N 값을 전달받는다.

    init(numberOfBeerBottles: Int)

다음 함수를 작성한다.

    func generateVersesOfBeerSong() -> String

N 값에 따라 그에 맞는 노래가사를 반환한다.

## Source 

    class BeerSong {

        var numberOfBeerBottles: Int

        init(numberOfBeerBottles: Int) {
            self.numberOfBeerBottles = numberOfBeerBottles
        }

        func generateVersesOfBeerSong() -> String {
            var result: String = ""
            /* write your code here */

            return result
        }
    }
