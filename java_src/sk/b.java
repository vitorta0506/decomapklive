package sk;

import cl.h;
import cl.i;
import cl.k;
/* loaded from: classes7.dex */
public class b extends a {

    /* renamed from: c  reason: collision with root package name */
    private int f57968c;

    /* renamed from: d  reason: collision with root package name */
    private int f57969d;

    /* renamed from: e  reason: collision with root package name */
    private cl.b f57970e;

    /* renamed from: f  reason: collision with root package name */
    private i f57971f;

    /* renamed from: g  reason: collision with root package name */
    private h f57972g;

    /* renamed from: h  reason: collision with root package name */
    private cl.a f57973h;

    /* renamed from: i  reason: collision with root package name */
    private i[] f57974i;

    public b(int i9, int i10, cl.b bVar, i iVar, cl.a aVar, h hVar, String str) {
        super(true, str);
        this.f57968c = i9;
        this.f57969d = i10;
        this.f57970e = bVar;
        this.f57971f = iVar;
        this.f57973h = aVar;
        this.f57972g = hVar;
        this.f57974i = new k(bVar, iVar).c();
    }

    public b(int i9, int i10, cl.b bVar, i iVar, h hVar, String str) {
        this(i9, i10, bVar, iVar, cl.c.a(bVar, iVar), hVar, str);
    }

    public cl.b c() {
        return this.f57970e;
    }

    public i d() {
        return this.f57971f;
    }

    public cl.a e() {
        return this.f57973h;
    }

    public int f() {
        return this.f57969d;
    }

    public int g() {
        return this.f57968c;
    }

    public h h() {
        return this.f57972g;
    }

    public i[] i() {
        return this.f57974i;
    }
}
