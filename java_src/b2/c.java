package b2;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
public final class c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public byte[] f1109a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public byte[] f1110b;

    /* renamed from: c  reason: collision with root package name */
    public int f1111c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public int[] f1112d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public int[] f1113e;

    /* renamed from: f  reason: collision with root package name */
    public int f1114f;

    /* renamed from: g  reason: collision with root package name */
    public int f1115g;

    /* renamed from: h  reason: collision with root package name */
    public int f1116h;

    /* renamed from: i  reason: collision with root package name */
    private final MediaCodec.CryptoInfo f1117i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final b f1118j;

    @RequiresApi(24)
    /* loaded from: classes.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final MediaCodec.CryptoInfo f1119a;

        /* renamed from: b  reason: collision with root package name */
        private final MediaCodec.CryptoInfo.Pattern f1120b;

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i9, int i10) {
            this.f1120b.set(i9, i10);
            this.f1119a.setPattern(this.f1120b);
        }

        private b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f1119a = cryptoInfo;
            this.f1120b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }
    }

    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f1117i = cryptoInfo;
        this.f1118j = l0.f6985a >= 24 ? new b(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo a() {
        return this.f1117i;
    }

    public void b(int i9) {
        if (i9 == 0) {
            return;
        }
        if (this.f1112d == null) {
            int[] iArr = new int[1];
            this.f1112d = iArr;
            this.f1117i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f1112d;
        iArr2[0] = iArr2[0] + i9;
    }

    public void c(int i9, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i10, int i11, int i12) {
        this.f1114f = i9;
        this.f1112d = iArr;
        this.f1113e = iArr2;
        this.f1110b = bArr;
        this.f1109a = bArr2;
        this.f1111c = i10;
        this.f1115g = i11;
        this.f1116h = i12;
        MediaCodec.CryptoInfo cryptoInfo = this.f1117i;
        cryptoInfo.numSubSamples = i9;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i10;
        if (l0.f6985a >= 24) {
            ((b) com.google.android.exoplayer2.util.a.e(this.f1118j)).b(i11, i12);
        }
    }
}
