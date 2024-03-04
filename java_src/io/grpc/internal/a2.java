package io.grpc.internal;

import com.google.common.collect.ImmutableSet;
import io.grpc.Status;
import java.util.Collection;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class a2 {

    /* renamed from: a  reason: collision with root package name */
    final int f42420a;

    /* renamed from: b  reason: collision with root package name */
    final long f42421b;

    /* renamed from: c  reason: collision with root package name */
    final long f42422c;

    /* renamed from: d  reason: collision with root package name */
    final double f42423d;

    /* renamed from: e  reason: collision with root package name */
    final Long f42424e;

    /* renamed from: f  reason: collision with root package name */
    final Set<Status.Code> f42425f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a2(int i9, long j10, long j11, double d10, Long l10, Set<Status.Code> set) {
        this.f42420a = i9;
        this.f42421b = j10;
        this.f42422c = j11;
        this.f42423d = d10;
        this.f42424e = l10;
        this.f42425f = ImmutableSet.copyOf((Collection) set);
    }

    public boolean equals(Object obj) {
        if (obj instanceof a2) {
            a2 a2Var = (a2) obj;
            return this.f42420a == a2Var.f42420a && this.f42421b == a2Var.f42421b && this.f42422c == a2Var.f42422c && Double.compare(this.f42423d, a2Var.f42423d) == 0 && com.google.common.base.l.a(this.f42424e, a2Var.f42424e) && com.google.common.base.l.a(this.f42425f, a2Var.f42425f);
        }
        return false;
    }

    public int hashCode() {
        return com.google.common.base.l.b(Integer.valueOf(this.f42420a), Long.valueOf(this.f42421b), Long.valueOf(this.f42422c), Double.valueOf(this.f42423d), this.f42424e, this.f42425f);
    }

    public String toString() {
        return com.google.common.base.j.c(this).b("maxAttempts", this.f42420a).c("initialBackoffNanos", this.f42421b).c("maxBackoffNanos", this.f42422c).a("backoffMultiplier", this.f42423d).d("perAttemptRecvTimeoutNanos", this.f42424e).d("retryableStatusCodes", this.f42425f).toString();
    }
}
