package com.guochao.faceshow.web.jsinterface;

import android.webkit.JavascriptInterface;
import androidx.annotation.Keep;
@Keep
/* loaded from: classes4.dex */
public interface IJSInterface {
    @JavascriptInterface
    String closeCurrentPage(Object obj);

    @JavascriptInterface
    String getApiCommon(Object obj);

    @JavascriptInterface
    String getAppVersionCode(Object obj);

    @JavascriptInterface
    String getCurrentDiamonds(Object obj);

    @JavascriptInterface
    String getCurrentGameCoin(Object obj);

    @JavascriptInterface
    String getCurrentLanguage(Object obj);

    @JavascriptInterface
    String getCurrentUserId(Object obj);

    @JavascriptInterface
    String getCurrentUserInfo(Object obj);

    @JavascriptInterface
    String getCurrentUserToken(Object obj);

    @JavascriptInterface
    String goCharge(Object obj);

    @JavascriptInterface
    String goFeedbackHistory(Object obj);

    @JavascriptInterface
    String goLive(Object obj);

    @JavascriptInterface
    String goLiveRanking(Object obj);

    @JavascriptInterface
    String goToAppMall(Object obj);

    @JavascriptInterface
    String goToFeedback(Object obj);

    @JavascriptInterface
    String goToIMChat(Object obj);

    @JavascriptInterface
    String goToTaskCenterPage(Object obj);

    @JavascriptInterface
    String goUgcTopicHomePage(Object obj);

    @JavascriptInterface
    String goWithdrawalSpecificationActivity(Object obj);

    @JavascriptInterface
    String openLiveInfoDialog(Object obj);

    @JavascriptInterface
    String pageLoadSuccess(Object obj);

    @JavascriptInterface
    String publishUgc(Object obj);

    @JavascriptInterface
    String setCurrentDiamonds(Object obj);

    @JavascriptInterface
    String showDiamondsNotEnoughDialog(Object obj);

    @JavascriptInterface
    String showHellStarDialog(Object obj);
}
