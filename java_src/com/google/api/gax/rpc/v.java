package com.google.api.gax.rpc;

import com.google.api.gax.retrying.RetrySettings;
import com.google.api.gax.rpc.StatusCode;
import com.google.api.gax.rpc.j0;
import java.util.Set;
/* loaded from: classes2.dex */
public final class v<RequestT, ResponseT, PagedListResponseT> extends j0<RequestT, ResponseT> {

    /* renamed from: c  reason: collision with root package name */
    private final y<RequestT, ResponseT, PagedListResponseT> f11364c;

    public static <RequestT, ResponseT, PagedListResponseT> b<RequestT, ResponseT, PagedListResponseT> h(y<RequestT, ResponseT, PagedListResponseT> yVar) {
        return new b<>(yVar);
    }

    public y<RequestT, ResponseT, PagedListResponseT> g() {
        return this.f11364c;
    }

    @Override // com.google.api.gax.rpc.j0
    /* renamed from: i */
    public final b<RequestT, ResponseT, PagedListResponseT> e() {
        return new b<>(this);
    }

    /* loaded from: classes2.dex */
    public static class b<RequestT, ResponseT, PagedListResponseT> extends j0.a<RequestT, ResponseT> {

        /* renamed from: c  reason: collision with root package name */
        private y<RequestT, ResponseT, PagedListResponseT> f11365c;

        public b(y<RequestT, ResponseT, PagedListResponseT> yVar) {
            this.f11365c = yVar;
        }

        @Override // com.google.api.gax.rpc.j0.a
        /* renamed from: i */
        public v<RequestT, ResponseT, PagedListResponseT> c() {
            return new v<>(this);
        }

        @Override // com.google.api.gax.rpc.j0.a
        /* renamed from: j */
        public b<RequestT, ResponseT, PagedListResponseT> d(RetrySettings retrySettings) {
            super.d(retrySettings);
            return this;
        }

        @Override // com.google.api.gax.rpc.j0.a
        /* renamed from: k */
        public b<RequestT, ResponseT, PagedListResponseT> e(Set<StatusCode.Code> set) {
            super.e(set);
            return this;
        }

        @Override // com.google.api.gax.rpc.j0.a
        /* renamed from: l */
        public b<RequestT, ResponseT, PagedListResponseT> f(StatusCode.Code... codeArr) {
            super.f(codeArr);
            return this;
        }

        public b(v<RequestT, ResponseT, PagedListResponseT> vVar) {
            super(vVar);
            this.f11365c = ((v) vVar).f11364c;
        }
    }

    private v(b<RequestT, ResponseT, PagedListResponseT> bVar) {
        super(bVar);
        this.f11364c = ((b) bVar).f11365c;
    }
}
