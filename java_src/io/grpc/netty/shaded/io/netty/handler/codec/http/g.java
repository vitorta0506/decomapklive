package io.grpc.netty.shaded.io.netty.handler.codec.http;
/* loaded from: classes5.dex */
public class g implements z {

    /* renamed from: a  reason: collision with root package name */
    private pg.e f43921a = pg.e.f56848e;

    @Override // pg.f
    public pg.e a() {
        return this.f43921a;
    }

    @Override // pg.f
    public void e(pg.e eVar) {
        this.f43921a = (pg.e) io.grpc.netty.shaded.io.netty.util.internal.s.h(eVar, "decoderResult");
    }

    public boolean equals(Object obj) {
        if (obj instanceof g) {
            return a().equals(((g) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return 31 + this.f43921a.hashCode();
    }
}
