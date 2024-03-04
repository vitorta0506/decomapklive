package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.xiaomi.mipush.sdk.PushMessageHandler;
import com.xiaomi.push.bg;
import com.xiaomi.push.f3;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class MessageHandleService extends BaseService {

    /* renamed from: a  reason: collision with root package name */
    private static ConcurrentLinkedQueue<a> f36200a = new ConcurrentLinkedQueue<>();

    /* renamed from: a  reason: collision with other field name */
    private static ExecutorService f13a = new ThreadPoolExecutor(1, 1, 15, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private PushMessageReceiver f36201a;

        /* renamed from: b  reason: collision with root package name */
        private Intent f36202b;

        public a(Intent intent, PushMessageReceiver pushMessageReceiver) {
            this.f36201a = pushMessageReceiver;
            this.f36202b = intent;
        }

        public Intent a() {
            return this.f36202b;
        }

        public PushMessageReceiver b() {
            return this.f36201a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        b(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, a aVar) {
        String[] stringArrayExtra;
        if (aVar == null) {
            return;
        }
        try {
            PushMessageReceiver b10 = aVar.b();
            Intent a10 = aVar.a();
            int intExtra = a10.getIntExtra(RemoteMessageConst.MSGTYPE, 1);
            if (intExtra == 1) {
                PushMessageHandler.a b11 = u.e(context).b(a10);
                a10.getIntExtra("eventMessageType", -1);
                if (b11 == null) {
                    return;
                }
                if (b11 instanceof MiPushMessage) {
                    MiPushMessage miPushMessage = (MiPushMessage) b11;
                    if (!miPushMessage.isArrivedMessage()) {
                        b10.onReceiveMessage(context, miPushMessage);
                    }
                    if (miPushMessage.getPassThrough() == 1) {
                        tf.c.v("begin execute onReceivePassThroughMessage from " + miPushMessage.getMessageId());
                        b10.onReceivePassThroughMessage(context, miPushMessage);
                        return;
                    } else if (miPushMessage.isNotified()) {
                        tf.c.v("begin execute onNotificationMessageClicked from\u3000" + miPushMessage.getMessageId());
                        b10.onNotificationMessageClicked(context, miPushMessage);
                        return;
                    } else {
                        tf.c.v("begin execute onNotificationMessageArrived from " + miPushMessage.getMessageId());
                        b10.onNotificationMessageArrived(context, miPushMessage);
                        return;
                    }
                } else if (!(b11 instanceof MiPushCommandMessage)) {
                    return;
                } else {
                    MiPushCommandMessage miPushCommandMessage = (MiPushCommandMessage) b11;
                    tf.c.v("begin execute onCommandResult, command=" + miPushCommandMessage.getCommand() + ", resultCode=" + miPushCommandMessage.getResultCode() + ", reason=" + miPushCommandMessage.getReason());
                    b10.onCommandResult(context, miPushCommandMessage);
                    if (!TextUtils.equals(miPushCommandMessage.getCommand(), bg.COMMAND_REGISTER.f21a)) {
                        return;
                    }
                    b10.onReceiveRegisterResult(context, miPushCommandMessage);
                    PushMessageHandler.a(context, miPushCommandMessage);
                    if (miPushCommandMessage.getResultCode() != 0) {
                        return;
                    }
                }
            } else if (intExtra != 3) {
                if (intExtra == 5 && "error_lack_of_permission".equals(a10.getStringExtra(NativeProtocol.BRIDGE_ARG_ERROR_TYPE)) && (stringArrayExtra = a10.getStringArrayExtra(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE)) != null) {
                    tf.c.v("begin execute onRequirePermissions, lack of necessary permissions");
                    b10.onRequirePermissions(context, stringArrayExtra);
                    return;
                }
                return;
            } else {
                MiPushCommandMessage miPushCommandMessage2 = (MiPushCommandMessage) a10.getSerializableExtra("key_command");
                tf.c.v("(Local) begin execute onCommandResult, command=" + miPushCommandMessage2.getCommand() + ", resultCode=" + miPushCommandMessage2.getResultCode() + ", reason=" + miPushCommandMessage2.getReason());
                b10.onCommandResult(context, miPushCommandMessage2);
                if (!TextUtils.equals(miPushCommandMessage2.getCommand(), bg.COMMAND_REGISTER.f21a)) {
                    return;
                }
                b10.onReceiveRegisterResult(context, miPushCommandMessage2);
                PushMessageHandler.a(context, miPushCommandMessage2);
                if (miPushCommandMessage2.getResultCode() != 0) {
                    return;
                }
            }
            i0.l(context);
        } catch (RuntimeException e10) {
            tf.c.o(e10);
        }
    }

    public static void addJob(Context context, a aVar) {
        if (aVar != null) {
            f36200a.add(aVar);
            b(context);
            startService(context);
        }
    }

    private static void b(Context context) {
        if (f13a.isShutdown()) {
            return;
        }
        f13a.execute(new t0(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context) {
        try {
            a(context, f36200a.poll());
        } catch (RuntimeException e10) {
            tf.c.o(e10);
        }
    }

    public static void startService(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, MessageHandleService.class));
        f3.b(context).g(new s0(context, intent));
    }

    @Override // com.xiaomi.mipush.sdk.BaseService
    /* renamed from: a */
    protected boolean mo1403a() {
        ConcurrentLinkedQueue<a> concurrentLinkedQueue = f36200a;
        return concurrentLinkedQueue != null && concurrentLinkedQueue.size() > 0;
    }

    @Override // com.xiaomi.mipush.sdk.BaseService, android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // com.xiaomi.mipush.sdk.BaseService, android.app.Service
    public void onStart(Intent intent, int i9) {
        super.onStart(intent, i9);
    }
}
