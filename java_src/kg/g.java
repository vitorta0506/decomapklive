package kg;

import java.nio.ByteOrder;
import kotlin.UShort;
/* loaded from: classes5.dex */
abstract class g extends r0 {

    /* renamed from: c  reason: collision with root package name */
    private final boolean f53811c;

    /* renamed from: d  reason: collision with root package name */
    private final a f53812d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(a aVar) {
        super(aVar);
        this.f53812d = aVar;
        this.f53811c = io.grpc.netty.shaded.io.netty.util.internal.t.A == (v1() == ByteOrder.BIG_ENDIAN);
    }

    @Override // kg.r0, kg.j
    public final j C2(int i9) {
        I2(i9);
        return this;
    }

    @Override // kg.r0, kg.j
    public final j E2(int i9) {
        this.f53812d.q3(4);
        a aVar = this.f53812d;
        int i10 = aVar.f53718b;
        if (!this.f53811c) {
            i9 = Integer.reverseBytes(i9);
        }
        P2(aVar, i10, i9);
        this.f53812d.f53718b += 4;
        return this;
    }

    @Override // kg.r0, kg.j
    public final j G2(long j10) {
        this.f53812d.q3(8);
        a aVar = this.f53812d;
        int i9 = aVar.f53718b;
        if (!this.f53811c) {
            j10 = Long.reverseBytes(j10);
        }
        Q2(aVar, i9, j10);
        this.f53812d.f53718b += 8;
        return this;
    }

    @Override // kg.r0, kg.j
    public final j I2(int i9) {
        this.f53812d.q3(2);
        a aVar = this.f53812d;
        int i10 = aVar.f53718b;
        short s10 = (short) i9;
        if (!this.f53811c) {
            s10 = Short.reverseBytes(s10);
        }
        R2(aVar, i10, s10);
        this.f53812d.f53718b += 2;
        return this;
    }

    protected abstract int M2(a aVar, int i9);

    protected abstract long N2(a aVar, int i9);

    protected abstract short O2(a aVar, int i9);

    @Override // kg.r0, kg.j
    public final short P0(int i9) {
        this.f53812d.f3(i9, 2);
        short O2 = O2(this.f53812d, i9);
        return this.f53811c ? O2 : Short.reverseBytes(O2);
    }

    protected abstract void P2(a aVar, int i9, int i10);

    protected abstract void Q2(a aVar, int i9, long j10);

    protected abstract void R2(a aVar, int i9, short s10);

    @Override // kg.r0, kg.j
    public final long S0(int i9) {
        return getInt(i9) & 4294967295L;
    }

    @Override // kg.r0, kg.j
    public final int Y0(int i9) {
        return P0(i9) & UShort.MAX_VALUE;
    }

    @Override // kg.r0, kg.j
    public final j e2(int i9, int i10) {
        this.f53812d.f3(i9, 4);
        a aVar = this.f53812d;
        if (!this.f53811c) {
            i10 = Integer.reverseBytes(i10);
        }
        P2(aVar, i9, i10);
        return this;
    }

    @Override // kg.r0, kg.j
    public final j g2(int i9, long j10) {
        this.f53812d.f3(i9, 8);
        a aVar = this.f53812d;
        if (!this.f53811c) {
            j10 = Long.reverseBytes(j10);
        }
        Q2(aVar, i9, j10);
        return this;
    }

    @Override // kg.r0, kg.j
    public final int getInt(int i9) {
        this.f53812d.f3(i9, 4);
        int M2 = M2(this.f53812d, i9);
        return this.f53811c ? M2 : Integer.reverseBytes(M2);
    }

    @Override // kg.r0, kg.j
    public final long getLong(int i9) {
        this.f53812d.f3(i9, 8);
        long N2 = N2(this.f53812d, i9);
        return this.f53811c ? N2 : Long.reverseBytes(N2);
    }

    @Override // kg.r0, kg.j
    public final j i2(int i9, int i10) {
        this.f53812d.f3(i9, 2);
        a aVar = this.f53812d;
        short s10 = (short) i10;
        if (!this.f53811c) {
            s10 = Short.reverseBytes(s10);
        }
        R2(aVar, i9, s10);
        return this;
    }
}
