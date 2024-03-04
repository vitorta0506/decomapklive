package com.google.android.gms.internal.recaptcha;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class xd implements Executor {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f9178f = Logger.getLogger(xd.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final Executor f9179a;

    /* renamed from: b  reason: collision with root package name */
    private final Deque<Runnable> f9180b = new ArrayDeque();

    /* renamed from: e  reason: collision with root package name */
    private int f9183e = 1;

    /* renamed from: c  reason: collision with root package name */
    private long f9181c = 0;

    /* renamed from: d  reason: collision with root package name */
    private final wd f9182d = new wd(this, null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public xd(Executor executor) {
        Objects.requireNonNull(executor);
        this.f9179a = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ long a(xd xdVar) {
        long j10 = xdVar.f9181c;
        xdVar.f9181c = 1 + j10;
        return j10;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Objects.requireNonNull(runnable);
        synchronized (this.f9180b) {
            int i9 = this.f9183e;
            if (i9 != 4 && i9 != 3) {
                long j10 = this.f9181c;
                vd vdVar = new vd(this, runnable);
                this.f9180b.add(vdVar);
                this.f9183e = 2;
                try {
                    this.f9179a.execute(this.f9182d);
                    if (this.f9183e != 2) {
                        return;
                    }
                    synchronized (this.f9180b) {
                        if (this.f9181c == j10 && this.f9183e == 2) {
                            this.f9183e = 3;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e10) {
                    synchronized (this.f9180b) {
                        int i10 = this.f9183e;
                        boolean z10 = false;
                        if ((i10 == 1 || i10 == 2) && this.f9180b.removeLastOccurrence(vdVar)) {
                            z10 = true;
                        }
                        if (!(e10 instanceof RejectedExecutionException) || z10) {
                            throw e10;
                        }
                    }
                    return;
                }
            }
            this.f9180b.add(runnable);
        }
    }

    public final String toString() {
        int identityHashCode = System.identityHashCode(this);
        String valueOf = String.valueOf(this.f9179a);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 32);
        sb2.append("SequentialExecutor@");
        sb2.append(identityHashCode);
        sb2.append("{");
        sb2.append(valueOf);
        sb2.append("}");
        return sb2.toString();
    }
}
