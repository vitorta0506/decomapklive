package com.guochao.faceshow.aaspring.utils;

import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMManager;
/* loaded from: classes3.dex */
public class LoginBusiness {
    private static final String TAG = "LoginBusiness";

    private LoginBusiness() {
    }

    public static void logout(V2TIMCallback v2TIMCallback) {
        V2TIMManager.getInstance().logout(v2TIMCallback);
    }
}
