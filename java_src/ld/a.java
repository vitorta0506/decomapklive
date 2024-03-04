package ld;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import md.b;
import md.c;
import md.d;
import md.e;
import md.f;
import md.g;
import md.h;
import md.i;
import md.j;
import md.k;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private b f54303a;

    /* renamed from: b  reason: collision with root package name */
    private c f54304b;

    /* renamed from: c  reason: collision with root package name */
    private g f54305c;

    /* renamed from: d  reason: collision with root package name */
    private k f54306d;

    /* renamed from: e  reason: collision with root package name */
    private h f54307e;

    /* renamed from: f  reason: collision with root package name */
    private e f54308f;

    /* renamed from: g  reason: collision with root package name */
    private j f54309g;

    /* renamed from: h  reason: collision with root package name */
    private d f54310h;

    /* renamed from: i  reason: collision with root package name */
    private i f54311i;

    /* renamed from: j  reason: collision with root package name */
    private f f54312j;

    /* renamed from: k  reason: collision with root package name */
    private int f54313k;

    /* renamed from: l  reason: collision with root package name */
    private int f54314l;

    /* renamed from: m  reason: collision with root package name */
    private int f54315m;

    public a(@NonNull kd.a aVar) {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        this.f54303a = new b(paint, aVar);
        this.f54304b = new c(paint, aVar);
        this.f54305c = new g(paint, aVar);
        this.f54306d = new k(paint, aVar);
        this.f54307e = new h(paint, aVar);
        this.f54308f = new e(paint, aVar);
        this.f54309g = new j(paint, aVar);
        this.f54310h = new d(paint, aVar);
        this.f54311i = new i(paint, aVar);
        this.f54312j = new f(paint, aVar);
    }

    public void a(@NonNull Canvas canvas, boolean z10) {
        if (this.f54304b != null) {
            this.f54303a.a(canvas, this.f54313k, z10, this.f54314l, this.f54315m);
        }
    }

    public void b(@NonNull Canvas canvas, @NonNull fd.a aVar) {
        c cVar = this.f54304b;
        if (cVar != null) {
            cVar.a(canvas, aVar, this.f54313k, this.f54314l, this.f54315m);
        }
    }

    public void c(@NonNull Canvas canvas, @NonNull fd.a aVar) {
        d dVar = this.f54310h;
        if (dVar != null) {
            dVar.a(canvas, aVar, this.f54314l, this.f54315m);
        }
    }

    public void d(@NonNull Canvas canvas, @NonNull fd.a aVar) {
        e eVar = this.f54308f;
        if (eVar != null) {
            eVar.a(canvas, aVar, this.f54313k, this.f54314l, this.f54315m);
        }
    }

    public void e(@NonNull Canvas canvas, @NonNull fd.a aVar) {
        g gVar = this.f54305c;
        if (gVar != null) {
            gVar.a(canvas, aVar, this.f54313k, this.f54314l, this.f54315m);
        }
    }

    public void f(@NonNull Canvas canvas, @NonNull fd.a aVar) {
        f fVar = this.f54312j;
        if (fVar != null) {
            fVar.a(canvas, aVar, this.f54313k, this.f54314l, this.f54315m);
        }
    }

    public void g(@NonNull Canvas canvas, @NonNull fd.a aVar) {
        h hVar = this.f54307e;
        if (hVar != null) {
            hVar.a(canvas, aVar, this.f54314l, this.f54315m);
        }
    }

    public void h(@NonNull Canvas canvas, @NonNull fd.a aVar) {
        i iVar = this.f54311i;
        if (iVar != null) {
            iVar.a(canvas, aVar, this.f54313k, this.f54314l, this.f54315m);
        }
    }

    public void i(@NonNull Canvas canvas, @NonNull fd.a aVar) {
        j jVar = this.f54309g;
        if (jVar != null) {
            jVar.a(canvas, aVar, this.f54314l, this.f54315m);
        }
    }

    public void j(@NonNull Canvas canvas, @NonNull fd.a aVar) {
        k kVar = this.f54306d;
        if (kVar != null) {
            kVar.a(canvas, aVar, this.f54314l, this.f54315m);
        }
    }

    public void k(int i9, int i10, int i11) {
        this.f54313k = i9;
        this.f54314l = i10;
        this.f54315m = i11;
    }
}
