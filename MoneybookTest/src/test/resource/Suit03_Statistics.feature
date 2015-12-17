@Suit03
Feature: 가계부 통계 시나리오

	
Scenario: 16.분류별 지출> 금액 수정	
	Given 다양한 분류의 지출내역 5개 입력 후 저장
    When 임의의 지출내역 선택
    When depth2 지출내역 선택
    When 내역 금액 수정 후 저장
    Then 분류별 지출> 금액 변경 확인
    
Scenario: 17.분류별 지출> 분류 수정   
    Given 임의의 지출내역 선택2
    When depth2 지출내역 선택2
    When 타분류로 수정 후 저장
    Then 지출내역 분류 변경 확인
    
Scenario: 18.분류별 수입> 금액 수정  
    Given 다양한 분류의 수입내역 5개 입력 후 저장
    When 임의의 수입내역 선택
    When depth2 수입내역 선택
    When 수입내역 금액 수정 후 저장
    Then 분류별 수입> 금액 변경 확인
    
Scenario: 19.분류별 수입> 분류 수정     
    Given 임의의 수입내역 선택2
    When depth2 수입내역 선택2
    When 타분류로 수정 후 저장2
    Then 수입내역 분류 변경 확인
    
Scenario: 20.카드/현금> 카드추가 후 카드 지출내역 작성    
    Given 카드/현금> 카드 관리하기 선택
    When 카드추가 선택
    When 카드정보 작성 후 저장
    Then 추가한 카드 지정하여 작성 후 종류/건수, 사용금액, 금액비율 확인
    
Scenario: 21.카드/현금> 카드 지출내역 수정      
    Given 카드/현금> 카드 지출내역 선택
    When 카드/현금 depth2 지출내역 선택
    When 지출금액 분류 수정 후 저장
    Then 카드/현금> 사용금액, 금액비율 확인
    
Scenario: 22.카드/현금> 현금추가 후 카드 지출내역 작성    
    Given 현금 관리하기 선택
    When 통장 추가 선택
    When 통장정보 작성 후 저장
    Then 추가한 현금(통장) 지정하여 지출내역 작성 후 종류/건수, 사용금액, 금액비율 확인
       
Scenario: 23.카드/현금> 현금 지출내역 수정    
    Given 카드/현금> 현금 지출내역 선택
    When 현금 depth2 지출내역 선택
    When 지출금액 분류 수정 후 저장2
    Then 현금> 사용금액, 금액비율 확인
    
Scenario: 24.카드/현금> 통장관리 설정 별 버튼 확인    
    Given 카드/현금> 환경설정으로 이동
    When 통장관리 OFF설정
    Then 카드/현금 홈> 카드 관리하기 버튼 확인
    
Scenario: 25.자산형황> 총누적자산> 카테고리별 금액작성   
    Given 자산현황 이동 후 화면확인
    When 지출내역 작성 (출금계좌: 현금, 분류: 각각 저축/보험 하위 6개)> 각 카테고리별 지출내역 및 현금잔액 확인
    Then 수입내역 작성 (분류: 각각 저축/보험 하위 6개)> 각 카테고리별 지출내역 및 현금잔액 확인
    
Scenario: 26.자산현황> 총누적자산> 카테고리별 금액수정    
    Given 자산현황홈> 임의의 카테고리 선택
    When 지출 내역 선택 후 수정
    When 수입 내역 선택 후 수정
    Then 자산현황홈> 수정한 카테고리 금액 및 현금잔액 확인
    
Scenario: 27.자산형황> 순자산> 각 자산/부채별 금액작성    
    Given 통장관리 설정ON 후 자산현황 홈 확인
    When 내역쓰기> 분류> 이체/대체 카테고리에서 추가 선택
    When 통장추가> 자산속성> 기타자산/기타부채 추가 후 저장
    Then 각 현금자산, 투자자산, 기타자산, 대출, 기타부채 내역 저장 후 자산/부채 별 금액 확인
    
Scenario: 28.자산형황> 순자산> 각 자산/부채별 금액수정    
    Given 자산현황> 임의의 자산 금액수정 후 저장
    When 자산현황> 임의의 부채 금액수정 후 저장
    Then 자산현황홈> 수정한 카테고리 금액 변경 및 자산/부채 금액 확인