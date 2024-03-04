package com.guochao.faceshow.aaspring.modulars.massage;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import cn.jpush.android.api.JPushInterface;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.bean.JMessageExtraBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.PushUtils;
import com.meizu.cloud.pushsdk.MzPushMessageReceiver;
import com.meizu.cloud.pushsdk.handler.MzPushMessage;
import com.meizu.cloud.pushsdk.notification.PushNotificationBuilder;
import com.meizu.cloud.pushsdk.platform.message.PushSwitchStatus;
import com.meizu.cloud.pushsdk.platform.message.RegisterStatus;
import com.meizu.cloud.pushsdk.platform.message.SubAliasStatus;
import com.meizu.cloud.pushsdk.platform.message.SubTagsStatus;
import com.meizu.cloud.pushsdk.platform.message.UnRegisterStatus;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class MEIZUPushReceiver extends MzPushMessageReceiver {

    /* loaded from: classes3.dex */
    class a extends TypeToken<Map> {
        a() {
        }
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onMessage(Context context, String str) {
        LogUtils.i(PushUtils.KEY_FROM_PUSH, "onMessage method1 msg = " + str);
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onNotificationArrived(Context context, MzPushMessage mzPushMessage) {
        JMessageExtraBean jMessageExtraBean;
        Log.e(PushUtils.KEY_FROM_PUSH, "onNotifyMessageArrived = " + mzPushMessage.getContent());
        String selfDefineContentString = mzPushMessage.getSelfDefineContentString();
        if (TextUtils.isEmpty(selfDefineContentString) || (jMessageExtraBean = (JMessageExtraBean) GsonGetter.getGson().fromJson(selfDefineContentString, (Class<Object>) JMessageExtraBean.class)) == null) {
            return;
        }
        LogUtils.i(PushUtils.KEY_FROM_PUSH, "" + jMessageExtraBean);
        Map<String, Object> n_extras = jMessageExtraBean.getJMessageExtra().getM_content().getN_extras();
        if (n_extras == null) {
            return;
        }
        LogUtils.i(PushUtils.KEY_FROM_PUSH, "" + n_extras.size());
        PushUtils.receiveNotification(context, n_extras);
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onNotificationClicked(Context context, MzPushMessage mzPushMessage) {
        String selfDefineContentString = mzPushMessage.getSelfDefineContentString();
        LogUtils.i(PushUtils.KEY_FROM_PUSH, "onNotifyMessageOpened  getSelfDefineContentString = " + selfDefineContentString);
        LogUtils.i(PushUtils.KEY_FROM_PUSH, "selfDefineContentString = " + mzPushMessage.toString());
        if (TextUtils.isEmpty(selfDefineContentString)) {
            return;
        }
        JMessageExtraBean jMessageExtraBean = (JMessageExtraBean) GsonGetter.getGson().fromJson(selfDefineContentString, (Class<Object>) JMessageExtraBean.class);
        LogUtils.i(PushUtils.KEY_FROM_PUSH, "pushBean = " + jMessageExtraBean);
        if (jMessageExtraBean != null && jMessageExtraBean.getJMessageExtra() != null) {
            LogUtils.i(PushUtils.KEY_FROM_PUSH, "" + jMessageExtraBean);
            Map<String, Object> n_extras = jMessageExtraBean.getJMessageExtra().getM_content().getN_extras();
            if (n_extras == null) {
                return;
            }
            LogUtils.i(PushUtils.KEY_FROM_PUSH, "" + n_extras.size());
            PushUtils.savePushTag(context, n_extras);
            JPushInterface.reportNotificationOpened(context, String.valueOf(jMessageExtraBean.getJMessageExtra().get_jmsgid_()), (byte) 2);
            EventTrackingUtils.getInstance().track(EventTrackingUtils.JPUSH_NOTIFICATION_CLICK);
            return;
        }
        try {
            String string = new JSONObject(selfDefineContentString).getString("ext");
            LogUtils.i(PushUtils.KEY_FROM_PUSH, "onNotificationClicked: " + string);
            PushUtils.jumpToChat(new JSONObject(string));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onNotificationDeleted(Context context, MzPushMessage mzPushMessage) {
        super.onNotificationDeleted(context, mzPushMessage);
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onNotifyMessageArrived(Context context, String str) {
        super.onNotifyMessageArrived(context, str);
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onPushStatus(Context context, PushSwitchStatus pushSwitchStatus) {
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onRegister(Context context, String str) {
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onRegisterStatus(Context context, RegisterStatus registerStatus) {
        LogUtils.i(PushUtils.KEY_FROM_PUSH, "onRegisterStatus token = " + registerStatus.getPushId());
        ThirdPushTokenMgr.c().h(BaseConfig.MZ_PUSH_BUZID, registerStatus.getPushId());
        ThirdPushTokenMgr.c().g();
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onSubAliasStatus(Context context, SubAliasStatus subAliasStatus) {
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onSubTagsStatus(Context context, SubTagsStatus subTagsStatus) {
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onUnRegister(Context context, boolean z10) {
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onUnRegisterStatus(Context context, UnRegisterStatus unRegisterStatus) {
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onUpdateNotificationBuilder(PushNotificationBuilder pushNotificationBuilder) {
        super.onUpdateNotificationBuilder(pushNotificationBuilder);
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onMessage(Context context, String str, String str2) {
        LogUtils.i(PushUtils.KEY_FROM_PUSH, "onMessage method2 msg = " + str + ", platformExtra = " + str2);
        PushUtils.receiveCustomMessage(context, (Map) new Gson().fromJson(str2, new a().getType()), str2);
    }

    @Override // com.meizu.cloud.pushsdk.MzPushMessageReceiver
    public void onMessage(Context context, Intent intent) {
        String bundle = intent.getExtras().toString();
        LogUtils.i(PushUtils.KEY_FROM_PUSH, "flyme3 onMessage = " + bundle);
    }
}
