# Streetalk_Info
'Streetalk'는 거리의 주인인 당신을 위한 커뮤니티라는 슬로건을 내건 소상공인을 위한 커뮤니티 앱입니다.
해당 레포는 'Streetalk' 프로젝트 중 iOS APP 개발에 관한 내용을 포함하고 있습니다.

## 프로젝트 정보
- App 이름 : Streetalk
- 개발 기간 : 2022.1 ~ 2020.8 (140 commits for iOS)
- 프로젝트 팀원 : 정석환(Android), 한태희(iOS), 박선형(BE), 길상현(BE), 진서연(Design), 고지우(Design)
- App 설명 : 지역을 기반으로 한 소상공인 익명 커뮤니티 플랫폼
- ~~App Stroe Link~~ (App 출시 준비 중입니다)
<div align="center">
<img width="240" alt="image" src="https://user-images.githubusercontent.com/87888411/183542130-33a0e710-6575-4267-a1df-aa21c68ba46b.png">
<img width="240" alt="image" src="https://user-images.githubusercontent.com/87888411/183542214-ab2717b5-7a65-4244-8388-62e31be75e3c.png">
<img width="240" alt="image" src="https://user-images.githubusercontent.com/87888411/183542246-c8489dfa-f425-4428-aa24-9c8b2b8200da.png">
<img width="800" alt="image" src="https://user-images.githubusercontent.com/87888411/182267185-b36e80d5-e12b-4554-a5f4-d44af7f9a9f2.png">
<img width="800" alt="image" src="https://user-images.githubusercontent.com/87888411/182522202-6b1520e4-b7b1-4a83-b275-d7804c7fb442.png">
<img width="800" alt="image" src="https://user-images.githubusercontent.com/87888411/182523121-03192e09-97f9-4632-aec8-151dc5210c32.png">
</div>

## App 소개
### 1. App 소개
   - 지역을 기반으로 한 소상공인 익명 커뮤니티 플랫폼입니다.
   - Android와 iOS 두 가지 버전으로 개발되었습니다.
   - 같은 지역 내 소상공인 간 익명으로 소통하며 정보 공유와 홍보를 도와주는 App입니다.
   
### 2. App 특징
   - 익명성을 보장을 위해 모든 게시글과 댓글에는 '거리지기1'과 같은 이름으로 표시됩니다.
   - 사용자의 위치를 기반으로 가장 좁은 범위의 동네와 넓은 범위의 주변 동네까지 표시되도록 선택할 수 있습니다.
   - 지역 뿐만 아니라 12분류의 업종을 기반으로 한 게시판도 사용할 수 있습니다.
   - 커뮤니티 이용규칙을 위반하는 이용자를 신고할 수 있으며, 여러 차례 신고된 이용자의 컨텐츠는 자동으로 가려집니다.
   - 신고가 누적된 이용자의 컨텐츠를 검토하여 운영진의 결정에 따라 이용자는 탈퇴 조치될 수 있습니다.
   - 모든 게시글에는 이미지를 포함하여 게시할 수 있습니다.
   - 게시글에 '좋아요'를 표시하거나 '스크랩'한 경우에는 따로 모아서 게시글을 볼 수 있습니다.
   - 많은 '좋아요'를 받은 게시글은 'HOT게시글'에 올라갑니다.
   

## App의 기술적 구현

### 1. Alamofire를 이용하여 비동기 HTTP 통신을 사용합니다.
- 모든 HTTP 통신은 Almofire에서 제공하는 비동기 통신을 사용합니다.
- 데이터를 임의로 조작하거나 오용하지 못하도록 Bearer Authentication 토큰 기반 인증을 사용합니다.

### 2. Kingfisher를 이용하여 이미지를 로드하고 캐싱합니다.
- 용량이 큰 이미지를 로드하는 과정에서 App의 반응성이 낮아지고 불필요한 통신을 반복하는 경우가 있으므로, Kingfisher 패키지를 사용하여 이미지를 로드하고 사용자의 로컬 디바이스에 캐싱하도록 구현하였습니다.

### 3. UserDefaults에 사용자의 기본정보 등을 저장하고 불러옵니다.
- 사용자의 기본 정보, 설정값 등을 보안 상으로 리스크가 없는 정보들을 UserDefaults에 저장하여 사용합니다.

## App 화면 소개

### 1. 회원가입 Flow

### 2. 메인화면

