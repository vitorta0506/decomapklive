package cn.jiguang.b;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f2387a = false;

    /* renamed from: b  reason: collision with root package name */
    private static Handler f2388b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private Context f2389a;

        public a(Context context) {
            super(Looper.getMainLooper());
            this.f2389a = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            try {
                if (1 == message.what) {
                    f.c(this.f2389a);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void a(Context context) {
        boolean equals;
        synchronized (f.class) {
            try {
                equals = context.getPackageName().equals(cn.jiguang.f.a.a(context));
                cn.jiguang.as.d.c("ScreenRegister", "registerReceiver isCurProcess:" + equals);
            } catch (Throwable unused) {
            }
            if (equals) {
                if (f2387a) {
                    return;
                }
                f2387a = true;
                f2388b = new a(context);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                intentFilter.addAction("android.intent.action.USER_PRESENT");
                context.getApplicationContext().registerReceiver(new BroadcastReceiver() { // from class: cn.jiguang.b.f.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context2, Intent intent) {
                        if (intent == null) {
                            return;
                        }
                        try {
                            String action = intent.getAction();
                            cn.jiguang.as.d.c("ScreenRegister", "onReceive Action:" + action);
                            if (f.f2388b != null) {
                                f.f2388b.removeMessages(1);
                                f.f2388b.sendEmptyMessageDelayed(1, 2000L);
                            }
                        } catch (Throwable unused2) {
                        }
                    }
                }, intentFilter);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context) {
        boolean isScreenOn = ((PowerManager) context.getSystemService("power")).isScreenOn();
        cn.jiguang.as.d.c("ScreenRegister", "onReceive isScreenOn:" + isScreenOn);
        boolean inKeyguardRestrictedInputMode = ((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        cn.jiguang.as.d.c("ScreenRegister", "onReceive flag:" + inKeyguardRestrictedInputMode);
        boolean z10 = isScreenOn && !inKeyguardRestrictedInputMode;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onReceive status:");
        sb2.append(z10 ? "开" : "锁");
        cn.jiguang.as.d.c("ScreenRegister", sb2.toString());
        JSONObject jSONObject = new JSONObject();
        JSONObject a10 = cn.jiguang.d.a.a(context, jSONObject, "sc_status");
        jSONObject.put("status", z10);
        cn.jiguang.as.d.c("ScreenRegister", "onReceive jsonObject:" + a10);
        cn.jiguang.d.a.a(context, a10);
    }
}
