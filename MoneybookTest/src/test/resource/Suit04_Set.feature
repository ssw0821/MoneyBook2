@Suit04
Feature: 가계부 환경설정 시나리오

Scenario: 29/30. 잠금설정> 암호잠금 설정 및 변경
		Given 환경설정 > 암호잠금 클릭 > 암호잠금 체크 > 암호를 입력
		When 앱Background 변경함
		Then 설정한 암호 입력후 암호잠금화면 확인
        
		Given 환경설정 > 암호잠금 클릭 > 암호변경 클릭 > 현재암호 입력 > 새로운암호 입력 > 새로운암호 재입력
		When 앱Background 변경
		Then 변경전/후 암호 입력 > 변경한 암호 입력 후 암호풀림 확인
        
Scenario: 31.기본설정> 월 시작일 변경        
		Given 환경설정 > 기본설정 > 월 시작일
		When 임의의 시작일 선택
		Then GNB > 한달보기/통계 > 상단에 월시작일 확인
        
Scenario: 32.기본설정> 소수점 표시        
		Given 환경설정 > 기본설정 > 소수점표시
		When 소수점 표시 Check
		Then GNB > 한달보기/일년보기/통계 > 각 지출/수입금액 소수점 두번째자리 확인

Scenario: 33.분류관리> 수입분류 관리
		Given 환경설정 > 분류관리 > 수입분류관리 > 추가
		When 수입분류 추가 
		Then 내역쓰기 > 수입 > 추가된 수입분류 확인
		
		Given 환경설정 > 분류관리 > 수입분류관리 > 수정
		When 수입분류 수정 
		Then 내역쓰기 > 수입 > 수정한 수입분류 확인
		
		Given 환경설정 > 분류관리 > 수입분류관리 > 삭제
		When 수입분류 삭제 
		Then 내역쓰기 > 수입 > 수입분류 삭제 확인

Scenario: 34.분류관리> 지출분류 관리
		Given 환경설정 > 분류관리 > 지출분류관리 > 추가
		When 지출분류 추가 
		Then 내역쓰기 > 지출 > 추가된 지출분류 확인
		
		Given 환경설정 > 분류관리 > 지출분류관리 > 수정
		When 지출분류 수정 
		Then 내역쓰기 > 지출 > 수정한 지출분류 확인

		Given 환경설정 > 분류관리 > 지출분류관리 > 삭제
		When 지출분류 삭제 
		Then 내역쓰기 > 지출 > 지출분류 삭제 확인

Scenario: 35.분류관리> 카드관리
		Given 환경설정 > 분류관리 > 카드관리 > 추가
		When 카드추가 > 내용입력 후 저장
		Then 내역쓰기 > 출금계좌 > 카드 > 생성한 카드 확인
		
Scenario: 36.분류관리> 통장관리		
		Given 설정 > 통장(현금계좌) 관리 > 추가
		When 통장추가 > 내용입력 후 저장
		Then 내역쓰기 > 출금계좌 > 현금 > 생성한 통장 확인

Scenario: 37.분류관리> 자주쓰는 내역 관리
		Given 환경설정 > 내역관리 > 자주쓰는 내역관리
		When 추가 > 내용입력 후 저장하기
		Then 내역쓰기 > 불러오기 > 추가한 내역 노출확인
		
Scenario: 38.분류관리> 고정금액 관리		
		Given 환경설정 > 내역관리 > 고정금액 관리
		When 추가 > 내용입력 후 저장
		Then 생성한 고정금액 확인

Scenario: 39.고객 도움말
		Given 환경설정 > 고객도움말 > 가계부 고객센터/오류신고/공지사항 
		When 가계부 고객센터/오류신고/공지사항 페이지 이동
		Then 가계부 고객센터/오류신고/공지사항 페이지 확인
		
Scenario: 40.데이터초기화> 수입/지출 내역만 초기화		
		Given 환경설정 > 데이터초기화 > 수입/지출 내역 초기화
		When 팝업 > 예 선택하기
		Then 수입/지출 내역 정상 초기화 확인
        
Scenario: 41.데이터초기화> 가계부 전체 초기화        
        Given 환경설정 > 데이터초기화 > 가계부 전체 초기화
		When 팝업 > 예 선택
		Then 통장/카드/고정금액 모두 초기화 확인