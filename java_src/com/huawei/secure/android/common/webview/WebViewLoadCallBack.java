package com.huawei.secure.android.common.webview;
/* loaded from: classes4.dex */
public interface WebViewLoadCallBack {

    /* loaded from: classes4.dex */
    public enum ErrorCode {
        HTTP_URL,
        URL_NOT_IN_WHITE_LIST,
        OTHER
    }

    void a(String str, ErrorCode errorCode);
}
