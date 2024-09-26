package com.SecretsOfKitchen.recipe.service;

/**
 * packageName    : com.SecretsOfKitchen.recipe.service
 * fileName       : aaa
 * author         : JAEIK
 * date           : 9/26/24
 * description    :
 * ===========================================================
 * DATE              AUTHOR             NOTE
 * -----------------------------------------------------------
 * 9/26/24       JAEIK       최초 생성
 */
public class aaa {
    int solution(double price) {
        int answer = 0;
        double sale1 = 0.95;
        double sale2 = 0.90;
        double sale3 = 0.80;
        if (price >= 500000) {
            return (int) (price * sale3);
        }else if (price >= 300000) {
            return (int) (price * sale2);
        }else if (price >= 100000) {
            return (int) (price * sale1);
        }
        return (int) price;
    }
}
