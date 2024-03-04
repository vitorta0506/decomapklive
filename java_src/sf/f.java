package sf;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
/* loaded from: classes5.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Handler f57898a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Handler f57899b;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f57900c = new Object();

    public static Intent a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return b(context, broadcastReceiver, intentFilter, null);
    }

    public static Intent b(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str) {
        if (context == null || broadcastReceiver == null || intentFilter == null) {
            return null;
        }
        return context.registerReceiver(broadcastReceiver, intentFilter, str, f());
    }

    public static Handler c() {
        if (f57899b == null) {
            synchronized (f57900c) {
                if (f57899b == null) {
                    HandlerThread handlerThread = new HandlerThread("receiver_task");
                    handlerThread.start();
                    f57899b = new Handler(handlerThread.getLooper());
                }
            }
        }
        return f57899b;
    }

    private static void d(Context context, ComponentName componentName) {
        f().post(new g(context, componentName));
    }

    public static void e(Context context, Class<?> cls) {
        if (context == null || cls == null) {
            return;
        }
        d(context, new ComponentName(context, cls));
    }

    private static Handler f() {
        if (f57898a == null) {
            synchronized (f.class) {
                if (f57898a == null) {
                    HandlerThread handlerThread = new HandlerThread("handle_receiver");
                    handlerThread.start();
                    f57898a = new Handler(handlerThread.getLooper());
                }
            }
        }
        return f57898a;
    }
}
