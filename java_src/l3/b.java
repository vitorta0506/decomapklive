package l3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.v2;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public final class b extends f {

    /* renamed from: n  reason: collision with root package name */
    private final DecoderInputBuffer f54182n;

    /* renamed from: o  reason: collision with root package name */
    private final b0 f54183o;

    /* renamed from: p  reason: collision with root package name */
    private long f54184p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private a f54185q;

    /* renamed from: r  reason: collision with root package name */
    private long f54186r;

    public b() {
        super(6);
        this.f54182n = new DecoderInputBuffer(1);
        this.f54183o = new b0();
    }

    @Nullable
    private float[] P(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f54183o.N(byteBuffer.array(), byteBuffer.limit());
        this.f54183o.P(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i9 = 0; i9 < 3; i9++) {
            fArr[i9] = Float.intBitsToFloat(this.f54183o.q());
        }
        return fArr;
    }

    private void Q() {
        a aVar = this.f54185q;
        if (aVar != null) {
            aVar.d();
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void F() {
        Q();
    }

    @Override // com.google.android.exoplayer2.f
    protected void H(long j10, boolean z10) {
        this.f54186r = Long.MIN_VALUE;
        Q();
    }

    @Override // com.google.android.exoplayer2.f
    protected void L(k1[] k1VarArr, long j10, long j11) {
        this.f54184p = j11;
    }

    @Override // com.google.android.exoplayer2.w2
    public int a(k1 k1Var) {
        if ("application/x-camera-motion".equals(k1Var.f6111l)) {
            return v2.a(4);
        }
        return v2.a(0);
    }

    @Override // com.google.android.exoplayer2.u2
    public boolean c() {
        return g();
    }

    @Override // com.google.android.exoplayer2.u2, com.google.android.exoplayer2.w2
    public String getName() {
        return "CameraMotionRenderer";
    }

    @Override // com.google.android.exoplayer2.u2
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.p2.b
    public void k(int i9, @Nullable Object obj) throws ExoPlaybackException {
        if (i9 == 8) {
            this.f54185q = (a) obj;
        } else {
            super.k(i9, obj);
        }
    }

    @Override // com.google.android.exoplayer2.u2
    public void s(long j10, long j11) {
        while (!g() && this.f54186r < 100000 + j10) {
            this.f54182n.f();
            if (M(A(), this.f54182n, 0) != -4 || this.f54182n.k()) {
                return;
            }
            DecoderInputBuffer decoderInputBuffer = this.f54182n;
            this.f54186r = decoderInputBuffer.f5710e;
            if (this.f54185q != null && !decoderInputBuffer.j()) {
                this.f54182n.r();
                float[] P = P((ByteBuffer) l0.j(this.f54182n.f5708c));
                if (P != null) {
                    ((a) l0.j(this.f54185q)).b(this.f54186r - this.f54184p, P);
                }
            }
        }
    }
}
