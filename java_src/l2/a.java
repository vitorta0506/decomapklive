package l2;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import c2.b0;
import c2.c0;
import c2.m;
import c2.o;
import com.google.android.exoplayer2.util.l0;
import java.io.EOFException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    private final f f54114a;

    /* renamed from: b  reason: collision with root package name */
    private final long f54115b;

    /* renamed from: c  reason: collision with root package name */
    private final long f54116c;

    /* renamed from: d  reason: collision with root package name */
    private final i f54117d;

    /* renamed from: e  reason: collision with root package name */
    private int f54118e;

    /* renamed from: f  reason: collision with root package name */
    private long f54119f;

    /* renamed from: g  reason: collision with root package name */
    private long f54120g;

    /* renamed from: h  reason: collision with root package name */
    private long f54121h;

    /* renamed from: i  reason: collision with root package name */
    private long f54122i;

    /* renamed from: j  reason: collision with root package name */
    private long f54123j;

    /* renamed from: k  reason: collision with root package name */
    private long f54124k;

    /* renamed from: l  reason: collision with root package name */
    private long f54125l;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class b implements b0 {
        private b() {
        }

        @Override // c2.b0
        public b0.a c(long j10) {
            return new b0.a(new c0(j10, l0.q((a.this.f54115b + ((a.this.f54117d.c(j10) * (a.this.f54116c - a.this.f54115b)) / a.this.f54119f)) - 30000, a.this.f54115b, a.this.f54116c - 1)));
        }

        @Override // c2.b0
        public boolean e() {
            return true;
        }

        @Override // c2.b0
        public long i() {
            return a.this.f54117d.b(a.this.f54119f);
        }
    }

    public a(i iVar, long j10, long j11, long j12, long j13, boolean z10) {
        com.google.android.exoplayer2.util.a.a(j10 >= 0 && j11 > j10);
        this.f54117d = iVar;
        this.f54115b = j10;
        this.f54116c = j11;
        if (j12 != j11 - j10 && !z10) {
            this.f54118e = 0;
        } else {
            this.f54119f = j13;
            this.f54118e = 4;
        }
        this.f54114a = new f();
    }

    private long i(m mVar) throws IOException {
        if (this.f54122i == this.f54123j) {
            return -1L;
        }
        long position = mVar.getPosition();
        if (!this.f54114a.d(mVar, this.f54123j)) {
            long j10 = this.f54122i;
            if (j10 != position) {
                return j10;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f54114a.a(mVar, false);
        mVar.f();
        long j11 = this.f54121h;
        f fVar = this.f54114a;
        long j12 = fVar.f54145c;
        long j13 = j11 - j12;
        int i9 = fVar.f54150h + fVar.f54151i;
        if (0 > j13 || j13 >= 72000) {
            int i10 = (j13 > 0L ? 1 : (j13 == 0L ? 0 : -1));
            if (i10 < 0) {
                this.f54123j = position;
                this.f54125l = j12;
            } else {
                this.f54122i = mVar.getPosition() + i9;
                this.f54124k = this.f54114a.f54145c;
            }
            long j14 = this.f54123j;
            long j15 = this.f54122i;
            if (j14 - j15 < 100000) {
                this.f54123j = j15;
                return j15;
            }
            long j16 = i9 * (i10 <= 0 ? 2L : 1L);
            long j17 = this.f54123j;
            long j18 = this.f54122i;
            return l0.q((mVar.getPosition() - j16) + ((j13 * (j17 - j18)) / (this.f54125l - this.f54124k)), j18, j17 - 1);
        }
        return -1L;
    }

    private void k(m mVar) throws IOException {
        while (true) {
            this.f54114a.c(mVar);
            this.f54114a.a(mVar, false);
            f fVar = this.f54114a;
            if (fVar.f54145c > this.f54121h) {
                mVar.f();
                return;
            }
            mVar.k(fVar.f54150h + fVar.f54151i);
            this.f54122i = mVar.getPosition();
            this.f54124k = this.f54114a.f54145c;
        }
    }

    @Override // l2.g
    public long a(m mVar) throws IOException {
        int i9 = this.f54118e;
        if (i9 == 0) {
            long position = mVar.getPosition();
            this.f54120g = position;
            this.f54118e = 1;
            long j10 = this.f54116c - 65307;
            if (j10 > position) {
                return j10;
            }
        } else if (i9 != 1) {
            if (i9 == 2) {
                long i10 = i(mVar);
                if (i10 != -1) {
                    return i10;
                }
                this.f54118e = 3;
            } else if (i9 != 3) {
                if (i9 == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            k(mVar);
            this.f54118e = 4;
            return -(this.f54124k + 2);
        }
        this.f54119f = j(mVar);
        this.f54118e = 4;
        return this.f54120g;
    }

    @Override // l2.g
    public void c(long j10) {
        this.f54121h = l0.q(j10, 0L, this.f54119f - 1);
        this.f54118e = 2;
        this.f54122i = this.f54115b;
        this.f54123j = this.f54116c;
        this.f54124k = 0L;
        this.f54125l = this.f54119f;
    }

    @Override // l2.g
    @Nullable
    /* renamed from: h */
    public b b() {
        if (this.f54119f != 0) {
            return new b();
        }
        return null;
    }

    @VisibleForTesting
    long j(m mVar) throws IOException {
        this.f54114a.b();
        if (this.f54114a.c(mVar)) {
            this.f54114a.a(mVar, false);
            f fVar = this.f54114a;
            mVar.k(fVar.f54150h + fVar.f54151i);
            long j10 = this.f54114a.f54145c;
            while (true) {
                f fVar2 = this.f54114a;
                if ((fVar2.f54144b & 4) == 4 || !fVar2.c(mVar) || mVar.getPosition() >= this.f54116c || !this.f54114a.a(mVar, true)) {
                    break;
                }
                f fVar3 = this.f54114a;
                if (!o.e(mVar, fVar3.f54150h + fVar3.f54151i)) {
                    break;
                }
                j10 = this.f54114a.f54145c;
            }
            return j10;
        }
        throw new EOFException();
    }
}
