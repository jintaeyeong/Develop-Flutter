# Dart Study 정리
Study Date : 2024/08/17, 08/19

강의 url : [인프런 강의 주소](https://www.inflearn.com/course/lecture?courseSlug=dart-언어-입문&unitId=107600](https://www.inflearn.com/course/lecture?courseSlug=dart-%EC%96%B8%EC%96%B4-%EC%9E%85%EB%AC%B8&unitId=107600))

안드로이드 스튜디오가 없으면 DartPad라는 온라인 IDE로 공부할 수 있음. 
[온라인 IDE 주소](https://dartpad.dev/)

## Dart 1 기본기

### 출력 및 기본 자료형
```
print() // 출력
print('${변수}');

자료형
int double bool Char String
String // 대문자로 시작해야되는데 OOP 할 때 설명예정
```

일반 자료형과 다르게 var는 오른쪽 값을 유추해서 사용한다.
실제로는 var이라는 타입은 존재하는 것이 아니다 유추를 해주는 것일뿐

``` 
변수.runtimeType // 런타임중에 값이 어떤 자료형인지 알려주는 속성
```

var 어떤 자료형이든 선언할 수 있음 

var를 쓰는게 더 편할 텐데 왜 자료형이 있느냐? 

-> 나중에 몇만줄.. 엄청 많은 코드를 이해하고 사용하는데 명확한 자료가 써있는게 편하기 때문이다.

map, dictionary 같은 자료형을 선언할 때 엄청 복잡하고 길게 선언을 해야할 때가 있다..
이럴 때 var 타입을 사용해서 편리하게 사용하는 것

```
string + string2 가능

dynamic name = '진태영'
string 값이 아니라 다른 자료형을 넣어도 변수 선언을 할 수 있다..

```

---
### var 타입과 dynamic 타입의 차이점
그렇다면 var과 dynamic의 차이점이 무엇인가??
dynamic변수.runtimeType으로 해도 var과 차이가 없음 

```
dynamic name = '진태영'
var name2 = '메롱'
 
name = 1 // 가능
name = 2 // 불가능
```

var 타입은 처음에 선언한 자료형에서 다른 자료형으로 변수를 변경할 수 없다..
dynamic 타입은 처음에 string으로 선언했어도 int 값을 넣으면 변경이 가능함! 

이것이 var과 dynamic의 차이점~~

---
### nullable과 non-nullable 
```
nullable - null이 될 수 있다.
non-nullable - null이 될 수 없다.
```

null : 아무런 값도 있지 않다.

지금까지 배운 모든 타입은 2가지 유형이 있다.
1. 타입만 들어갈 수 있는 경우
2. 타입과 null이 들어갈 수 있는 경우

```
String name = null; // X

String? name2 = null; // O

```
어떤 타입이든 자료형 뒤에 ?를 붙이면 null까지 사용할 수 있게 된다.

```
! // ?의 반대
```
!를 변수 뒤에 붙이면 이 값은 절대 null이 아니다! 라는 뜻

---
### final 과 const
플러터 프로젝트에서도 중요하게 생각하는 키워드 2개

```
void main() {
  final String name = '진태영';
  name = '제리'; //변경 X

  const String name2 = '블랙핑크';
  name = '이효리'; // 변경 X

}
```
final과 const로 선언한 변수는 값을 변경할 수 없다..

이 두가지 타입의 장점은 자료형을 생략할 수 있다..
```
  final String name = '진태영';
  final name = '진태영'

  const Sting name2 = '블랙핑크';
  const name2 =  블랙핑크';
```
#### final과 const의 차이점
차이점을 알기 전에 DateTime 클래스를 알아야됨
시간과 날짜를 저장할 수 있는 데이터

```
// now와 now2의 값은 다르다..
DateTime now = DateTime.now();

print(now);

DateTime now2 = DateTime.now();

--------------------------------------

final DateTime now = DateTime.now(); // 가능

print(now);

const DateTime now2 = DateTime.now(); //에러남

```

const의 경우에는 빌드 타임의 값을 알고 있어야 한다.
final 경우는 빌드 타임 값 몰라도 된다.

코드를 작성하면 이진수로 변환이 된다

Const는 코드를 작성한 순간에 코드의 값을 알고 있어야 함..
근데 **DateTime은 코드가 실행한 순간에 값을 가져오기 때문에 Const의 변수에는 값을 넣을 수가 없음**

차이점을 알고 있는게 중요하다..

---
### Operator 
덧셈, 뺄셈, 곱셈, 나눗셈을 포함한 추가적인 연산 기능들
기본적인 것들은 아는데 좀 특별한 것들이 있음

```
double number = 4.0; // 실수
print(number);

number += 1;
print(number);
```
출력
4
5

number++를 하면 1만큼 올리는데 
number += 1 를 하면 원하는 숫자만큼 더할 수 있음

double이여도 4.0 처럼 소수점이 0이면 연산 후에 자료형은 int가 됨
소수점 값이 있으면 ++를 하거나 += 를 해도 double 자료형을 가지고 있음

#### null 조건 Operator 

```
double? number = 4.0;
number = 2.0;
number = null;
number ??= 3.0; 
```

출력
4
2
null
3

**??=**
현재 값이 null일 때만 오른쪽 값으로 바꾼다. 

#### &&, ||
&& - and 조건
|| - or 조건

---
### List

여러개의 값을 하나의 변수에 저장하는 것
List<자료형>
```
index 
0부터 시작

add()
remove()
indexOf()
```

### Map
Key / Value 
```
Map<String, String> dictionary = {
  'Harry Potter' : '해리포터',
  'Ron weasley' : '론 위즐리',
  'Hermione Ganger' : 헤르미온느 그레인저'
}

map에 데이터를 추가
  dictionary.addAll({
      // 여기에 넣는 데이터들을 모두 map 변수에 추가할 수 있음
});
  dictionarry[key] = value;

map에 데이터를 삭제
  dictionary.remove(key);

dictionary.keys // map의 모든 키를 가지고 옴
dictionary.values // map의 모든 값을 가지고 옴
```
나중에 functional 프로그래밍을 배우면 몇가지 기능들을 더 배울 것임

### Set
map이랑 굉장히 비슷함
근데 key랑 value 짝이 아니고 list 처럼 그냥 하나의 값들만 저장을 할 수 있음

**List와 Set의 차이점**
List : 중복값 가능
Set : 중복값 불가능 -> 알아서 중복값이 사라진다..

### if문 
if 
else if
else

### for loop 
for ( int i = 0; i < n; i++) {
  print(i);
}

### while loop
while 조건을 잘 보고 해야된다. 잘못 설정하면 무한대로 실행됨
while(조건) {
 실행문
 if(조건) {
  break;
 }
}

### enum 
사용하고 싶은 상수를 정해놓고 사용

### 함수 선언
함수를 선언할 때 // 코멘트를 적어서 어떤 함수인지 적어놓고 구현하는게 좋다.

가장 먼저 실행되는게 main 함수 

parameter / argument - 매개변수 ,, 함수 선언할 때 인자로 받을 값

positional parameter - 순서가 중요한 파라미터
optional parameter - 있어도 되고 없어도 되는 파라미터 []
  함수명(int x, [int y, int z]) -> 특이허네..
named paramter - 이름이 있는 파라미터(순서가 중요하지 않다)

void 
- 사전적 뜻 : 공허, 아무것도 없다
- return type : 없음

=> 반환값이 바로 뭔지 알 수 있는 함수 

#### typeDef 
함수같은 것이지만 body가 없다..(이게 무슨말..)

```
// signature(return 타입과 parameter의 형태)
typedef Operation = int Function(int x, int y, int z);

// 더하기
int add(int x, int y, int z) => x + y + z;

// 빼기 
int substrack(int x, int y, int z) => x - y - z;

void main() {

 Operation operation = add;
 int result = operation(10,20,30);
 print(result);

 Operation operation = substract;
 int result2 = operation(10,20,30);
 print(result2);
```
출력
60 
-40

그냥 이렇게 선언해서 사용하기 보다는 함수의 파라미터에 사용하는 경우가 많다..
```
int calculate(int x, int y, int z, Operation operation) {
  return operation(x,y,z);
}
```



#
## Dart 2 Object Oriented Programming 객체지향 프로그래밍


#
## Dart 3 Functional Programming 함수형 프로그래밍


#
## Dart 4 Async Programming 비동기 프로그래밍


#
### Dart 3.0 업데이트 문법



