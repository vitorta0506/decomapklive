package l2;

import c2.m;
import c2.o;
import com.google.android.exoplayer2.util.b0;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private final f f54138a = new f();

    /* renamed from: b  reason: collision with root package name */
    private final b0 f54139b = new b0(new byte[65025], 0);

    /* renamed from: c  reason: collision with root package name */
    private int f54140c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f54141d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54142e;

    private int a(int i9) {
        int i10;
        int i11 = 0;
        this.f54141d = 0;
        do {
            int i12 = this.f54141d;
            int i13 = i9 + i12;
            f fVar = this.f54138a;
            if (i13 >= fVar.f54149g) {
                break;
            }
            int[] iArr = fVar.f54152j;
            this.f54141d = i12 + 1;
            i10 = iArr[i12 + i9];
            i11 += i10;
        } while (i10 == 255);
        return i11;
    }

    public f b() {
        return this.f54138a;
    }

    public b0 c() {
        return this.f54139b;
    }

    public boolean d(m mVar) throws IOException {
        int i9;
        com.google.android.exoplayer2.util.a.f(mVar != null);
        if (this.f54142e) {
            this.f54142e = false;
            this.f54139b.L(0);
        }
        while (!this.f54142e) {
            if (this.f54140c < 0) {
                if (!this.f54138a.c(mVar) || !this.f54138a.a(mVar, true)) {
                    return false;
                }
                f fVar = this.f54138a;
                int i10 = fVar.f54150h;
                if ((fVar.f54144b & 1) == 1 && this.f54139b.f() == 0) {
                    i10 += a(0);
                    i9 = this.f54141d + 0;
                } else {
                    i9 = 0;
                }
                if (!o.e(mVar, i10)) {
                    return false;
                }
                this.f54140c = i9;
            }
            int a10 = a(this.f54140c);
            int i11 = this.f54140c + this.f54141d;
            if (a10 > 0) {
                b0 b0Var = this.f54139b;
                b0Var.c(b0Var.f() + a10);
                if (!o.d(mVar, this.f54139b.d(), this.f54139b.f(), a10)) {
                    return false;
                }
                b0 b0Var2 = this.f54139b;
                b0Var2.O(b0Var2.f() + a10);
                this.f54142e = this.f54138a.f54152j[i11 + (-1)] != 255;
            }
            if (i11 == this.f54138a.f54149g) {
                i11 = -1;
            }
            this.f54140c = i11;
        }
        return true;
    }

    public void e() {
        this.f54138a.b();
        this.f54139b.L(0);
        this.f54140c = -1;
        this.f54142e = false;
    }

    public void f() {
        if (this.f54139b.d().length == 65025) {
            return;
        }
        b0 b0Var = this.f54139b;
        b0Var.N(Arrays.copyOf(b0Var.d(), Math.max(65025, this.f54139b.f())), this.f54139b.f());
    }
}
