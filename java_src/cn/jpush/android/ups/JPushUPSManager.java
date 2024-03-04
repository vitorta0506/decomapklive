package cn.jpush.android.ups;

import android.content.Context;
import cn.jiguang.api.JCoreManager;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.ActionHelper;
/* loaded from: classes.dex */
public class JPushUPSManager {
    private static final String TAG = "JPushUPSManager";

    public static void registerToken(Context context, String str, String str2, String str3, UPSRegisterCallBack uPSRegisterCallBack) {
        try {
            UPSPushHelper.createMapping(context, UPSPushHelper.getNextRid(), uPSRegisterCallBack);
            JCoreManager.register(context, str);
            ActionHelper.getInstance().doSingleAction(context, "third_init", null);
        } catch (Throwable th2) {
            Logger.e(TAG, "[registerToken] failed:" + th2.getMessage());
            if (uPSRegisterCallBack != null) {
                uPSRegisterCallBack.onResult(new TokenResult("", 1000));
            }
        }
    }

    public static void turnOffPush(Context context, UPSTurnCallBack uPSTurnCallBack) {
        UPSPushHelper.callResult(context, "ups.turnOff", null, uPSTurnCallBack);
    }

    public static void turnOnPush(Context context, UPSTurnCallBack uPSTurnCallBack) {
        UPSPushHelper.callResult(context, "ups.turnOn", null, uPSTurnCallBack);
    }

    public static void unRegisterToken(Context context, UPSUnRegisterCallBack uPSUnRegisterCallBack) {
        try {
            UPSPushHelper.createMapping(context, UPSPushHelper.getNextRid(), uPSUnRegisterCallBack);
            JCoreManager.unRegister(context);
        } catch (Throwable th2) {
            Logger.e(TAG, "[unRegisterToken] failed:" + th2.getMessage());
            if (uPSUnRegisterCallBack != null) {
                uPSUnRegisterCallBack.onResult(new TokenResult("", 1000));
            }
        }
    }
}
