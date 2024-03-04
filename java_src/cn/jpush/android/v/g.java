package cn.jpush.android.v;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.jpush.android.helper.Logger;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static volatile g f3413a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f3414b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private boolean f3415c = false;

    /* renamed from: d  reason: collision with root package name */
    private ConcurrentHashMap<Integer, f> f3416d = new ConcurrentHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private Handler f3417e;

    /* loaded from: classes.dex */
    class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                f fVar = (f) g.this.f3416d.get(Integer.valueOf(message.what));
                if (fVar == null) {
                    Logger.w("InAppTaskHandlerManager", "miss task:" + message.what);
                    return;
                }
                if (fVar.f3412c != 1) {
                    g.this.f3416d.remove(Integer.valueOf(message.what));
                }
                fVar.a(message);
                Logger.d("InAppTaskHandlerManager", "delay message task time up, action: " + message.what + ", actionType: " + fVar.f3412c + ", hbTime: " + c.a().c());
                if (fVar.f3412c == 1) {
                    Logger.d("InAppTaskHandlerManager", "delay message task time up, send next delay task, hbTime: " + c.a().c());
                    sendEmptyMessageDelayed(message.what, ((long) c.a().c()) * 1000);
                }
            } catch (Throwable th2) {
                Logger.w("InAppTaskHandlerManager", "handleMessage,e:" + th2);
            }
        }
    }

    private g() {
    }

    public static g a() {
        if (f3413a == null) {
            synchronized (f3414b) {
                if (f3413a == null) {
                    f3413a = new g();
                }
            }
        }
        return f3413a;
    }

    public void a(int i9, long j10, f fVar) {
        if (this.f3417e == null) {
            return;
        }
        Logger.d("InAppTaskHandlerManager", "send delay hb message task, action: " + i9 + ", time: " + j10 + ", type: 1");
        fVar.f3411b = j10;
        fVar.f3412c = 1;
        this.f3416d.put(Integer.valueOf(i9), fVar);
        if (this.f3417e.hasMessages(i9)) {
            Logger.w("InAppTaskHandlerManager", "registerFixedAction,same action in handler,will replace");
            this.f3417e.removeMessages(i9);
        }
        this.f3417e.sendEmptyMessageDelayed(i9, j10);
    }

    public boolean a(int i9) {
        Handler handler = this.f3417e;
        if (handler == null) {
            return false;
        }
        return handler.hasMessages(i9);
    }

    public synchronized void b() {
        if (this.f3415c) {
            return;
        }
        Logger.d("InAppTaskHandlerManager", "init task manager...");
        try {
            this.f3417e = new a(Looper.getMainLooper());
        } catch (Exception unused) {
            this.f3417e = new a(Looper.getMainLooper());
        }
        this.f3415c = true;
    }

    public void b(int i9) {
        if (this.f3417e == null) {
            return;
        }
        this.f3416d.remove(Integer.valueOf(i9));
        this.f3417e.removeMessages(i9);
    }

    public void b(int i9, long j10, f fVar) {
        if (this.f3417e == null) {
            return;
        }
        fVar.f3412c = 2;
        this.f3416d.put(Integer.valueOf(i9), fVar);
        if (this.f3417e.hasMessages(i9)) {
            Logger.d("InAppTaskHandlerManager", "sendMsg,replace:" + i9);
            this.f3417e.removeMessages(i9);
        } else {
            Logger.d("InAppTaskHandlerManager", "sendMsg,action=" + i9);
        }
        this.f3417e.sendEmptyMessageDelayed(i9, j10);
    }
}
