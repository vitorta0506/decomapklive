package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes4.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private static u f30638a;

    /* renamed from: c  reason: collision with root package name */
    private final Context f30640c;

    /* renamed from: e  reason: collision with root package name */
    private long f30642e;

    /* renamed from: f  reason: collision with root package name */
    private long f30643f;

    /* renamed from: d  reason: collision with root package name */
    private Map<Integer, Long> f30641d = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private LinkedBlockingQueue<Runnable> f30644g = new LinkedBlockingQueue<>();

    /* renamed from: h  reason: collision with root package name */
    private LinkedBlockingQueue<Runnable> f30645h = new LinkedBlockingQueue<>();

    /* renamed from: i  reason: collision with root package name */
    private final Object f30646i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private int f30647j = 0;

    /* renamed from: b  reason: collision with root package name */
    private final p f30639b = p.a();

    private u(Context context) {
        this.f30640c = context;
    }

    static /* synthetic */ int b(u uVar) {
        int i9 = uVar.f30647j - 1;
        uVar.f30647j = i9;
        return i9;
    }

    private void c(int i9) {
        w a10 = w.a();
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        final LinkedBlockingQueue linkedBlockingQueue2 = new LinkedBlockingQueue();
        synchronized (this.f30646i) {
            x.c("[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            int size = this.f30644g.size();
            final int size2 = this.f30645h.size();
            if (size == 0 && size2 == 0) {
                x.c("[UploadManager] There is no upload task in queue.", new Object[0]);
                return;
            }
            size2 = (a10 == null || !a10.c()) ? 0 : 0;
            for (int i10 = 0; i10 < size; i10++) {
                Runnable peek = this.f30644g.peek();
                if (peek == null) {
                    break;
                }
                linkedBlockingQueue.put(peek);
                this.f30644g.poll();
            }
            for (int i11 = 0; i11 < size2; i11++) {
                Runnable peek2 = this.f30645h.peek();
                if (peek2 == null) {
                    break;
                }
                linkedBlockingQueue2.put(peek2);
                this.f30645h.poll();
            }
            if (size > 0) {
                x.c("[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(size), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            }
            for (int i12 = 0; i12 < size; i12++) {
                final Runnable runnable = (Runnable) linkedBlockingQueue.poll();
                if (runnable == null) {
                    break;
                }
                synchronized (this.f30646i) {
                    if (this.f30647j >= 2 && a10 != null) {
                        a10.a(runnable);
                    } else {
                        x.a("[UploadManager] Create and start a new thread to execute a upload task: %s", "BUGLY_ASYNC_UPLOAD");
                        if (z.a(new Runnable() { // from class: com.tencent.bugly.proguard.u.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                runnable.run();
                                synchronized (u.this.f30646i) {
                                    u.b(u.this);
                                }
                            }
                        }, "BUGLY_ASYNC_UPLOAD") != null) {
                            synchronized (this.f30646i) {
                                this.f30647j++;
                            }
                        } else {
                            x.d("[UploadManager] Failed to start a thread to execute asynchronous upload task, will try again next time.", new Object[0]);
                            a(runnable, true);
                        }
                    }
                }
            }
            if (size2 > 0) {
                x.c("[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)", Integer.valueOf(size2), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            }
            if (a10 != null) {
                a10.a(new Runnable(this) { // from class: com.tencent.bugly.proguard.u.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Runnable runnable2;
                        for (int i13 = 0; i13 < size2 && (runnable2 = (Runnable) linkedBlockingQueue2.poll()) != null; i13++) {
                            runnable2.run();
                        }
                    }
                });
            }
        }
    }

    public static synchronized u a(Context context) {
        u uVar;
        synchronized (u.class) {
            if (f30638a == null) {
                f30638a = new u(context);
            }
            uVar = f30638a;
        }
        return uVar;
    }

    public final boolean b(int i9) {
        if (com.tencent.bugly.b.f30123c) {
            x.c("Uploading frequency will not be checked if SDK is in debug mode.", new Object[0]);
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis() - a(i9);
        x.c("[UploadManager] Time interval is %d seconds since last uploading(ID: %d).", Long.valueOf(currentTimeMillis / 1000), Integer.valueOf(i9));
        if (currentTimeMillis < 30000) {
            x.a("[UploadManager] Data only be uploaded once in %d seconds.", 30L);
            return false;
        }
        return true;
    }

    public static synchronized u a() {
        u uVar;
        synchronized (u.class) {
            uVar = f30638a;
        }
        return uVar;
    }

    public final void a(int i9, am amVar, String str, String str2, t tVar, long j10, boolean z10) {
        try {
            try {
                a(new v(this.f30640c, i9, amVar.f30496g, a.a((Object) amVar), str, str2, tVar, true, z10), true, true, j10);
            } catch (Throwable th2) {
                th = th2;
                if (x.a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final void a(int i9, am amVar, String str, String str2, t tVar, boolean z10) {
        try {
            try {
                a(new v(this.f30640c, i9, amVar.f30496g, a.a((Object) amVar), str, str2, tVar, 0, 0, false, null), z10, false, 0L);
            } catch (Throwable th2) {
                th = th2;
                if (x.a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final long a(boolean z10) {
        long j10;
        long b10 = z.b();
        int i9 = z10 ? 5 : 3;
        List<r> a10 = this.f30639b.a(i9);
        if (a10 != null && a10.size() > 0) {
            j10 = 0;
            try {
                r rVar = a10.get(0);
                if (rVar.f30632e >= b10) {
                    j10 = z.b(rVar.f30634g);
                    if (i9 == 3) {
                        this.f30642e = j10;
                    } else {
                        this.f30643f = j10;
                    }
                    a10.remove(rVar);
                }
            } catch (Throwable th2) {
                x.a(th2);
            }
            if (a10.size() > 0) {
                this.f30639b.a(a10);
            }
        } else {
            j10 = z10 ? this.f30643f : this.f30642e;
        }
        x.c("[UploadManager] Local network consume: %d KB", Long.valueOf(j10 / 1024));
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final synchronized void a(long j10, boolean z10) {
        int i9 = z10 ? 5 : 3;
        r rVar = new r();
        rVar.f30629b = i9;
        rVar.f30632e = z.b();
        rVar.f30630c = "";
        rVar.f30631d = "";
        rVar.f30634g = z.c(j10);
        this.f30639b.b(i9);
        this.f30639b.a(rVar);
        if (z10) {
            this.f30643f = j10;
        } else {
            this.f30642e = j10;
        }
        x.c("[UploadManager] Network total consume: %d KB", Long.valueOf(j10 / 1024));
    }

    public final synchronized void a(int i9, long j10) {
        if (i9 < 0) {
            x.e("[UploadManager] Unknown uploading ID: %d", Integer.valueOf(i9));
            return;
        }
        this.f30641d.put(Integer.valueOf(i9), Long.valueOf(j10));
        r rVar = new r();
        rVar.f30629b = i9;
        rVar.f30632e = j10;
        rVar.f30630c = "";
        rVar.f30631d = "";
        rVar.f30634g = new byte[0];
        this.f30639b.b(i9);
        this.f30639b.a(rVar);
        x.c("[UploadManager] Uploading(ID:%d) time: %s", Integer.valueOf(i9), z.a(j10));
    }

    public final synchronized long a(int i9) {
        if (i9 >= 0) {
            Long l10 = this.f30641d.get(Integer.valueOf(i9));
            if (l10 != null) {
                return l10.longValue();
            }
        } else {
            x.e("[UploadManager] Unknown upload ID: %d", Integer.valueOf(i9));
        }
        return 0L;
    }

    private boolean a(Runnable runnable, boolean z10) {
        if (runnable == null) {
            x.a("[UploadManager] Upload task should not be null", new Object[0]);
            return false;
        }
        try {
            x.c("[UploadManager] Add upload task to queue (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            synchronized (this.f30646i) {
                if (z10) {
                    this.f30644g.put(runnable);
                } else {
                    this.f30645h.put(runnable);
                }
            }
            return true;
        } catch (Throwable th2) {
            x.e("[UploadManager] Failed to add upload task to queue: %s", th2.getMessage());
            return false;
        }
    }

    private void a(Runnable runnable, boolean z10, boolean z11, long j10) {
        if (runnable == null) {
            x.d("[UploadManager] Upload task should not be null", new Object[0]);
        }
        x.c("[UploadManager] Add upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        if (!z11) {
            a(runnable, z10);
            c(0);
        } else if (runnable == null) {
            x.d("[UploadManager] Upload task should not be null", new Object[0]);
        } else {
            x.c("[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
            Thread a10 = z.a(runnable, "BUGLY_SYNC_UPLOAD");
            if (a10 == null) {
                x.e("[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue.", new Object[0]);
                a(runnable, true);
                return;
            }
            try {
                a10.join(j10);
            } catch (Throwable th2) {
                x.e("[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue.", th2.getMessage());
                a(runnable, true);
                c(0);
            }
        }
    }
}
