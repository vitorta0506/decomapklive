package i2;

import c2.m;
import com.google.android.exoplayer2.ParserException;
import java.io.IOException;
import java.util.ArrayDeque;
import kotlin.UByte;
/* loaded from: classes.dex */
final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f40858a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<b> f40859b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    private final g f40860c = new g();

    /* renamed from: d  reason: collision with root package name */
    private i2.b f40861d;

    /* renamed from: e  reason: collision with root package name */
    private int f40862e;

    /* renamed from: f  reason: collision with root package name */
    private int f40863f;

    /* renamed from: g  reason: collision with root package name */
    private long f40864g;

    /* loaded from: classes.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f40865a;

        /* renamed from: b  reason: collision with root package name */
        private final long f40866b;

        private b(int i9, long j10) {
            this.f40865a = i9;
            this.f40866b = j10;
        }
    }

    private long c(m mVar) throws IOException {
        mVar.f();
        while (true) {
            mVar.m(this.f40858a, 0, 4);
            int c10 = g.c(this.f40858a[0]);
            if (c10 != -1 && c10 <= 4) {
                int a10 = (int) g.a(this.f40858a, c10, false);
                if (this.f40861d.e(a10)) {
                    mVar.k(c10);
                    return a10;
                }
            }
            mVar.k(1);
        }
    }

    private double d(m mVar, int i9) throws IOException {
        long e10 = e(mVar, i9);
        if (i9 == 4) {
            return Float.intBitsToFloat((int) e10);
        }
        return Double.longBitsToDouble(e10);
    }

    private long e(m mVar, int i9) throws IOException {
        mVar.readFully(this.f40858a, 0, i9);
        long j10 = 0;
        for (int i10 = 0; i10 < i9; i10++) {
            j10 = (j10 << 8) | (this.f40858a[i10] & UByte.MAX_VALUE);
        }
        return j10;
    }

    private static String f(m mVar, int i9) throws IOException {
        if (i9 == 0) {
            return "";
        }
        byte[] bArr = new byte[i9];
        mVar.readFully(bArr, 0, i9);
        while (i9 > 0 && bArr[i9 - 1] == 0) {
            i9--;
        }
        return new String(bArr, 0, i9);
    }

    @Override // i2.c
    public boolean a(m mVar) throws IOException {
        com.google.android.exoplayer2.util.a.h(this.f40861d);
        while (true) {
            b peek = this.f40859b.peek();
            if (peek != null && mVar.getPosition() >= peek.f40866b) {
                this.f40861d.a(this.f40859b.pop().f40865a);
                return true;
            }
            if (this.f40862e == 0) {
                long d10 = this.f40860c.d(mVar, true, false, 4);
                if (d10 == -2) {
                    d10 = c(mVar);
                }
                if (d10 == -1) {
                    return false;
                }
                this.f40863f = (int) d10;
                this.f40862e = 1;
            }
            if (this.f40862e == 1) {
                this.f40864g = this.f40860c.d(mVar, false, true, 8);
                this.f40862e = 2;
            }
            int d11 = this.f40861d.d(this.f40863f);
            if (d11 != 0) {
                if (d11 == 1) {
                    long position = mVar.getPosition();
                    this.f40859b.push(new b(this.f40863f, this.f40864g + position));
                    this.f40861d.h(this.f40863f, position, this.f40864g);
                    this.f40862e = 0;
                    return true;
                } else if (d11 == 2) {
                    long j10 = this.f40864g;
                    if (j10 <= 8) {
                        this.f40861d.c(this.f40863f, e(mVar, (int) j10));
                        this.f40862e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("Invalid integer size: " + this.f40864g, null);
                } else if (d11 == 3) {
                    long j11 = this.f40864g;
                    if (j11 <= 2147483647L) {
                        this.f40861d.f(this.f40863f, f(mVar, (int) j11));
                        this.f40862e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("String element size: " + this.f40864g, null);
                } else if (d11 == 4) {
                    this.f40861d.g(this.f40863f, (int) this.f40864g, mVar);
                    this.f40862e = 0;
                    return true;
                } else if (d11 == 5) {
                    long j12 = this.f40864g;
                    if (j12 != 4 && j12 != 8) {
                        throw ParserException.createForMalformedContainer("Invalid float size: " + this.f40864g, null);
                    }
                    this.f40861d.b(this.f40863f, d(mVar, (int) j12));
                    this.f40862e = 0;
                    return true;
                } else {
                    throw ParserException.createForMalformedContainer("Invalid element type " + d11, null);
                }
            }
            mVar.k((int) this.f40864g);
            this.f40862e = 0;
        }
    }

    @Override // i2.c
    public void b(i2.b bVar) {
        this.f40861d = bVar;
    }

    @Override // i2.c
    public void reset() {
        this.f40862e = 0;
        this.f40859b.clear();
        this.f40860c.e();
    }
}
