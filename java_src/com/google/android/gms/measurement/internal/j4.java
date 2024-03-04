package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j4 extends FutureTask implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    private final long f9513a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f9514b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9515c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ l4 f9516d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j4(l4 l4Var, Runnable runnable, boolean z10, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.f9516d = l4Var;
        com.google.android.gms.common.internal.p.j(str);
        atomicLong = l4.f9591l;
        long andIncrement = atomicLong.getAndIncrement();
        this.f9513a = andIncrement;
        this.f9515c = str;
        this.f9514b = z10;
        if (andIncrement == Long.MAX_VALUE) {
            l4Var.f9432a.b().r().a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(@NonNull Object obj) {
        j4 j4Var = (j4) obj;
        boolean z10 = this.f9514b;
        if (z10 != j4Var.f9514b) {
            return !z10 ? 1 : -1;
        }
        int i9 = (this.f9513a > j4Var.f9513a ? 1 : (this.f9513a == j4Var.f9513a ? 0 : -1));
        if (i9 < 0) {
            return -1;
        }
        if (i9 > 0) {
            return 1;
        }
        this.f9516d.f9432a.b().t().b("Two tasks share the same index. index", Long.valueOf(this.f9513a));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th2) {
        this.f9516d.f9432a.b().r().b(this.f9515c, th2);
        super.setException(th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j4(l4 l4Var, Callable callable, boolean z10, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.f9516d = l4Var;
        com.google.android.gms.common.internal.p.j("Task exception on worker thread");
        atomicLong = l4.f9591l;
        long andIncrement = atomicLong.getAndIncrement();
        this.f9513a = andIncrement;
        this.f9515c = "Task exception on worker thread";
        this.f9514b = z10;
        if (andIncrement == Long.MAX_VALUE) {
            l4Var.f9432a.b().r().a("Tasks index overflow");
        }
    }
}
