package com.meizu.cloud.pushsdk;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Process;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.util.d;
import java.util.List;
/* loaded from: classes4.dex */
public class NotificationService extends IntentService {
    public NotificationService() {
        super("NotificationService");
    }

    public NotificationService(String str) {
        super(str);
    }

    public String a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        Intent intent = new Intent(str2);
        intent.setPackage(str);
        List<ResolveInfo> queryBroadcastReceivers = getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) {
            return null;
        }
        return queryBroadcastReceivers.get(0).activityInfo.name;
    }

    public void a(Intent intent) {
        String a10 = a(getPackageName(), intent.getAction());
        if (TextUtils.isEmpty(a10)) {
            d.a(this, intent, "reflectReceiver sendbroadcast", 2005);
            DebugLogger.i("NotificationService", " reflectReceiver error: receiver for: " + intent.getAction() + " not found, package: " + getPackageName());
            intent.setPackage(getPackageName());
            sendBroadcast(intent);
            return;
        }
        try {
            d.a(this, intent, "reflectReceiver startservice", 2003);
            intent.setClassName(getPackageName(), a10);
            com.meizu.cloud.pushsdk.b.b.d a11 = com.meizu.cloud.pushsdk.b.b.a.a(a10).a((Class<?>[]) null).a(null);
            if (!a11.f28220a || a11.f28221b == 0) {
                return;
            }
            DebugLogger.i("NotificationService", "Reflect MzPushReceiver true");
            com.meizu.cloud.pushsdk.b.b.a.a(a11.f28221b).a("onReceive", Context.class, Intent.class).a(a11.f28221b, getApplicationContext(), intent);
        } catch (Exception e10) {
            DebugLogger.i("NotificationService", "reflect e: " + e10);
            d.a(this, intent, e10.getMessage(), 2004);
        }
    }

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        DebugLogger.i("NotificationService", "NotificationService destroy");
        super.onDestroy();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        boolean z10;
        Process.setThreadPriority(10);
        if (intent == null) {
            return;
        }
        try {
            DebugLogger.i("NotificationService", "onHandleIntent action " + intent.getAction());
            intent.getStringExtra(PushConstants.MZ_PUSH_MESSAGE_METHOD);
            String stringExtra = intent.getStringExtra("command_type");
            if (!PushConstants.MZ_PUSH_ON_MESSAGE_ACTION.equals(intent.getAction()) && !PushConstants.MZ_PUSH_ON_REGISTER_ACTION.equals(intent.getAction()) && !PushConstants.MZ_PUSH_ON_UNREGISTER_ACTION.equals(intent.getAction())) {
                z10 = false;
                DebugLogger.d("NotificationService", "-- command_type -- " + stringExtra + " legalAction " + z10);
                if (TextUtils.isEmpty(stringExtra) && "reflect_receiver".equals(stringExtra) && z10) {
                    String stringExtra2 = intent.getStringExtra(PushConstants.MZ_PUSH_CONTROL_MESSAGE);
                    DebugLogger.i("NotificationService", "control message is " + stringExtra2);
                    if (!TextUtils.isEmpty(stringExtra2)) {
                        com.meizu.cloud.pushsdk.d.a.a(this, new com.meizu.cloud.pushsdk.handler.a.c.b(stringExtra2, null, null).b().c());
                    }
                    a(intent);
                    return;
                }
                return;
            }
            z10 = true;
            DebugLogger.d("NotificationService", "-- command_type -- " + stringExtra + " legalAction " + z10);
            if (TextUtils.isEmpty(stringExtra)) {
            }
        } catch (Exception e10) {
            DebugLogger.e("NotificationService", "onHandleIntent error " + e10.getMessage());
        }
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
