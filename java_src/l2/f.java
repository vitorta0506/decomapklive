package l2;

import c2.m;
import c2.o;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.b0;
import java.io.IOException;
/* loaded from: classes.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    public int f54143a;

    /* renamed from: b  reason: collision with root package name */
    public int f54144b;

    /* renamed from: c  reason: collision with root package name */
    public long f54145c;

    /* renamed from: d  reason: collision with root package name */
    public long f54146d;

    /* renamed from: e  reason: collision with root package name */
    public long f54147e;

    /* renamed from: f  reason: collision with root package name */
    public long f54148f;

    /* renamed from: g  reason: collision with root package name */
    public int f54149g;

    /* renamed from: h  reason: collision with root package name */
    public int f54150h;

    /* renamed from: i  reason: collision with root package name */
    public int f54151i;

    /* renamed from: j  reason: collision with root package name */
    public final int[] f54152j = new int[255];

    /* renamed from: k  reason: collision with root package name */
    private final b0 f54153k = new b0(255);

    public boolean a(m mVar, boolean z10) throws IOException {
        b();
        this.f54153k.L(27);
        if (o.b(mVar, this.f54153k.d(), 0, 27, z10) && this.f54153k.F() == 1332176723) {
            int D = this.f54153k.D();
            this.f54143a = D;
            if (D != 0) {
                if (z10) {
                    return false;
                }
                throw ParserException.createForUnsupportedContainerFeature("unsupported bit stream revision");
            }
            this.f54144b = this.f54153k.D();
            this.f54145c = this.f54153k.r();
            this.f54146d = this.f54153k.t();
            this.f54147e = this.f54153k.t();
            this.f54148f = this.f54153k.t();
            int D2 = this.f54153k.D();
            this.f54149g = D2;
            this.f54150h = D2 + 27;
            this.f54153k.L(D2);
            if (o.b(mVar, this.f54153k.d(), 0, this.f54149g, z10)) {
                for (int i9 = 0; i9 < this.f54149g; i9++) {
                    this.f54152j[i9] = this.f54153k.D();
                    this.f54151i += this.f54152j[i9];
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public void b() {
        this.f54143a = 0;
        this.f54144b = 0;
        this.f54145c = 0L;
        this.f54146d = 0L;
        this.f54147e = 0L;
        this.f54148f = 0L;
        this.f54149g = 0;
        this.f54150h = 0;
        this.f54151i = 0;
    }

    public boolean c(m mVar) throws IOException {
        return d(mVar, -1L);
    }

    public boolean d(m mVar, long j10) throws IOException {
        int i9;
        com.google.android.exoplayer2.util.a.a(mVar.getPosition() == mVar.h());
        this.f54153k.L(4);
        while (true) {
            i9 = (j10 > (-1L) ? 1 : (j10 == (-1L) ? 0 : -1));
            if ((i9 == 0 || mVar.getPosition() + 4 < j10) && o.b(mVar, this.f54153k.d(), 0, 4, true)) {
                this.f54153k.P(0);
                if (this.f54153k.F() == 1332176723) {
                    mVar.f();
                    return true;
                }
                mVar.k(1);
            }
        }
        do {
            if (i9 != 0 && mVar.getPosition() >= j10) {
                break;
            }
        } while (mVar.skip(1) != -1);
        return false;
    }
}
