package ed;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import hd.c;
import hd.d;
import hd.e;
import hd.f;
import hd.g;
import hd.h;
import hd.i;
import hd.j;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private hd.b f38566a;

    /* renamed from: b  reason: collision with root package name */
    private e f38567b;

    /* renamed from: c  reason: collision with root package name */
    private j f38568c;

    /* renamed from: d  reason: collision with root package name */
    private g f38569d;

    /* renamed from: e  reason: collision with root package name */
    private d f38570e;

    /* renamed from: f  reason: collision with root package name */
    private i f38571f;

    /* renamed from: g  reason: collision with root package name */
    private c f38572g;

    /* renamed from: h  reason: collision with root package name */
    private h f38573h;

    /* renamed from: i  reason: collision with root package name */
    private f f38574i;

    /* renamed from: j  reason: collision with root package name */
    private a f38575j;

    /* loaded from: classes4.dex */
    public interface a {
        void a(@Nullable fd.a aVar);
    }

    public b(@Nullable a aVar) {
        this.f38575j = aVar;
    }

    @NonNull
    public hd.b a() {
        if (this.f38566a == null) {
            this.f38566a = new hd.b(this.f38575j);
        }
        return this.f38566a;
    }

    @NonNull
    public c b() {
        if (this.f38572g == null) {
            this.f38572g = new c(this.f38575j);
        }
        return this.f38572g;
    }

    @NonNull
    public d c() {
        if (this.f38570e == null) {
            this.f38570e = new d(this.f38575j);
        }
        return this.f38570e;
    }

    @NonNull
    public e d() {
        if (this.f38567b == null) {
            this.f38567b = new e(this.f38575j);
        }
        return this.f38567b;
    }

    @NonNull
    public f e() {
        if (this.f38574i == null) {
            this.f38574i = new f(this.f38575j);
        }
        return this.f38574i;
    }

    @NonNull
    public g f() {
        if (this.f38569d == null) {
            this.f38569d = new g(this.f38575j);
        }
        return this.f38569d;
    }

    @NonNull
    public h g() {
        if (this.f38573h == null) {
            this.f38573h = new h(this.f38575j);
        }
        return this.f38573h;
    }

    @NonNull
    public i h() {
        if (this.f38571f == null) {
            this.f38571f = new i(this.f38575j);
        }
        return this.f38571f;
    }

    @NonNull
    public j i() {
        if (this.f38568c == null) {
            this.f38568c = new j(this.f38575j);
        }
        return this.f38568c;
    }
}
