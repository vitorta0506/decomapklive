package io.grpc.internal;

import com.google.common.collect.ImmutableSet;
import io.grpc.Status;
import java.util.Collection;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class t0 {

    /* renamed from: a  reason: collision with root package name */
    final int f43069a;

    /* renamed from: b  reason: collision with root package name */
    final long f43070b;

    /* renamed from: c  reason: collision with root package name */
    final Set<Status.Code> f43071c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(int i9, long j10, Set<Status.Code> set) {
        this.f43069a = i9;
        this.f43070b = j10;
        this.f43071c = ImmutableSet.copyOf((Collection) set);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t0.class != obj.getClass()) {
            return false;
        }
        t0 t0Var = (t0) obj;
        return this.f43069a == t0Var.f43069a && this.f43070b == t0Var.f43070b && com.google.common.base.l.a(this.f43071c, t0Var.f43071c);
    }

    public int hashCode() {
        return com.google.common.base.l.b(Integer.valueOf(this.f43069a), Long.valueOf(this.f43070b), this.f43071c);
    }

    public String toString() {
        return com.google.common.base.j.c(this).b("maxAttempts", this.f43069a).c("hedgingDelayNanos", this.f43070b).d("nonFatalStatusCodes", this.f43071c).toString();
    }
}
