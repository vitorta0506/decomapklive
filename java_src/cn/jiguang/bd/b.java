package cn.jiguang.bd;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import cn.jiguang.as.d;
import cn.jiguang.az.h;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f2440a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f2441b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private boolean f2442c = false;

    /* renamed from: d  reason: collision with root package name */
    private ConcurrentHashMap<Integer, cn.jiguang.bd.a> f2443d = new ConcurrentHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private Handler f2444e;

    /* renamed from: f  reason: collision with root package name */
    private HandlerThread f2445f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                cn.jiguang.bd.a aVar = (cn.jiguang.bd.a) b.this.f2443d.get(Integer.valueOf(message.what));
                if (aVar != null) {
                    aVar.a(message);
                    if (aVar.f2439c == 1) {
                        sendEmptyMessageDelayed(message.what, h.a().f() * 1000);
                    } else {
                        b.this.f2443d.remove(Integer.valueOf(message.what));
                    }
                } else {
                    d.g("TaskHandlerManager_xxx", "miss task:" + message.what);
                }
            } catch (Throwable th2) {
                d.g("TaskHandlerManager_xxx", "handleMessage,e:" + th2);
            }
        }
    }

    private b() {
    }

    public static b a() {
        if (f2440a == null) {
            synchronized (f2441b) {
                if (f2440a == null) {
                    f2440a = new b();
                }
            }
        }
        return f2440a;
    }

    public void a(int i9, long j10, cn.jiguang.bd.a aVar) {
        if (this.f2444e == null) {
            return;
        }
        aVar.f2438b = j10;
        aVar.f2439c = 1;
        this.f2443d.put(Integer.valueOf(i9), aVar);
        if (this.f2444e.hasMessages(i9)) {
            d.g("TaskHandlerManager_xxx", "registerFixedAction,same action in handler,will replace");
            this.f2444e.removeMessages(i9);
        }
        this.f2444e.sendEmptyMessageDelayed(i9, j10);
    }

    public synchronized void a(Context context) {
        if (this.f2442c) {
            return;
        }
        if (context == null) {
            d.c("TaskHandlerManager_xxx", "init context is null");
            return;
        }
        d.c("TaskHandlerManager_xxx", "init task manager...");
        try {
            HandlerThread handlerThread = this.f2445f;
            if (handlerThread == null || !handlerThread.isAlive()) {
                HandlerThread handlerThread2 = new HandlerThread("jg_tsk_thread") { // from class: cn.jiguang.bd.b.1
                    @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            super.run();
                        } catch (RuntimeException e10) {
                            d.i("TaskHandlerManager_xxx", "handler thread run e:" + e10 + "  t=" + Thread.currentThread().getName() + "_" + Thread.currentThread().getId());
                        }
                    }
                };
                this.f2445f = handlerThread2;
                handlerThread2.start();
            }
            this.f2444e = new a(this.f2445f.getLooper() == null ? Looper.getMainLooper() : this.f2445f.getLooper());
        } catch (Exception unused) {
            this.f2444e = new a(Looper.getMainLooper());
        }
        this.f2442c = true;
    }

    public boolean a(int i9) {
        Handler handler = this.f2444e;
        if (handler == null) {
            return false;
        }
        return handler.hasMessages(i9);
    }

    public void b(int i9) {
        if (this.f2444e == null) {
            return;
        }
        this.f2443d.remove(Integer.valueOf(i9));
        this.f2444e.removeMessages(i9);
    }

    public void b(int i9, long j10, cn.jiguang.bd.a aVar) {
        if (this.f2444e == null) {
            return;
        }
        aVar.f2439c = 2;
        this.f2443d.put(Integer.valueOf(i9), aVar);
        if (this.f2444e.hasMessages(i9)) {
            d.c("TaskHandlerManager_xxx", "sendMsg,replace:" + i9);
            this.f2444e.removeMessages(i9);
        } else {
            d.c("TaskHandlerManager_xxx", "sendMsg,action=" + i9);
        }
        this.f2444e.sendEmptyMessageDelayed(i9, j10);
    }
}
