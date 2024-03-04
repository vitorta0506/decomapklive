package com.google.api.gax.rpc;

import com.google.auth.Credentials;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public class n implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final h0 f11344a;

    private n(h0 h0Var) {
        this.f11344a = (h0) com.google.common.base.o.s(h0Var);
    }

    public static n k(h0 h0Var) {
        return new n(h0Var);
    }

    @Override // com.google.api.gax.rpc.i0
    public boolean a() {
        return false;
    }

    @Override // com.google.api.gax.rpc.i0
    public i0 b(Credentials credentials) {
        throw new UnsupportedOperationException("FixedTransportChannelProvider doesn't need credentials");
    }

    @Override // com.google.api.gax.rpc.i0
    public boolean d() {
        return false;
    }

    @Override // com.google.api.gax.rpc.i0
    public h0 e() throws IOException {
        return this.f11344a;
    }

    @Override // com.google.api.gax.rpc.i0
    public boolean f() {
        return false;
    }

    @Override // com.google.api.gax.rpc.i0
    public i0 g(String str) {
        throw new UnsupportedOperationException("FixedTransportChannelProvider doesn't need an endpoint");
    }

    @Override // com.google.api.gax.rpc.i0
    public String getTransportName() {
        return this.f11344a.getTransportName();
    }

    @Override // com.google.api.gax.rpc.i0
    public boolean h() {
        return false;
    }

    @Override // com.google.api.gax.rpc.i0
    public boolean j() {
        return false;
    }

    public n l(Executor executor) {
        throw new UnsupportedOperationException("FixedTransportChannelProvider doesn't need an executor");
    }

    @Override // com.google.api.gax.rpc.i0
    /* renamed from: m */
    public n c(ScheduledExecutorService scheduledExecutorService) {
        return l(scheduledExecutorService);
    }

    @Override // com.google.api.gax.rpc.i0
    /* renamed from: n */
    public n i(Map<String, String> map) {
        throw new UnsupportedOperationException("FixedTransportChannelProvider doesn't need headers");
    }
}
