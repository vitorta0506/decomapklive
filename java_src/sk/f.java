package sk;

import cl.h;
import cl.i;
import cl.k;
/* loaded from: classes7.dex */
public class f extends d {

    /* renamed from: b  reason: collision with root package name */
    private int f57978b;

    /* renamed from: c  reason: collision with root package name */
    private int f57979c;

    /* renamed from: d  reason: collision with root package name */
    private cl.b f57980d;

    /* renamed from: e  reason: collision with root package name */
    private i f57981e;

    /* renamed from: f  reason: collision with root package name */
    private cl.a f57982f;

    /* renamed from: g  reason: collision with root package name */
    private h f57983g;

    /* renamed from: h  reason: collision with root package name */
    private h f57984h;

    /* renamed from: i  reason: collision with root package name */
    private cl.a f57985i;

    /* renamed from: j  reason: collision with root package name */
    private i[] f57986j;

    public f(int i9, int i10, cl.b bVar, i iVar, h hVar, h hVar2, cl.a aVar) {
        super(true, null);
        this.f57979c = i10;
        this.f57978b = i9;
        this.f57980d = bVar;
        this.f57981e = iVar;
        this.f57982f = aVar;
        this.f57983g = hVar;
        this.f57984h = hVar2;
        this.f57985i = cl.c.a(bVar, iVar);
        this.f57986j = new k(bVar, iVar).c();
    }

    public cl.b b() {
        return this.f57980d;
    }

    public i c() {
        return this.f57981e;
    }

    public cl.a d() {
        return this.f57985i;
    }

    public int e() {
        return this.f57979c;
    }

    public int f() {
        return this.f57978b;
    }

    public h g() {
        return this.f57983g;
    }

    public h h() {
        return this.f57984h;
    }

    public i[] i() {
        return this.f57986j;
    }

    public cl.a j() {
        return this.f57982f;
    }
}
