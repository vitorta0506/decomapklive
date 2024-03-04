package io.grpc;
/* loaded from: classes5.dex */
public final class n extends e {

    /* renamed from: a  reason: collision with root package name */
    private final e f43415a;

    /* renamed from: b  reason: collision with root package name */
    private final b f43416b;

    private n(e eVar, b bVar) {
        this.f43415a = (e) com.google.common.base.o.t(eVar, "channelCreds");
        this.f43416b = (b) com.google.common.base.o.t(bVar, "callCreds");
    }

    public static e a(e eVar, b bVar) {
        return new n(eVar, bVar);
    }

    public b b() {
        return this.f43416b;
    }

    public e c() {
        return this.f43415a;
    }
}
