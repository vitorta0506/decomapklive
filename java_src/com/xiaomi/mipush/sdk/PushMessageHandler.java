package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.MessageHandleService;
import com.xiaomi.mipush.sdk.j;
import com.xiaomi.push.bg;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class PushMessageHandler extends BaseService {

    /* renamed from: a  reason: collision with root package name */
    private static List<j.a> f36204a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private static List<j.b> f36205b = new ArrayList();

    /* renamed from: a  reason: collision with other field name */
    private static ThreadPoolExecutor f15a = new ThreadPoolExecutor(1, 1, 15, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a extends Serializable {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a() {
        synchronized (f36205b) {
            f36205b.clear();
        }
    }

    public static void a(long j10, String str, String str2) {
        synchronized (f36205b) {
            for (j.b bVar : f36205b) {
                bVar.c(j10, str, str2);
            }
        }
    }

    public static void a(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, PushMessageHandler.class));
        try {
            context.startService(intent);
        } catch (Exception e10) {
            tf.c.l(e10.getMessage());
        }
    }

    public static void a(Context context, Intent intent) {
        tf.c.t("addjob PushMessageHandler " + intent);
        if (intent != null) {
            c(context, intent);
            a(context);
        }
    }

    private static void a(Context context, Intent intent, ResolveInfo resolveInfo, boolean z10) {
        try {
            MessageHandleService.a aVar = new MessageHandleService.a(intent, (PushMessageReceiver) sf.j.c(context, resolveInfo.activityInfo.name).newInstance());
            if (z10) {
                MessageHandleService.a(context.getApplicationContext(), aVar);
            } else {
                MessageHandleService.addJob(context.getApplicationContext(), aVar);
            }
            MessageHandleService.a(context, new Intent(context.getApplicationContext(), MessageHandleService.class));
        } catch (Throwable th2) {
            tf.c.o(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, MiPushCommandMessage miPushCommandMessage) {
        synchronized (f36204a) {
            for (j.a aVar : f36204a) {
            }
        }
    }

    public static void a(Context context, MiPushMessage miPushMessage) {
        synchronized (f36205b) {
            for (j.b bVar : f36205b) {
                if (a(miPushMessage.getCategory(), bVar.a())) {
                    bVar.e(miPushMessage.getContent(), miPushMessage.getAlias(), miPushMessage.getTopic(), miPushMessage.isNotified());
                    bVar.d(miPushMessage);
                }
            }
        }
    }

    public static void a(Context context, a aVar) {
        if (aVar instanceof MiPushMessage) {
            a(context, (MiPushMessage) aVar);
        } else if (aVar instanceof MiPushCommandMessage) {
            MiPushCommandMessage miPushCommandMessage = (MiPushCommandMessage) aVar;
            String command = miPushCommandMessage.getCommand();
            String str = null;
            if (bg.COMMAND_REGISTER.f21a.equals(command)) {
                List<String> commandArguments = miPushCommandMessage.getCommandArguments();
                if (commandArguments != null && !commandArguments.isEmpty()) {
                    str = commandArguments.get(0);
                }
                a(miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), str);
            } else if (bg.COMMAND_SET_ALIAS.f21a.equals(command) || bg.COMMAND_UNSET_ALIAS.f21a.equals(command) || bg.COMMAND_SET_ACCEPT_TIME.f21a.equals(command)) {
                a(context, miPushCommandMessage.getCategory(), command, miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), miPushCommandMessage.getCommandArguments());
            } else if (bg.COMMAND_SUBSCRIBE_TOPIC.f21a.equals(command)) {
                List<String> commandArguments2 = miPushCommandMessage.getCommandArguments();
                if (commandArguments2 != null && !commandArguments2.isEmpty()) {
                    str = commandArguments2.get(0);
                }
                a(context, miPushCommandMessage.getCategory(), miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), str);
            } else if (bg.COMMAND_UNSUBSCRIBE_TOPIC.f21a.equals(command)) {
                List<String> commandArguments3 = miPushCommandMessage.getCommandArguments();
                if (commandArguments3 != null && !commandArguments3.isEmpty()) {
                    str = commandArguments3.get(0);
                }
                b(context, miPushCommandMessage.getCategory(), miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, String str, long j10, String str2, String str3) {
        synchronized (f36205b) {
            for (j.b bVar : f36205b) {
                if (a(str, bVar.a())) {
                    bVar.f(j10, str2, str3);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, String str, String str2, long j10, String str3, List<String> list) {
        synchronized (f36205b) {
            for (j.b bVar : f36205b) {
                if (a(str, bVar.a())) {
                    bVar.b(str2, j10, str3, list);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(j.a aVar) {
        synchronized (f36204a) {
            if (!f36204a.contains(aVar)) {
                f36204a.add(aVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(j.b bVar) {
        synchronized (f36205b) {
            if (!f36205b.contains(bVar)) {
                f36205b.add(bVar);
            }
        }
    }

    protected static boolean a(String str, String str2) {
        return (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) || TextUtils.equals(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void b() {
        synchronized (f36204a) {
            f36204a.clear();
        }
    }

    private static void b(Context context) {
        try {
            Intent intent = new Intent();
            intent.setPackage(context.getPackageName());
            intent.setAction("action_clicked_activity_finish");
            context.sendBroadcast(intent, e0.a(context));
        } catch (Exception e10) {
            tf.c.l("callback sync error" + e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void b(Context context, Intent intent) {
        boolean z10 = false;
        try {
            z10 = intent.getBooleanExtra("is_clicked_activity_call", false);
        } catch (Throwable th2) {
            tf.c.l("intent unparcel error:" + th2);
        }
        try {
            if (!"com.xiaomi.mipush.SEND_TINYDATA".equals(intent.getAction())) {
                if (1 == m.c(context)) {
                    if (m1402b()) {
                        tf.c.u("receive a message before application calling initialize");
                        if (z10) {
                            b(context);
                            return;
                        }
                        return;
                    }
                    a b10 = u.e(context).b(intent);
                    if (b10 != null) {
                        a(context, b10);
                    }
                } else if (!"com.xiaomi.mipush.sdk.SYNC_LOG".equals(intent.getAction())) {
                    Intent intent2 = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
                    intent2.setPackage(context.getPackageName());
                    intent2.putExtras(intent);
                    try {
                        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent2, 32);
                        ResolveInfo resolveInfo = null;
                        if (queryBroadcastReceivers != null) {
                            Iterator<ResolveInfo> it = queryBroadcastReceivers.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                ResolveInfo next = it.next();
                                ActivityInfo activityInfo = next.activityInfo;
                                if (activityInfo != null && activityInfo.packageName.equals(context.getPackageName()) && PushMessageReceiver.class.isAssignableFrom(sf.j.c(context, next.activityInfo.name))) {
                                    resolveInfo = next;
                                    break;
                                }
                            }
                        }
                        if (resolveInfo != null) {
                            a(context, intent2, resolveInfo, z10);
                        } else {
                            tf.c.u("cannot find the receiver to handler this message, check your manifest");
                        }
                    } catch (Exception e10) {
                        tf.c.o(e10);
                    }
                }
            }
            if (!z10) {
            }
        } catch (Throwable th3) {
            try {
                tf.c.o(th3);
            } finally {
                if (z10) {
                    b(context);
                }
            }
        }
    }

    protected static void b(Context context, String str, long j10, String str2, String str3) {
        synchronized (f36205b) {
            for (j.b bVar : f36205b) {
                if (a(str, bVar.a())) {
                    bVar.g(j10, str2, str3);
                }
            }
        }
    }

    /* renamed from: b  reason: collision with other method in class */
    public static boolean m1402b() {
        return f36205b.isEmpty();
    }

    private static void c(Context context, Intent intent) {
        if (intent == null || f15a.isShutdown()) {
            return;
        }
        f15a.execute(new t(context, intent));
    }

    @Override // com.xiaomi.mipush.sdk.BaseService
    /* renamed from: a  reason: collision with other method in class */
    protected boolean mo1403a() {
        ThreadPoolExecutor threadPoolExecutor = f15a;
        return (threadPoolExecutor == null || threadPoolExecutor.getQueue() == null || f15a.getQueue().size() <= 0) ? false : true;
    }

    @Override // com.xiaomi.mipush.sdk.BaseService, android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // com.xiaomi.mipush.sdk.BaseService, android.app.Service
    public void onStart(Intent intent, int i9) {
        super.onStart(intent, i9);
        c(getApplicationContext(), intent);
    }
}
