package io.grpc.netty.shaded.io.netty.channel;
/* loaded from: classes5.dex */
public interface j extends ug.r<i> {

    /* renamed from: h3  reason: collision with root package name */
    public static final j f43707h3 = new a();

    /* renamed from: i3  reason: collision with root package name */
    public static final j f43708i3 = new b();

    /* renamed from: j3  reason: collision with root package name */
    public static final j f43709j3 = new c();

    /* loaded from: classes5.dex */
    static class a implements j {
        a() {
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(i iVar) {
            iVar.d().close();
        }
    }

    /* loaded from: classes5.dex */
    static class b implements j {
        b() {
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(i iVar) {
            if (iVar.p0()) {
                return;
            }
            iVar.d().close();
        }
    }

    /* loaded from: classes5.dex */
    static class c implements j {
        c() {
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(i iVar) {
            if (iVar.p0()) {
                return;
            }
            iVar.d().J().v(iVar.L());
        }
    }
}
