package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.xiaomi.push.di;
import com.xiaomi.push.dx;
import java.util.List;
/* loaded from: classes5.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static int f36258a;

    public static MiPushCommandMessage a(String str, List<String> list, long j10, String str2, String str3) {
        MiPushCommandMessage miPushCommandMessage = new MiPushCommandMessage();
        miPushCommandMessage.setCommand(str);
        miPushCommandMessage.setCommandArguments(list);
        miPushCommandMessage.setResultCode(j10);
        miPushCommandMessage.setReason(str2);
        miPushCommandMessage.setCategory(str3);
        return miPushCommandMessage;
    }

    public static MiPushMessage b(dx dxVar, di diVar, boolean z10) {
        MiPushMessage miPushMessage = new MiPushMessage();
        miPushMessage.setMessageId(dxVar.m1492a());
        if (!TextUtils.isEmpty(dxVar.d())) {
            miPushMessage.setMessageType(1);
            miPushMessage.setAlias(dxVar.d());
        } else if (!TextUtils.isEmpty(dxVar.c())) {
            miPushMessage.setMessageType(2);
            miPushMessage.setTopic(dxVar.c());
        } else if (TextUtils.isEmpty(dxVar.f())) {
            miPushMessage.setMessageType(0);
        } else {
            miPushMessage.setMessageType(3);
            miPushMessage.setUserAccount(dxVar.f());
        }
        miPushMessage.setCategory(dxVar.e());
        if (dxVar.a() != null) {
            miPushMessage.setContent(dxVar.a().c());
        }
        if (diVar != null) {
            if (TextUtils.isEmpty(miPushMessage.getMessageId())) {
                miPushMessage.setMessageId(diVar.m1424a());
            }
            if (TextUtils.isEmpty(miPushMessage.getTopic())) {
                miPushMessage.setTopic(diVar.m1429b());
            }
            miPushMessage.setDescription(diVar.d());
            miPushMessage.setTitle(diVar.m1432c());
            miPushMessage.setNotifyType(diVar.a());
            miPushMessage.setNotifyId(diVar.c());
            miPushMessage.setPassThrough(diVar.b());
            miPushMessage.setExtra(diVar.m1425a());
        }
        miPushMessage.setNotified(z10);
        return miPushMessage;
    }

    public static int c(Context context) {
        if (f36258a == 0) {
            g(e(context) ? 1 : 2);
        }
        return f36258a;
    }

    private static boolean d(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 32);
            if (queryBroadcastReceivers != null) {
                if (!queryBroadcastReceivers.isEmpty()) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean e(Context context) {
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.setClassName(context.getPackageName(), "com.xiaomi.mipush.sdk.PushServiceReceiver");
        return d(context, intent);
    }

    public static void f(Context context, MiPushCommandMessage miPushCommandMessage) {
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.setPackage(context.getPackageName());
        intent.putExtra(RemoteMessageConst.MSGTYPE, 3);
        intent.putExtra("key_command", miPushCommandMessage);
        new PushServiceReceiver().onReceive(context, intent);
    }

    private static void g(int i9) {
        f36258a = i9;
    }
}
