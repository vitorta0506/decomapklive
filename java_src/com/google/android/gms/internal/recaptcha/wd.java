package com.google.android.gms.internal.recaptcha;

import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class wd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    Runnable f9144a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ xd f9145b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ wd(xd xdVar, vd vdVar) {
        this.f9145b = xdVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
        if (r2 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0042, code lost:
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0049, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        r2 = r2 | java.lang.Thread.interrupted();
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
        r11.f9144a.run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005c, code lost:
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005e, code lost:
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0060, code lost:
        r4 = com.google.android.gms.internal.recaptcha.xd.f9178f;
        r5 = java.util.logging.Level.SEVERE;
        r3 = java.lang.String.valueOf(r11.f9144a);
        r10 = new java.lang.StringBuilder(r3.length() + 35);
        r10.append("Exception while executing runnable ");
        r10.append(r3);
        r4.logp(r5, "com.google.common.util.concurrent.SequentialExecutor$QueueWorker", "workOnQueue", r10.toString(), (java.lang.Throwable) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008a, code lost:
        r11.f9144a = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008d, code lost:
        r11.f9144a = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008f, code lost:
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
        return;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r11 = this;
            r0 = 0
            r1 = 1
            r2 = 0
        L3:
            com.google.android.gms.internal.recaptcha.xd r3 = r11.f9145b     // Catch: java.lang.Throwable -> L5a
            java.util.Deque r3 = com.google.android.gms.internal.recaptcha.xd.b(r3)     // Catch: java.lang.Throwable -> L5a
            monitor-enter(r3)     // Catch: java.lang.Throwable -> L5a
            if (r0 != 0) goto L2a
            com.google.android.gms.internal.recaptcha.xd r0 = r11.f9145b     // Catch: java.lang.Throwable -> L90
            int r0 = com.google.android.gms.internal.recaptcha.xd.e(r0)     // Catch: java.lang.Throwable -> L90
            r4 = 4
            if (r0 != r4) goto L20
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L90
            if (r2 == 0) goto L49
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: java.lang.Error -> L9d
            r0.interrupt()     // Catch: java.lang.Error -> L9d
            return
        L20:
            com.google.android.gms.internal.recaptcha.xd r0 = r11.f9145b     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.internal.recaptcha.xd.a(r0)     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.internal.recaptcha.xd r0 = r11.f9145b     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.internal.recaptcha.xd.f(r0, r4)     // Catch: java.lang.Throwable -> L90
        L2a:
            com.google.android.gms.internal.recaptcha.xd r0 = r11.f9145b     // Catch: java.lang.Throwable -> L90
            java.util.Deque r0 = com.google.android.gms.internal.recaptcha.xd.b(r0)     // Catch: java.lang.Throwable -> L90
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L90
            java.lang.Runnable r0 = (java.lang.Runnable) r0     // Catch: java.lang.Throwable -> L90
            r11.f9144a = r0     // Catch: java.lang.Throwable -> L90
            if (r0 != 0) goto L4a
            com.google.android.gms.internal.recaptcha.xd r0 = r11.f9145b     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.internal.recaptcha.xd.f(r0, r1)     // Catch: java.lang.Throwable -> L90
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L90
            if (r2 == 0) goto L49
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: java.lang.Error -> L9d
            r0.interrupt()     // Catch: java.lang.Error -> L9d
        L49:
            return
        L4a:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L90
            boolean r0 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L5a
            r2 = r2 | r0
            r0 = 0
            java.lang.Runnable r3 = r11.f9144a     // Catch: java.lang.Throwable -> L5c java.lang.RuntimeException -> L5e
            r3.run()     // Catch: java.lang.Throwable -> L5c java.lang.RuntimeException -> L5e
            r11.f9144a = r0     // Catch: java.lang.Throwable -> L5a
        L58:
            r0 = 1
            goto L3
        L5a:
            r0 = move-exception
            goto L93
        L5c:
            r3 = move-exception
            goto L8d
        L5e:
            r3 = move-exception
            r9 = r3
            java.util.logging.Logger r4 = com.google.android.gms.internal.recaptcha.xd.d()     // Catch: java.lang.Throwable -> L5c
            java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L5c
            java.lang.String r6 = "com.google.common.util.concurrent.SequentialExecutor$QueueWorker"
            java.lang.String r7 = "workOnQueue"
            java.lang.Runnable r3 = r11.f9144a     // Catch: java.lang.Throwable -> L5c
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> L5c
            int r8 = r3.length()     // Catch: java.lang.Throwable -> L5c
            int r8 = r8 + 35
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r10.<init>(r8)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r8 = "Exception while executing runnable "
            r10.append(r8)     // Catch: java.lang.Throwable -> L5c
            r10.append(r3)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r8 = r10.toString()     // Catch: java.lang.Throwable -> L5c
            r4.logp(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L5c
            r11.f9144a = r0     // Catch: java.lang.Throwable -> L5a
            goto L58
        L8d:
            r11.f9144a = r0     // Catch: java.lang.Throwable -> L5a
            throw r3     // Catch: java.lang.Throwable -> L5a
        L90:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L90
            throw r0     // Catch: java.lang.Throwable -> L5a
        L93:
            if (r2 == 0) goto L9c
            java.lang.Thread r2 = java.lang.Thread.currentThread()     // Catch: java.lang.Error -> L9d
            r2.interrupt()     // Catch: java.lang.Error -> L9d
        L9c:
            throw r0     // Catch: java.lang.Error -> L9d
        L9d:
            r0 = move-exception
            com.google.android.gms.internal.recaptcha.xd r2 = r11.f9145b
            java.util.Deque r2 = com.google.android.gms.internal.recaptcha.xd.b(r2)
            monitor-enter(r2)
            com.google.android.gms.internal.recaptcha.xd r3 = r11.f9145b     // Catch: java.lang.Throwable -> Lac
            com.google.android.gms.internal.recaptcha.xd.f(r3, r1)     // Catch: java.lang.Throwable -> Lac
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lac
            throw r0
        Lac:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lac
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.wd.run():void");
    }

    public final String toString() {
        int i9;
        Runnable runnable = this.f9144a;
        if (runnable != null) {
            String valueOf = String.valueOf(runnable);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 34);
            sb2.append("SequentialExecutorWorker{running=");
            sb2.append(valueOf);
            sb2.append("}");
            return sb2.toString();
        }
        i9 = this.f9145b.f9183e;
        String str = i9 != 1 ? i9 != 2 ? i9 != 3 ? i9 != 4 ? "null" : DebugCoroutineInfoImplKt.RUNNING : "QUEUED" : "QUEUING" : "IDLE";
        StringBuilder sb3 = new StringBuilder(str.length() + 32);
        sb3.append("SequentialExecutorWorker{state=");
        sb3.append(str);
        sb3.append("}");
        return sb3.toString();
    }
}