<img width="240" alt="image" src="https://user-images.githubusercontent.com/87888411/183542214-ab2717b5-7a65-4244-8388-62e31be75e3c.png">

### 3. 게시판 및 게시글 + 댓글

<img width="240" alt="image" src="https://user-images.githubusercontent.com/87888411/183542405-4e9f0c4e-180d-478c-b0f3-9e606bf820ee.png">

### 4. 게시글 검색


### 5. 신고

### 6. 마이페이지

<img width="240" alt="image" src="https://user-images.githubusercontent.com/87888411/183542246-c8489dfa-f425-4428-aa24-9c8b2b8200da.png">

### 7. 회원탈퇴


## 실제 Repo 소스코드 목록

<img width="186" alt="image" src="https://user-images.githubusercontent.com/87888411/182522486-000a6544-20a9-4960-ba17-f846d75a793e.png">
<img width="259" alt="image" src="https://user-images.githubusercontent.com/87888411/182522534-3259d262-55e3-4d87-872d-355e7160c01a.png">
<img width="168" alt="image" src="https://user-images.githubusercontent.com/87888411/182522582-c7cd0248-7f6d-4d7b-a67e-6b6145431058.png">
<img width="291" alt="image" src="https://user-images.githubusercontent.com/87888411/182522602-2240a56c-e436-48d2-a0ed-00c3306a4b98.png">
<img width="348" alt="image" src="https://user-images.githubusercontent.com/87888411/182522664-a230aabe-1441-414c-9735-ccce2537976a.png">
<img width="352" alt="image" src="https://user-images.githubusercontent.com/87888411/182522688-d77da09a-826a-4fae-9b9f-a7a6eb852a38.png">
<img width="356" alt="image" src="https://user-images.githubusercontent.com/87888411/182522712-035ac30a-b2ac-41b1-97a3-9821156834c0.png">
<img width="330" alt="image" src="https://user-images.githubusercontent.com/87888411/182522736-5c87417b-e0fc-4cb9-8ed0-a72c26587c45.png">


## 작품 개발 환경
- 사용 언어 : Swift
- 개발 디바이스 : MacBook Pro (13-inch, M1, 2020)
- 개발 OS : Mac Monterey 12.4
- 테스트 디바이스 : iPhone 13 mini, iPhone 11 Pro, iPhone 7, Xcode Simulator

## 프로젝트를 통해 배우거나 느낀 점 
- Alamofire를 이용한 비동기 HTTP 통신을 구현하는 법을 배웠습니다.
- Kingfisher를 이용하여 이미지를 로드하고 캐싱하는 법을 배웠습니다.
- UserDefaults를 이용하여 간단한 정보를 저장하고 활용하는 법을 배웠습니다.
- 통신으로 가져온 json 형식의 데이터를 디코딩하는 법을 배웠습니다.
- App의 Cycle을 이해하고 View의 생성과 표시되는 시점에 따라 적절히 데이터를 처리하는 법을 배웠습니다.
- Table View를 구성하여 Cell을 재사용하고 해당 셀이 잘못 연결되지 않도록 처리하는 법을 배웠습니다.
- 코드의 재사용성과 가독성을 높이기 위해 Extension으로 코드를 분리하는 법을 배웠습니다.
- Swift 언어의 Closure 개념을 이해하고 함수의 Escaping Handler를 구현하는 법을 배웠습니다.
- View의 상대적인 위치를 이해하고, Auto layout을 통해 다양한 디바이스에 적합하게 View를 구성하는 법을 배웠습니다.
- 서로 다른 View 간에 데이터를 주고 받는 법을 배웠습니다.
- LaunchScreen을 구성하고, 동일한 화면을 재구성하여 로딩 애니메이션을 구현하는 법을 배웠습니다.
- Design 팀의 요구사항에 맞게 뷰의 모서리를 둥글게 하거나 그라데이션을 적용하는 등 다양한 레이어 속성 변경을 배웠습니다.
- 정규표현식을 활용하여 닉네임 사용 규칙을 위반하는지 확인하는 법을 배웠습니다.
- 당겨서 새로고침을 하거나, View를 터치하여 키보드를 내리는 등 사용자의 App 사용 경험을 높이는 법을 배웠습니다.
- 이외에 Swift의 기본적인 문법을 포함하여 StoryBoard를 구성하는 법 등을 배웠습니다.

