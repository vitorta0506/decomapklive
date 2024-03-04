package j;

import android.graphics.Path;
import androidx.annotation.Nullable;
import com.airbnb.lottie.model.content.GradientType;
/* loaded from: classes.dex */
public class e implements c {

    /* renamed from: a  reason: collision with root package name */
    private final GradientType f52832a;

    /* renamed from: b  reason: collision with root package name */
    private final Path.FillType f52833b;

    /* renamed from: c  reason: collision with root package name */
    private final i.c f52834c;

    /* renamed from: d  reason: collision with root package name */
    private final i.d f52835d;

    /* renamed from: e  reason: collision with root package name */
    private final i.f f52836e;

    /* renamed from: f  reason: collision with root package name */
    private final i.f f52837f;

    /* renamed from: g  reason: collision with root package name */
    private final String f52838g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final i.b f52839h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final i.b f52840i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f52841j;

    public e(String str, GradientType gradientType, Path.FillType fillType, i.c cVar, i.d dVar, i.f fVar, i.f fVar2, i.b bVar, i.b bVar2, boolean z10) {
        this.f52832a = gradientType;
        this.f52833b = fillType;
        this.f52834c = cVar;
        this.f52835d = dVar;
        this.f52836e = fVar;
        this.f52837f = fVar2;
        this.f52838g = str;
        this.f52839h = bVar;
        this.f52840i = bVar2;
        this.f52841j = z10;
    }

    @Override // j.c
    public e.c a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new e.h(fVar, aVar, this);
    }

    public i.f b() {
        return this.f52837f;
    }

    public Path.FillType c() {
        return this.f52833b;
    }

    public i.c d() {
        return this.f52834c;
    }

    public GradientType e() {
        return this.f52832a;
    }

    public String f() {
        return this.f52838g;
    }

    public i.d g() {
        return this.f52835d;
    }

    public i.f h() {
        return this.f52836e;
    }

    public boolean i() {
        return this.f52841j;
    }
}
