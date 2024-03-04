package com.google.android.gms.dynamite;

import android.os.Process;
/* loaded from: classes2.dex */
final class a extends Thread {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a(ThreadGroup threadGroup, String str) {
        super(threadGroup, "GmsDynamite");
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(19);
        synchronized (this) {
            while (true) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    return;
                }
            }
        }
    }
}
