package e;

import com.airbnb.lottie.model.content.ShapeTrimPath;
import f.a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class s implements c, a.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f38300a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f38301b;

    /* renamed from: c  reason: collision with root package name */
    private final List<a.b> f38302c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final ShapeTrimPath.Type f38303d;

    /* renamed from: e  reason: collision with root package name */
    private final f.a<?, Float> f38304e;

    /* renamed from: f  reason: collision with root package name */
    private final f.a<?, Float> f38305f;

    /* renamed from: g  reason: collision with root package name */
    private final f.a<?, Float> f38306g;

    public s(com.airbnb.lottie.model.layer.a aVar, ShapeTrimPath shapeTrimPath) {
        this.f38300a = shapeTrimPath.c();
        this.f38301b = shapeTrimPath.g();
        this.f38303d = shapeTrimPath.f();
        f.a<Float, Float> a10 = shapeTrimPath.e().a();
        this.f38304e = a10;
        f.a<Float, Float> a11 = shapeTrimPath.b().a();
        this.f38305f = a11;
        f.a<Float, Float> a12 = shapeTrimPath.d().a();
        this.f38306g = a12;
        aVar.i(a10);
        aVar.i(a11);
        aVar.i(a12);
        a10.a(this);
        a11.a(this);
        a12.a(this);
    }

    @Override // f.a.b
    public void a() {
        for (int i9 = 0; i9 < this.f38302c.size(); i9++) {
            this.f38302c.get(i9).a();
        }
    }

    @Override // e.c
    public void b(List<c> list, List<c> list2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(a.b bVar) {
        this.f38302c.add(bVar);
    }

    public f.a<?, Float> e() {
        return this.f38305f;
    }

    public f.a<?, Float> f() {
        return this.f38306g;
    }

    public f.a<?, Float> h() {
        return this.f38304e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShapeTrimPath.Type i() {
        return this.f38303d;
    }

    public boolean j() {
        return this.f38301b;
    }
}
