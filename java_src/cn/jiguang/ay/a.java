package cn.jiguang.ay;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private C0037a[] f2229a = new C0037a[17];

    /* renamed from: cn.jiguang.ay.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0037a {

        /* renamed from: a  reason: collision with root package name */
        g f2230a;

        /* renamed from: b  reason: collision with root package name */
        int f2231b;

        /* renamed from: c  reason: collision with root package name */
        C0037a f2232c;

        private C0037a() {
        }
    }

    public int a(g gVar) {
        int i9 = -1;
        for (C0037a c0037a = this.f2229a[(gVar.hashCode() & Integer.MAX_VALUE) % 17]; c0037a != null; c0037a = c0037a.f2232c) {
            if (c0037a.f2230a.equals(gVar)) {
                i9 = c0037a.f2231b;
            }
        }
        return i9;
    }

    public void a(int i9, g gVar) {
        if (i9 > 16383) {
            return;
        }
        int hashCode = (gVar.hashCode() & Integer.MAX_VALUE) % 17;
        C0037a c0037a = new C0037a();
        c0037a.f2230a = gVar;
        c0037a.f2231b = i9;
        C0037a[] c0037aArr = this.f2229a;
        c0037a.f2232c = c0037aArr[hashCode];
        c0037aArr[hashCode] = c0037a;
    }
}
