package j;

import android.graphics.Path;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class i implements c {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f52855a;

    /* renamed from: b  reason: collision with root package name */
    private final Path.FillType f52856b;

    /* renamed from: c  reason: collision with root package name */
    private final String f52857c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final i.a f52858d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final i.d f52859e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f52860f;

    public i(String str, boolean z10, Path.FillType fillType, @Nullable i.a aVar, @Nullable i.d dVar, boolean z11) {
        this.f52857c = str;
        this.f52855a = z10;
        this.f52856b = fillType;
        this.f52858d = aVar;
        this.f52859e = dVar;
        this.f52860f = z11;
    }

    @Override // j.c
    public e.c a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new e.g(fVar, aVar, this);
    }

    @Nullable
    public i.a b() {
        return this.f52858d;
    }

    public Path.FillType c() {
        return this.f52856b;
    }

    public String d() {
        return this.f52857c;
    }

    @Nullable
    public i.d e() {
        return this.f52859e;
    }

    public boolean f() {
        return this.f52860f;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f52855a + '}';
    }
}
