package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public final class ab extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private boolean f30443a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f30444b = false;

    /* renamed from: c  reason: collision with root package name */
    private List<aa> f30445c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private List<ac> f30446d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<aa> f30447e = new ArrayList<>();

    private int e() {
        int i9 = 0;
        for (int i10 = 0; i10 < this.f30445c.size(); i10++) {
            try {
                i9 = Math.max(i9, this.f30445c.get(i10).c());
            } catch (Exception e10) {
                x.b(e10);
            }
        }
        return i9;
    }

    public final void a() {
        a(new Handler(Looper.getMainLooper()), 5000L);
    }

    public final void b() {
        for (int i9 = 0; i9 < this.f30445c.size(); i9++) {
            try {
                if (this.f30445c.get(i9).d().equals(Looper.getMainLooper().getThread().getName())) {
                    x.c("remove handler::%s", this.f30445c.get(i9));
                    this.f30445c.remove(i9);
                }
            } catch (Exception e10) {
                x.b(e10);
                return;
            }
        }
    }

    public final boolean c() {
        this.f30443a = true;
        if (isAlive()) {
            try {
                interrupt();
            } catch (Exception e10) {
                x.b(e10);
            }
            return true;
        }
        return false;
    }

    public final boolean d() {
        if (isAlive()) {
            return false;
        }
        try {
            start();
            return true;
        } catch (Exception e10) {
            x.b(e10);
            return false;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (!this.f30443a) {
            for (int i9 = 0; i9 < this.f30445c.size(); i9++) {
                try {
                    this.f30445c.get(i9).a();
                } catch (Exception e10) {
                    x.b(e10);
                } catch (OutOfMemoryError e11) {
                    x.b(e11);
                }
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            for (long j10 = 2000; j10 > 0 && !isInterrupted(); j10 = 2000 - (SystemClock.uptimeMillis() - uptimeMillis)) {
                Thread.sleep(j10);
            }
            int e12 = e();
            if (e12 != 0 && e12 != 1) {
                this.f30447e.clear();
                for (int i10 = 0; i10 < this.f30445c.size(); i10++) {
                    aa aaVar = this.f30445c.get(i10);
                    if (aaVar.b()) {
                        this.f30447e.add(aaVar);
                        aaVar.a(Long.MAX_VALUE);
                    }
                }
                NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
                if (nativeCrashHandler != null && nativeCrashHandler.isEnableCatchAnrTrace()) {
                    nativeCrashHandler.dumpAnrNativeStack();
                    x.c("jni mannual dump anr trace", new Object[0]);
                } else {
                    x.c("do not enable jni mannual dump anr trace", new Object[0]);
                }
                int i11 = 0;
                while (true) {
                    if (this.f30444b) {
                        break;
                    }
                    x.c("do not enable anr continue check", new Object[0]);
                    Thread.sleep(2000L);
                    i11++;
                    if (i11 == 15) {
                        this.f30447e.clear();
                        break;
                    }
                }
                for (int i12 = 0; i12 < this.f30447e.size(); i12++) {
                    aa aaVar2 = this.f30447e.get(i12);
                    for (int i13 = 0; i13 < this.f30446d.size(); i13++) {
                        x.e("main thread blocked,now begin to upload anr stack", new Object[0]);
                        this.f30446d.get(i13).a(aaVar2);
                        this.f30444b = false;
                    }
                }
            }
        }
    }

    private void a(Handler handler, long j10) {
        if (handler == null) {
            x.e("addThread handler should not be null", new Object[0]);
            return;
        }
        String name = handler.getLooper().getThread().getName();
        for (int i9 = 0; i9 < this.f30445c.size(); i9++) {
            try {
                if (this.f30445c.get(i9).d().equals(handler.getLooper().getThread().getName())) {
                    x.e("addThread fail ,this thread has been added in monitor queue", new Object[0]);
                    return;
                }
            } catch (Exception e10) {
                x.b(e10);
            }
        }
        this.f30445c.add(new aa(handler, name, 5000L));
    }

    public final void b(ac acVar) {
        this.f30446d.remove(acVar);
    }

    public final void a(ac acVar) {
        if (this.f30446d.contains(acVar)) {
            x.c("addThreadMonitorListeners fail ,this threadMonitorListener has been added in monitor queue", new Object[0]);
        } else {
            this.f30446d.add(acVar);
        }
    }

    public final void a(boolean z10) {
        this.f30444b = true;
    }
}
