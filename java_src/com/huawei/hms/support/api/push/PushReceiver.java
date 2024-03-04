package com.huawei.hms.support.api.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.push.h;
import com.huawei.hms.push.s;
import com.huawei.hms.push.utils.JsonUtil;
import com.huawei.hms.push.v;
import com.huawei.hms.push.w;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.ResourceLoaderUtil;
import java.util.concurrent.RejectedExecutionException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public final class PushReceiver extends BroadcastReceiver {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public Context f27812a;

        /* renamed from: b  reason: collision with root package name */
        public Intent f27813b;

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent("com.huawei.push.action.MESSAGING_EVENT");
            intent.setPackage(this.f27813b.getPackage());
            try {
                JSONObject b10 = PushReceiver.b(this.f27813b);
                String string = JsonUtil.getString(b10, "moduleName", "");
                int i9 = JsonUtil.getInt(b10, "msgType", 0);
                int i10 = JsonUtil.getInt(b10, "status", 0);
                if (ErrorEnum.SUCCESS.getInternalCode() != i10) {
                    i10 = ErrorEnum.ERROR_APP_SERVER_NOT_ONLINE.getInternalCode();
                }
                Bundle bundle = new Bundle();
                if ("Push".equals(string) && i9 == 1) {
                    bundle.putString(RemoteMessageConst.MSGTYPE, "delivery");
                    bundle.putString("message_id", JsonUtil.getString(b10, RemoteMessageConst.MSGID, ""));
                    bundle.putInt("error", i10);
                    bundle.putString(CommonCode.MapKey.TRANSACTION_ID, JsonUtil.getString(b10, "transactionId", ""));
                } else {
                    if (this.f27813b.getExtras() != null) {
                        bundle.putAll(this.f27813b.getExtras());
                    }
                    bundle.putString(RemoteMessageConst.MSGTYPE, "received_message");
                    bundle.putString("message_id", this.f27813b.getStringExtra("msgIdStr"));
                    bundle.putByteArray(RemoteMessageConst.MSGBODY, this.f27813b.getByteArrayExtra("msg_data"));
                    bundle.putString(RemoteMessageConst.DEVICE_TOKEN, w.a(this.f27813b.getByteArrayExtra(RemoteMessageConst.DEVICE_TOKEN)));
                    bundle.putInt(RemoteMessageConst.INPUT_TYPE, 1);
                    bundle.putString("message_proxy_type", this.f27813b.getStringExtra("message_proxy_type"));
                }
                if (new h().a(this.f27812a, bundle, intent)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("receive ");
                    sb2.append(this.f27813b.getAction());
                    sb2.append(" and start service success");
                    HMSLog.i("PushReceiver", sb2.toString());
                    return;
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("receive ");
                sb3.append(this.f27813b.getAction());
                sb3.append(" and start service failed");
                HMSLog.e("PushReceiver", sb3.toString());
            } catch (RuntimeException unused) {
                HMSLog.e("PushReceiver", "handle push message occur exception.");
            }
        }

        public a(Context context, Intent intent) {
            this.f27812a = context;
            this.f27813b = intent;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public Context f27814a;

        /* renamed from: b  reason: collision with root package name */
        public Intent f27815b;

        @Override // java.lang.Runnable
        public void run() {
            try {
                byte[] byteArrayExtra = this.f27815b.getByteArrayExtra(RemoteMessageConst.DEVICE_TOKEN);
                if (byteArrayExtra != null && byteArrayExtra.length != 0) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("receive a push token: ");
                    sb2.append(this.f27814a.getPackageName());
                    HMSLog.i("PushReceiver", sb2.toString());
                    Intent intent = new Intent("com.huawei.push.action.MESSAGING_EVENT");
                    intent.setPackage(this.f27815b.getPackage());
                    Bundle bundle = new Bundle();
                    bundle.putString(RemoteMessageConst.MSGTYPE, "new_token");
                    bundle.putString(RemoteMessageConst.DEVICE_TOKEN, w.a(byteArrayExtra));
                    bundle.putString(CommonCode.MapKey.TRANSACTION_ID, this.f27815b.getStringExtra(CommonCode.MapKey.TRANSACTION_ID));
                    bundle.putString("subjectId", this.f27815b.getStringExtra("subjectId"));
                    bundle.putInt("error", this.f27815b.getIntExtra("error", ErrorEnum.SUCCESS.getInternalCode()));
                    bundle.putString("belongId", this.f27815b.getStringExtra("belongId"));
                    if (new h().a(this.f27814a, bundle, intent)) {
                        return;
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("receive ");
                    sb3.append(this.f27815b.getAction());
                    sb3.append(" and start service failed");
                    HMSLog.e("PushReceiver", sb3.toString());
                    return;
                }
                HMSLog.i("PushReceiver", "get a deviceToken, but it is null or empty");
            } catch (RejectedExecutionException unused) {
                HMSLog.e("PushReceiver", "execute task error");
            } catch (Exception unused2) {
                HMSLog.e("PushReceiver", "handle push token error");
            }
        }

        public b(Context context, Intent intent) {
            this.f27814a = context;
            this.f27815b = intent;
        }
    }

    public final void b(Context context, Intent intent) {
        try {
            if (intent.hasExtra(RemoteMessageConst.DEVICE_TOKEN)) {
                v.a().execute(new b(context, intent));
            } else {
                HMSLog.i("PushReceiver", "This message dose not sent by hwpush.");
            }
        } catch (RuntimeException unused) {
            HMSLog.e("PushReceiver", "handlePushMessageEvent execute task runtime exception.");
        } catch (Exception unused2) {
            HMSLog.e("PushReceiver", "handlePushTokenEvent execute task error");
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || context == null) {
            return;
        }
        HMSLog.i("PushReceiver", "push receive broadcast message, Intent:" + intent.getAction() + " pkgName:" + context.getPackageName());
        try {
            intent.getStringExtra("TestIntent");
            String action = intent.getAction();
            if (ResourceLoaderUtil.getmContext() == null) {
                ResourceLoaderUtil.setmContext(context.getApplicationContext());
            }
            if ("com.huawei.android.push.intent.REGISTRATION".equals(action)) {
                b(context, intent);
            } else if ("com.huawei.android.push.intent.RECEIVE".equals(action)) {
                a(context, intent);
            } else {
                HMSLog.i("PushReceiver", "message can't be recognised.");
            }
        } catch (Exception unused) {
            HMSLog.e("PushReceiver", "intent has some error");
        }
    }

    public final void a(Context context, Intent intent) {
        try {
            if (intent.hasExtra("msg_data")) {
                v.a().execute(new a(context, intent));
            } else {
                HMSLog.i("PushReceiver", "This push message dose not sent by hwpush.");
            }
        } catch (RuntimeException unused) {
            HMSLog.e("PushReceiver", "handlePushMessageEvent execute task runtime exception.");
        } catch (Exception unused2) {
            HMSLog.e("PushReceiver", "handlePushMessageEvent execute task error");
        }
    }

    public static JSONObject b(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.PS_CONTENT);
        }
        return null;
    }

    public static JSONObject a(byte[] bArr) {
        try {
            return new JSONObject(w.a(bArr));
        } catch (JSONException unused) {
            HMSLog.w("PushReceiver", "JSONException:parse message body failed.");
            return null;
        }
    }

    public static JSONObject b(Intent intent) throws RuntimeException {
        JSONObject a10 = a(intent.getByteArrayExtra("msg_data"));
        JSONObject a11 = a(a10);
        String string = JsonUtil.getString(a11, "data", null);
        if (s.a(a11, b(a11), string)) {
            return a10;
        }
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return new JSONObject(string);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static JSONObject a(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.MSG_CONTENT);
        }
        return null;
    }
}
