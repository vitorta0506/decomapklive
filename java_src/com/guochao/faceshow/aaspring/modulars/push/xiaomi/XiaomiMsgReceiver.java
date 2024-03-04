package com.guochao.faceshow.aaspring.modulars.push.xiaomi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.welcome.SplashActivity;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MapUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.HandlerGetter;
import com.xiaomi.mipush.sdk.MiPushCommandMessage;
import com.xiaomi.mipush.sdk.MiPushMessage;
import com.xiaomi.mipush.sdk.PushMessageReceiver;
import com.xiaomi.mipush.sdk.j;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class XiaomiMsgReceiver extends PushMessageReceiver {

    /* renamed from: a  reason: collision with root package name */
    private String f21661a;

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MiPushMessage f21662a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f21663b;

        a(MiPushMessage miPushMessage, Context context) {
            this.f21662a = miPushMessage;
            this.f21663b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ThirdPushHelper.onReceiveOnlineMessage(this.f21663b, this.f21662a.getExtra(), ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL);
            } catch (Exception e10) {
                LogUtils.e("XiaomiMsgReceiver", "received a mi push message that is not a json ," + this.f21662a.toString(), e10);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ThirdPushHelper.setThirdPushToken(ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL, XiaomiMsgReceiver.this.f21661a, true);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MiPushMessage f21666a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f21667b;

        c(MiPushMessage miPushMessage, Context context) {
            this.f21666a = miPushMessage;
            this.f21667b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            LogUtils.i("XiaomiMsgReceiver", "onNotificationMessageClicked: " + this.f21666a.toString());
            Map<String, String> extra = this.f21666a.getExtra();
            if (extra.containsKey("ext")) {
                XiaomiMsgReceiver.this.e(extra, extra.get("ext"));
                extra.put("type_id", "10000");
                extra.put("firm_type", ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL);
            }
            Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
            Intent intent = new Intent(this.f21667b, SplashActivity.class);
            intent.putExtras(MapUtils.toBundle(new HashMap(extra)));
            intent.addFlags(268435456);
            if (currTopActivity != null) {
                currTopActivity.startActivity(intent);
            } else {
                this.f21667b.startActivity(intent);
            }
        }
    }

    public static int c() {
        if (j.c0(BaseApplication.getInstance())) {
            String y10 = j.y(BaseApplication.getInstance());
            if (TextUtils.isEmpty(y10)) {
                return 5;
            }
            String lowerCase = y10.toLowerCase();
            lowerCase.hashCode();
            char c10 = 65535;
            switch (lowerCase.hashCode()) {
                case -1504353500:
                    if (lowerCase.equals("singapore")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1291864670:
                    if (lowerCase.equals("europe")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1243020381:
                    if (lowerCase.equals("global")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -919652293:
                    if (lowerCase.equals("russia")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 94631255:
                    if (lowerCase.equals("china")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 100346167:
                    if (lowerCase.equals("india")) {
                        c10 = 5;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                case 2:
                    return 4;
                case 1:
                    return 1;
                case 3:
                    return 2;
                case 4:
                    return 0;
                case 5:
                    return 3;
                default:
                    return 5;
            }
        }
        return 5;
    }

    public static int d() {
        if (j.c0(BaseApplication.getInstance())) {
            String y10 = j.y(BaseApplication.getInstance());
            if (TextUtils.isEmpty(y10)) {
                return BaseConfig.XM_PUSH_OTHER;
            }
            String lowerCase = y10.toLowerCase();
            lowerCase.hashCode();
            char c10 = 65535;
            switch (lowerCase.hashCode()) {
                case -1291864670:
                    if (lowerCase.equals("europe")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -919652293:
                    if (lowerCase.equals("russia")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 94631255:
                    if (lowerCase.equals("china")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 100346167:
                    if (lowerCase.equals("india")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    return BaseConfig.XM_PUSH_EUROPE;
                case 1:
                    return BaseConfig.XM_PUSH_RUSSIA;
                case 2:
                    return BaseConfig.XM_CHINA_PUSH_BUZID_V2;
                case 3:
                    return BaseConfig.XM_PUSH_INDIA;
                default:
                    return BaseConfig.XM_PUSH_OTHER;
            }
        }
        return BaseConfig.XM_PUSH_OTHER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Map<String, String> map, String str) {
        try {
            for (Map.Entry<String, Object> entry : MapUtils.toMap(new JSONObject(str)).entrySet()) {
                map.put(entry.getKey(), String.valueOf(entry.getValue()));
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.xiaomi.mipush.sdk.PushMessageReceiver
    public void onCommandResult(Context context, MiPushCommandMessage miPushCommandMessage) {
        super.onCommandResult(context, miPushCommandMessage);
    }

    @Override // com.xiaomi.mipush.sdk.PushMessageReceiver
    public void onNotificationMessageArrived(Context context, MiPushMessage miPushMessage) {
        LogUtils.i("XiaomiMsgReceiver", "onNotificationMessageArrived is called. ");
    }

    @Override // com.xiaomi.mipush.sdk.PushMessageReceiver
    public void onNotificationMessageClicked(Context context, MiPushMessage miPushMessage) {
        super.onNotificationMessageClicked(context, miPushMessage);
        HandlerGetter.runOnUIThread(new c(miPushMessage, context));
    }

    @Override // com.xiaomi.mipush.sdk.PushMessageReceiver
    public void onReceivePassThroughMessage(Context context, MiPushMessage miPushMessage) {
        LogUtils.i("XiaomiMsgReceiver", "onReceivePassThroughMessage is called. ");
        HandlerGetter.runOnUIThread(new a(miPushMessage, context));
    }

    @Override // com.xiaomi.mipush.sdk.PushMessageReceiver
    public void onReceiveRegisterResult(Context context, MiPushCommandMessage miPushCommandMessage) {
        LogUtils.i("XiaomiMsgReceiver", "onReceiveRegisterResult is called. " + miPushCommandMessage.toString());
        String command = miPushCommandMessage.getCommand();
        List<String> commandArguments = miPushCommandMessage.getCommandArguments();
        String str = (commandArguments == null || commandArguments.size() <= 0) ? null : commandArguments.get(0);
        LogUtils.i("XiaomiMsgReceiver", "cmd: " + command + " | arg: " + str + " | result: " + miPushCommandMessage.getResultCode() + " | reason: " + miPushCommandMessage.getReason());
        if ("register".equals(command) && miPushCommandMessage.getResultCode() == 0) {
            this.f21661a = str;
        }
        LogUtils.i("XiaomiMsgReceiver", "regId: " + this.f21661a);
        HandlerGetter.runOnUIThread(new b());
    }
}
