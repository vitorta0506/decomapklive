package io.grpc.netty.shaded.io.netty.handler.codec.http;

import com.facebook.internal.AnalyticsEvents;
/* loaded from: classes5.dex */
public class g0 extends b0 {
    private static final h0 A = new h0(999, AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN);

    public g0(int i9, int i10, int i11, boolean z10) {
        super(i9, i10, i11, true, z10);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.b0
    protected v P() {
        return new c(j0.f43960h, A, this.f43873o);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.b0
    protected v Q(String[] strArr) {
        return new i(j0.h(strArr[0]), h0.g(Integer.parseInt(strArr[1]), strArr[2]), this.f43873o);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.b0
    protected boolean e0() {
        return false;
    }
}
