package j;

import androidx.annotation.Nullable;
import e.p;
import i.l;
/* loaded from: classes.dex */
public class g implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f52847a;

    /* renamed from: b  reason: collision with root package name */
    private final i.b f52848b;

    /* renamed from: c  reason: collision with root package name */
    private final i.b f52849c;

    /* renamed from: d  reason: collision with root package name */
    private final l f52850d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f52851e;

    public g(String str, i.b bVar, i.b bVar2, l lVar, boolean z10) {
        this.f52847a = str;
        this.f52848b = bVar;
        this.f52849c = bVar2;
        this.f52850d = lVar;
        this.f52851e = z10;
    }

    @Override // j.c
    @Nullable
    public e.c a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new p(fVar, aVar, this);
    }

    public i.b b() {
        return this.f52848b;
    }

    public String c() {
        return this.f52847a;
    }

    public i.b d() {
        return this.f52849c;
    }

    public l e() {
        return this.f52850d;
    }

    public boolean f() {
        return this.f52851e;
    }
}
