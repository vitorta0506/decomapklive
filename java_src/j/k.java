package j;

import e.q;
/* loaded from: classes.dex */
public class k implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f52864a;

    /* renamed from: b  reason: collision with root package name */
    private final int f52865b;

    /* renamed from: c  reason: collision with root package name */
    private final i.h f52866c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f52867d;

    public k(String str, int i9, i.h hVar, boolean z10) {
        this.f52864a = str;
        this.f52865b = i9;
        this.f52866c = hVar;
        this.f52867d = z10;
    }

    @Override // j.c
    public e.c a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new q(fVar, aVar, this);
    }

    public String b() {
        return this.f52864a;
    }

    public i.h c() {
        return this.f52866c;
    }

    public boolean d() {
        return this.f52867d;
    }

    public String toString() {
        return "ShapePath{name=" + this.f52864a + ", index=" + this.f52865b + '}';
    }
}
