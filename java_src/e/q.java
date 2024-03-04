package e;

import android.graphics.Path;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import f.a;
import java.util.List;
/* loaded from: classes.dex */
public class q implements m, a.b {

    /* renamed from: b  reason: collision with root package name */
    private final String f38289b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f38290c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.f f38291d;

    /* renamed from: e  reason: collision with root package name */
    private final f.a<?, Path> f38292e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f38293f;

    /* renamed from: a  reason: collision with root package name */
    private final Path f38288a = new Path();

    /* renamed from: g  reason: collision with root package name */
    private b f38294g = new b();

    public q(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, j.k kVar) {
        this.f38289b = kVar.b();
        this.f38290c = kVar.d();
        this.f38291d = fVar;
        f.a<j.h, Path> a10 = kVar.c().a();
        this.f38292e = a10;
        aVar.i(a10);
        a10.a(this);
    }

    private void c() {
        this.f38293f = false;
        this.f38291d.invalidateSelf();
    }

    @Override // f.a.b
    public void a() {
        c();
    }

    @Override // e.c
    public void b(List<c> list, List<c> list2) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            c cVar = list.get(i9);
            if (cVar instanceof s) {
                s sVar = (s) cVar;
                if (sVar.i() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f38294g.a(sVar);
                    sVar.c(this);
                }
            }
        }
    }

    @Override // e.m
    public Path getPath() {
        if (this.f38293f) {
            return this.f38288a;
        }
        this.f38288a.reset();
        if (this.f38290c) {
            this.f38293f = true;
            return this.f38288a;
        }
        this.f38288a.set(this.f38292e.h());
        this.f38288a.setFillType(Path.FillType.EVEN_ODD);
        this.f38294g.b(this.f38288a);
        this.f38293f = true;
        return this.f38288a;
    }
}
