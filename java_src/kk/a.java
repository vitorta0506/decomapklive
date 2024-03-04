package kk;
/* loaded from: classes7.dex */
public abstract class a {

    /* renamed from: kk.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static class C0553a {

        /* renamed from: a  reason: collision with root package name */
        private static final C0553a f54018a = new C0553a();

        private C0553a() {
        }
    }

    public static void a(byte[] bArr, int i9, byte[] bArr2, int i10) {
        b(bArr, i9, bArr2, i10);
    }

    public static void b(byte[] bArr, int i9, byte[] bArr2, int i10) {
        int[] h10 = b.h();
        int[] h11 = b.h();
        lk.a.y(C0553a.f54018a, bArr, i9, h10, h11);
        b.c(h11, h10, h10, h11);
        b.r(h11, h11);
        b.u(h10, h11, h10);
        b.v(h10);
        b.m(h10, bArr2, i10);
    }
}
