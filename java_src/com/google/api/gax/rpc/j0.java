package com.google.api.gax.rpc;

import com.google.api.gax.retrying.RetrySettings;
import com.google.api.gax.rpc.StatusCode;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.w7;
import java.util.Collection;
import java.util.Set;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public class j0<RequestT, ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableSet<StatusCode.Code> f11307a;

    /* renamed from: b  reason: collision with root package name */
    private final RetrySettings f11308b;

    /* JADX INFO: Access modifiers changed from: protected */
    public j0(a<RequestT, ResponseT> aVar) {
        this.f11307a = ImmutableSet.copyOf((Collection) ((a) aVar).f11309a);
        this.f11308b = ((a) aVar).f11310b.b();
    }

    public static <RequestT, ResponseT> a<RequestT, ResponseT> d() {
        return new a<>();
    }

    public final RetrySettings b() {
        return this.f11308b;
    }

    public final Set<StatusCode.Code> c() {
        return this.f11307a;
    }

    public a<RequestT, ResponseT> e() {
        return new a<>(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            j0 j0Var = (j0) obj;
            return this.f11308b.equals(j0Var.f11308b) && this.f11307a.equals(j0Var.f11307a);
        }
        return false;
    }

    public int hashCode() {
        RetrySettings retrySettings = this.f11308b;
        int hashCode = ((retrySettings == null ? 0 : retrySettings.hashCode()) + 43) * 43;
        ImmutableSet<StatusCode.Code> immutableSet = this.f11307a;
        return hashCode + (immutableSet != null ? immutableSet.hashCode() : 0);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("retryableCodes", this.f11307a).d("retrySettings", this.f11308b).toString();
    }

    /* loaded from: classes2.dex */
    public static class a<RequestT, ResponseT> {

        /* renamed from: a  reason: collision with root package name */
        private Set<StatusCode.Code> f11309a;

        /* renamed from: b  reason: collision with root package name */
        private RetrySettings.a f11310b;

        /* JADX INFO: Access modifiers changed from: protected */
        public a() {
            this.f11309a = w7.g();
            this.f11310b = RetrySettings.newBuilder();
        }

        public j0<RequestT, ResponseT> c() {
            return new j0<>(this);
        }

        public a<RequestT, ResponseT> d(RetrySettings retrySettings) {
            this.f11310b = retrySettings.toBuilder();
            return this;
        }

        public a<RequestT, ResponseT> e(Set<StatusCode.Code> set) {
            this.f11309a = w7.h(set);
            return this;
        }

        public a<RequestT, ResponseT> f(StatusCode.Code... codeArr) {
            e(w7.j(codeArr));
            return this;
        }

        public a<RequestT, ResponseT> g(Duration duration) {
            f(new StatusCode.Code[0]);
            RetrySettings.a k10 = RetrySettings.newBuilder().k(duration);
            Duration duration2 = Duration.ZERO;
            d(k10.c(duration2).i(1.0d).g(duration2).d(duration).j(1.0d).h(duration).f(1).b());
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(j0<RequestT, ResponseT> j0Var) {
            e(((j0) j0Var).f11307a);
            d(j0Var.b());
        }
    }
}
