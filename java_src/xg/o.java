package xg;

import androidx.core.app.NotificationCompat;
import com.facebook.share.internal.ShareConstants;
import java.io.IOException;
import okio.Buffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private final g f59896a;

    /* renamed from: b  reason: collision with root package name */
    private final yg.b f59897b;

    /* renamed from: c  reason: collision with root package name */
    private int f59898c = 65535;

    /* renamed from: d  reason: collision with root package name */
    private final b f59899d = new b(0, 65535);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        int f59907a;

        private c() {
        }

        boolean a() {
            return this.f59907a > 0;
        }

        void b() {
            this.f59907a++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(g gVar, yg.b bVar) {
        this.f59896a = (g) com.google.common.base.o.t(gVar, NotificationCompat.CATEGORY_TRANSPORT);
        this.f59897b = (yg.b) com.google.common.base.o.t(bVar, "frameWriter");
    }

    private b f(f fVar) {
        b bVar = (b) fVar.N();
        if (bVar == null) {
            b bVar2 = new b(this, fVar, this.f59898c);
            fVar.Q(bVar2);
            return bVar2;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(boolean z10, int i9, Buffer buffer, boolean z11) {
        com.google.common.base.o.t(buffer, ShareConstants.FEED_SOURCE_PARAM);
        f a02 = this.f59896a.a0(i9);
        if (a02 == null) {
            return;
        }
        b f10 = f(a02);
        int j10 = f10.j();
        boolean e10 = f10.e();
        int size = (int) buffer.size();
        if (!e10 && j10 >= size) {
            f10.k(buffer, size, z10);
        } else {
            if (!e10 && j10 > 0) {
                f10.k(buffer, j10, false);
            }
            f10.d(buffer, (int) buffer.size(), z10);
        }
        if (z11) {
            d();
        }
    }

    void d() {
        try {
            this.f59897b.flush();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(int i9) {
        f[] W;
        if (i9 >= 0) {
            int i10 = i9 - this.f59898c;
            this.f59898c = i9;
            for (f fVar : this.f59896a.W()) {
                b bVar = (b) fVar.N();
                if (bVar == null) {
                    fVar.Q(new b(this, fVar, this.f59898c));
                } else {
                    bVar.f(i10);
                }
            }
            return i10 > 0;
        }
        throw new IllegalArgumentException("Invalid initial window size: " + i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g(f fVar, int i9) {
        if (fVar == null) {
            int f10 = this.f59899d.f(i9);
            h();
            return f10;
        }
        b f11 = f(fVar);
        int f12 = f11.f(i9);
        c cVar = new c();
        f11.l(f11.j(), cVar);
        if (cVar.a()) {
            d();
        }
        return f12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        int i9;
        f[] W = this.f59896a.W();
        int i10 = this.f59899d.i();
        int length = W.length;
        while (true) {
            i9 = 0;
            if (length <= 0 || i10 <= 0) {
                break;
            }
            int ceil = (int) Math.ceil(i10 / length);
            for (int i11 = 0; i11 < length && i10 > 0; i11++) {
                f fVar = W[i11];
                b f10 = f(fVar);
                int min = Math.min(i10, Math.min(f10.h(), ceil));
                if (min > 0) {
                    f10.a(min);
                    i10 -= min;
                }
                if (f10.h() > 0) {
                    W[i9] = fVar;
                    i9++;
                }
            }
            length = i9;
        }
        c cVar = new c();
        f[] W2 = this.f59896a.W();
        int length2 = W2.length;
        while (i9 < length2) {
            b f11 = f(W2[i9]);
            f11.l(f11.b(), cVar);
            f11.c();
            i9++;
        }
        if (cVar.a()) {
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        final Buffer f59900a;

        /* renamed from: b  reason: collision with root package name */
        final int f59901b;

        /* renamed from: c  reason: collision with root package name */
        int f59902c;

        /* renamed from: d  reason: collision with root package name */
        int f59903d;

        /* renamed from: e  reason: collision with root package name */
        f f59904e;

        /* renamed from: f  reason: collision with root package name */
        boolean f59905f;

        b(int i9, int i10) {
            this.f59905f = false;
            this.f59901b = i9;
            this.f59902c = i10;
            this.f59900a = new Buffer();
        }

        void a(int i9) {
            this.f59903d += i9;
        }

        int b() {
            return this.f59903d;
        }

        void c() {
            this.f59903d = 0;
        }

        void d(Buffer buffer, int i9, boolean z10) {
            this.f59900a.write(buffer, i9);
            this.f59905f |= z10;
        }

        boolean e() {
            return this.f59900a.size() > 0;
        }

        int f(int i9) {
            if (i9 > 0 && Integer.MAX_VALUE - i9 < this.f59902c) {
                throw new IllegalArgumentException("Window size overflow for stream: " + this.f59901b);
            }
            int i10 = this.f59902c + i9;
            this.f59902c = i10;
            return i10;
        }

        int g() {
            return Math.max(0, Math.min(this.f59902c, (int) this.f59900a.size()));
        }

        int h() {
            return g() - this.f59903d;
        }

        int i() {
            return this.f59902c;
        }

        int j() {
            return Math.min(this.f59902c, o.this.f59899d.i());
        }

        void k(Buffer buffer, int i9, boolean z10) {
            do {
                int min = Math.min(i9, o.this.f59897b.maxDataLength());
                int i10 = -min;
                o.this.f59899d.f(i10);
                f(i10);
                try {
                    o.this.f59897b.data(buffer.size() == ((long) min) && z10, this.f59901b, buffer, min);
                    this.f59904e.y().r(min);
                    i9 -= min;
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            } while (i9 > 0);
        }

        int l(int i9, c cVar) {
            int min = Math.min(i9, j());
            int i10 = 0;
            while (e() && min > 0) {
                if (min >= this.f59900a.size()) {
                    i10 += (int) this.f59900a.size();
                    Buffer buffer = this.f59900a;
                    k(buffer, (int) buffer.size(), this.f59905f);
                } else {
                    i10 += min;
                    k(this.f59900a, min, false);
                }
                cVar.b();
                min = Math.min(i9 - i10, j());
            }
            return i10;
        }

        b(o oVar, f fVar, int i9) {
            this(fVar.P(), i9);
            this.f59904e = fVar;
        }
    }
}
