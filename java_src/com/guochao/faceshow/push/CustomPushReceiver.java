package com.guochao.faceshow.push;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b8.e;
import cn.jpush.android.api.CustomMessage;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.api.JPushMessage;
import cn.jpush.android.api.NotificationMessage;
import cn.jpush.android.service.JPushMessageReceiver;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseLoginTypeActivity;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.utils.PushUtils;
import java.util.Map;
/* loaded from: classes4.dex */
public class CustomPushReceiver extends JPushMessageReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f26164a = false;

    /* renamed from: b  reason: collision with root package name */
    public static int f26165b;

    /* loaded from: classes4.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            if (e.g().c() != null) {
                PushUtils.setJPushAlias(e.g().getUserId());
            }
        }
    }

    /* loaded from: classes4.dex */
    class b extends TypeToken<Map> {
        b() {
        }
    }

    /* loaded from: classes4.dex */
    class c extends TypeToken<Map> {
        c() {
        }
    }

    /* loaded from: classes4.dex */
    class d extends TypeToken<Map> {
        d() {
        }
    }

    public static void a() {
        f26165b = 0;
        f26164a = false;
        JPushInterface.deleteAlias(BaseApplication.getInstance(), PushUtils.sSequence);
    }

    @Override // cn.jpush.android.service.JPushMessageReceiver
    public void onAliasOperatorResult(Context context, JPushMessage jPushMessage) {
        super.onAliasOperatorResult(context, jPushMessage);
        LogUtils.i("CustomPushReceiver", "onAliasOperatorResult: " + jPushMessage.toString());
        if (!TextUtils.isEmpty(e.g().getUserId())) {
            int errorCode = jPushMessage.getErrorCode();
            if (errorCode != 0) {
                if (errorCode == 6017 || errorCode == 6027) {
                    new PostRequest("tokens/user/jpush/delete_alias").M(new a());
                    return;
                }
                return;
            }
            ToastUtils.debugToast(context, "(仅测试)极光初始化成功了,重试次数：" + f26165b);
            f26165b = 0;
            f26164a = true;
            if (com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().f17947q) {
                com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().M(true);
            }
            PushUtils.removeAliasRunnable();
        }
    }

    @Override // cn.jpush.android.service.JPushMessageReceiver
    public void onMessage(Context context, CustomMessage customMessage) {
        super.onMessage(context, customMessage);
        LogUtils.e(PushUtils.KEY_FROM_PUSH, "onMessage = " + customMessage.toString());
        PushUtils.receiveCustomMessage(context, (Map) new Gson().fromJson(customMessage.extra, new b().getType()), customMessage.extra);
    }

    @Override // cn.jpush.android.service.JPushMessageReceiver
    public void onMultiActionClicked(Context context, Intent intent) {
        super.onMultiActionClicked(context, intent);
        LogUtils.e(PushUtils.KEY_FROM_PUSH, "[onMultiActionClicked] 用户点击了通知栏按钮");
        String string = intent.getExtras().getString(JPushInterface.EXTRA_NOTIFICATION_ACTION_EXTRA);
        if (string == null) {
            Log.d(PushUtils.KEY_FROM_PUSH, "ACTION_NOTIFICATION_CLICK_ACTION nActionExtra is null");
        } else if (string.equals("my_extra1")) {
            LogUtils.e(PushUtils.KEY_FROM_PUSH, "[onMultiActionClicked] 用户点击通知栏按钮一");
        } else if (string.equals("my_extra2")) {
            LogUtils.e(PushUtils.KEY_FROM_PUSH, "[onMultiActionClicked] 用户点击通知栏按钮二");
        } else if (string.equals("my_extra3")) {
            LogUtils.e(PushUtils.KEY_FROM_PUSH, "[onMultiActionClicked] 用户点击通知栏按钮三");
        } else {
            LogUtils.e(PushUtils.KEY_FROM_PUSH, "[onMultiActionClicked] 用户点击通知栏按钮未定义");
        }
    }

    @Override // cn.jpush.android.service.JPushMessageReceiver
    public void onNotifyMessageArrived(Context context, NotificationMessage notificationMessage) {
        super.onNotifyMessageArrived(context, notificationMessage);
        LogUtils.e(PushUtils.KEY_FROM_PUSH, "onNotifyMessageArrived = " + notificationMessage.notificationExtras);
        PushUtils.receiveNotification(context, (Map) new Gson().fromJson(notificationMessage.notificationExtras, new c().getType()));
    }

    @Override // cn.jpush.android.service.JPushMessageReceiver
    public void onNotifyMessageOpened(Context context, NotificationMessage notificationMessage) {
        Boolean bool = (Boolean) MemoryCache.getInstance().get(ChooseLoginTypeActivity.class.getSimpleName());
        Boolean bool2 = (Boolean) MemoryCache.getInstance().get(MainActivity.class.getSimpleName());
        if ((bool != null && bool.booleanValue()) || (bool2 != null && bool2.booleanValue())) {
            PushUtils.moveToFront();
        } else {
            LogUtils.i(PushUtils.KEY_FROM_PUSH, "From onNotifyMessageOpened to MainActivity");
            super.onNotifyMessageOpened(context, notificationMessage);
        }
        LogUtils.e(PushUtils.KEY_FROM_PUSH, "onNotifyMessageOpened = " + notificationMessage.toString());
        PushUtils.savePushTag(context, (Map) new Gson().fromJson(notificationMessage.notificationExtras, new d().getType()));
        JPushInterface.reportNotificationOpened(context, notificationMessage.msgId, (byte) notificationMessage.platform);
        EventTrackingUtils.getInstance().track(EventTrackingUtils.JPUSH_NOTIFICATION_CLICK);
    }
}
