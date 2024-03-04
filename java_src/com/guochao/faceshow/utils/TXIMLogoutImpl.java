package com.guochao.faceshow.utils;

import android.text.TextUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.LoginBusiness;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class TXIMLogoutImpl {
    static int LIMIT_COUNT = 20;
    private static final String TAG = "TXIMLogoutImpl";
    private int mLoginCount = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public void doLogoutAction(final V2TIMCallback v2TIMCallback) {
        this.mLoginCount++;
        if (TextUtils.isEmpty(V2TIMManager.getInstance().getLoginUser())) {
            LogUtils.e(TAG, "TIMManager获得到的Id是空,说明已经是未登录状态,不需要登出操作");
            if (v2TIMCallback != null) {
                v2TIMCallback.onSuccess();
                return;
            }
            return;
        }
        LoginBusiness.logout(new V2TIMCallback() { // from class: com.guochao.faceshow.utils.TXIMLogoutImpl.1
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, String str) {
                V2TIMCallback v2TIMCallback2 = v2TIMCallback;
                if (v2TIMCallback2 != null) {
                    v2TIMCallback2.onError(i9, str);
                }
                if (TXIMLogoutImpl.this.mLoginCount < TXIMLogoutImpl.LIMIT_COUNT) {
                    TXIMLogoutImpl.this.doLogoutAction(v2TIMCallback);
                }
                LogUtils.e(TXIMLogoutImpl.TAG, "logoutTIM 登出 请求失败...");
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
                V2TIMCallback v2TIMCallback2 = v2TIMCallback;
                if (v2TIMCallback2 != null) {
                    v2TIMCallback2.onSuccess();
                }
                LogUtils.e(TXIMLogoutImpl.TAG, "logoutTIM 登出 请求成功...");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void logoutTIM(V2TIMCallback v2TIMCallback) {
        doLogoutAction(v2TIMCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLoginRetryCount(int i9) {
        if (i9 >= 3) {
            LIMIT_COUNT = i9;
        }
    }
}
