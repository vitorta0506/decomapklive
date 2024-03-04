package com.guochao.faceshow.utils;

import com.google.gson.JsonObject;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMConversationManager;
import com.tencent.imsdk.v2.V2TIMCustomElem;
import com.tencent.imsdk.v2.V2TIMElem;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
/* loaded from: classes4.dex */
public class TXIMUtils {
    public static final String KEY_MSG_IS_FRIEND = "msg_type_isfriend";
    static int LIMIT_COUNT = 10;
    private static final String TAG = "TXIMUtils";

    public static V2TIMElem getElem(V2TIMMessage v2TIMMessage) {
        int elemType = v2TIMMessage.getElemType();
        if (elemType != 1) {
            if (elemType != 2) {
                if (elemType != 3) {
                    if (elemType != 4) {
                        if (elemType != 5) {
                            if (elemType != 8) {
                                return null;
                            }
                            return v2TIMMessage.getFaceElem();
                        }
                        return v2TIMMessage.getVideoElem();
                    }
                    return v2TIMMessage.getSoundElem();
                }
                return v2TIMMessage.getImageElem();
            }
            return v2TIMMessage.getCustomElem();
        }
        return v2TIMMessage.getTextElem();
    }

    public static void joinGroup(String str) {
        V2TIMManager.getInstance().joinGroup(str, "123", new V2TIMCallback() { // from class: com.guochao.faceshow.utils.TXIMUtils.3
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, String str2) {
                ToastUtils.debug("进群失败" + i9 + ", desc = " + str2);
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
                ToastUtils.debug("进群成功");
            }
        });
    }

    public static void loginTIM() {
        loginTIM(LIMIT_COUNT);
    }

    public static void logoutTIM() {
        logoutTIM(TXIMLogoutImpl.LIMIT_COUNT, null);
    }

    public static void quitGroup(String str) {
        quitGroup(str, new V2TIMCallback() { // from class: com.guochao.faceshow.utils.TXIMUtils.1
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, String str2) {
                BaseApplication baseApplication = BaseApplication.getInstance();
                ToastUtils.debugToast(baseApplication, "退群失败：" + i9 + ", desc = " + str2);
                LogUtils.i(TXIMUtils.TAG, "onError: " + i9 + "    " + str2);
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
                LogUtils.i(TXIMUtils.TAG, "onSuccess: ");
                ToastUtils.debugToast(BaseApplication.getInstance(), "退群成功");
            }
        });
    }

    public static void setMessageFriendInfo(boolean z10, V2TIMMessage v2TIMMessage) {
        V2TIMElem elem;
        if (BaseConfig.isChinese() || (elem = getElem(v2TIMMessage)) == null) {
            return;
        }
        V2TIMCustomElem v2TIMCustomElem = new V2TIMCustomElem();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(KEY_MSG_IS_FRIEND, z10 ? "1" : "0");
        v2TIMCustomElem.setData(jsonObject.toString().getBytes());
        elem.appendElem(v2TIMCustomElem);
    }

    public static void loginTIM(int i9) {
        loginTIM(i9, null);
    }

    public static void logoutTIM(int i9, V2TIMCallback v2TIMCallback) {
        TXIMLogoutImpl tXIMLogoutImpl = new TXIMLogoutImpl();
        tXIMLogoutImpl.setLoginRetryCount(i9);
        tXIMLogoutImpl.logoutTIM(v2TIMCallback);
    }

    public static void loginTIM(int i9, V2TIMCallback v2TIMCallback) {
        loginTIM(SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID), SpUtils.getStr(BaseApplication.getInstance(), Contants.TencentSignature), i9, v2TIMCallback);
    }

    public static void quitGroup(String str, V2TIMCallback v2TIMCallback) {
        V2TIMManager.getInstance().quitGroup(str, v2TIMCallback);
        V2TIMConversationManager conversationManager = V2TIMManager.getConversationManager();
        conversationManager.deleteConversation("group_" + str, new V2TIMCallback() { // from class: com.guochao.faceshow.utils.TXIMUtils.2
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, String str2) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
            }
        });
    }

    public static void loginTIM(String str, String str2, int i9, V2TIMCallback v2TIMCallback) {
        com.guochao.faceshow.aaspring.manager.im.b.l0().Z();
    }
}
