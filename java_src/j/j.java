package j;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class j implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f52861a;

    /* renamed from: b  reason: collision with root package name */
    private final List<c> f52862b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f52863c;

    public j(String str, List<c> list, boolean z10) {
        this.f52861a = str;
        this.f52862b = list;
        this.f52863c = z10;
    }

    @Override // j.c
    public e.c a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new e.d(fVar, aVar, this);
    }

    public List<c> b() {
        return this.f52862b;
    }

    public String c() {
        return this.f52861a;
    }

    public boolean d() {
        return this.f52863c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f52861a + "' Shapes: " + Arrays.toString(this.f52862b.toArray()) + '}';
    }
}
