package cn.jpush.android.service;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import cn.jpush.android.api.JThirdPlatFormInterface;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.thirdpush.meizu.a;
import com.meizu.cloud.pushsdk.MzPushMessageReceiver;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.handler.MzPushMessage;
import com.meizu.cloud.pushsdk.notification.PushNotificationBuilder;
import com.meizu.cloud.pushsdk.platform.message.PushSwitchStatus;
import com.meizu.cloud.pushsdk.platform.message.RegisterStatus;
import com.meizu.cloud.pushsdk.platform.message.SubAliasStatus;
import com.meizu.cloud.pushsdk.platform.message.SubTagsStatus;
import com.meizu.cloud.pushsdk.platform.message.UnRegisterStatus;
/* loaded from: classes.dex */
public class PluginMeizuPlatformsReceiver extends MzPushMessageReceiver {
    private static final String TAG = "MeizuPlatformsReceiver";
    private static Context mContext;

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onMessage(Context context, String str) {
        Logger.dd(TAG, "onMessage is called" + str);
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onNotificationArrived(Context context, MzPushMessage mzPushMessage) {
        Logger.dd(TAG, "onNotificationArrived is called. " + mzPushMessage);
        if (mzPushMessage == null) {
            Logger.dd(TAG, "message was null");
        } else {
            a.a(context, mzPushMessage, JThirdPlatFormInterface.ACTION_NOTIFICATION_ARRIVED);
        }
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onNotificationClicked(Context context, MzPushMessage mzPushMessage) {
        Logger.dd(TAG, "onNotificationClicked is called. " + mzPushMessage);
        if (mzPushMessage == null) {
            Logger.dd(TAG, "message was null");
        } else {
            a.a(context, mzPushMessage, JThirdPlatFormInterface.ACTION_NOTIFICATION_CLCKED);
        }
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onPushStatus(Context context, PushSwitchStatus pushSwitchStatus) {
        Logger.ii(TAG, "onPushStatus is called");
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        mContext = context;
        super.onReceive(context, intent);
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onRegister(Context context, String str) {
        Logger.dd(TAG, "onRegister pushId:" + str);
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onRegisterStatus(Context context, RegisterStatus registerStatus) {
        String str;
        Logger.ii(TAG, "onRegisterStatus:" + String.valueOf(registerStatus));
        if (registerStatus != null) {
            str = registerStatus.getPushId();
            Logger.ww(TAG, "PushId is " + String.valueOf(str));
        } else {
            str = null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString(JThirdPlatFormInterface.KEY_TOKEN, str);
            bundle.putByte("platform", (byte) 3);
            JThirdPlatFormInterface.doAction(context, JThirdPlatFormInterface.ACTION_REGISTER_TOKEN, bundle);
        } catch (Throwable th2) {
            Logger.ww(TAG, "Update pushId unexpected error:" + th2.getMessage());
        }
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onSubAliasStatus(Context context, SubAliasStatus subAliasStatus) {
        Logger.ii(TAG, "onSubAliasStatus:" + String.valueOf(subAliasStatus));
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onSubTagsStatus(Context context, SubTagsStatus subTagsStatus) {
        Logger.dd(TAG, "onSubTagsStatus:" + String.valueOf(subTagsStatus));
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onUnRegister(Context context, boolean z10) {
        Logger.ii(TAG, "onUnRegister is called");
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onUnRegisterStatus(Context context, UnRegisterStatus unRegisterStatus) {
        Logger.dd(TAG, "onUnRegisterStatus:" + String.valueOf(unRegisterStatus));
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onUpdateNotificationBuilder(PushNotificationBuilder pushNotificationBuilder) {
        try {
            Context context = mContext;
            if (context == null) {
                Logger.ww(TAG, "onUpdateNotificationBuilder context is null");
                return;
            }
            int identifier = context.getResources().getIdentifier(PushConstants.MZ_PUSH_NOTIFICATION_SMALL_ICON, "drawable", mContext.getPackageName());
            if (identifier == 0) {
                identifier = mContext.getResources().getIdentifier("jpush_notification_icon", "drawable", mContext.getPackageName());
            }
            if (identifier != 0) {
                pushNotificationBuilder.setStatusBarIcon(identifier);
            }
        } catch (Throwable th2) {
            Logger.ww(TAG, "set meizu statusbar icon error:" + th2.toString());
        }
    }
}
