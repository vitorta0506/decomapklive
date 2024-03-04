package c2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.util.l0;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public final int f1555a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1556b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1557c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1558d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1559e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1560f;

    /* renamed from: g  reason: collision with root package name */
    public final int f1561g;

    /* renamed from: h  reason: collision with root package name */
    public final int f1562h;

    /* renamed from: i  reason: collision with root package name */
    public final int f1563i;

    /* renamed from: j  reason: collision with root package name */
    public final long f1564j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final a f1565k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final Metadata f1566l;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f1567a;

        /* renamed from: b  reason: collision with root package name */
        public final long[] f1568b;

        public a(long[] jArr, long[] jArr2) {
            this.f1567a = jArr;
            this.f1568b = jArr2;
        }
    }

    public v(byte[] bArr, int i9) {
        com.google.android.exoplayer2.util.a0 a0Var = new com.google.android.exoplayer2.util.a0(bArr);
        a0Var.p(i9 * 8);
        this.f1555a = a0Var.h(16);
        this.f1556b = a0Var.h(16);
        this.f1557c = a0Var.h(24);
        this.f1558d = a0Var.h(24);
        int h10 = a0Var.h(20);
        this.f1559e = h10;
        this.f1560f = j(h10);
        this.f1561g = a0Var.h(3) + 1;
        int h11 = a0Var.h(5) + 1;
        this.f1562h = h11;
        this.f1563i = e(h11);
        this.f1564j = a0Var.j(36);
        this.f1565k = null;
        this.f1566l = null;
    }

    private static int e(int i9) {
        if (i9 != 8) {
            if (i9 != 12) {
                if (i9 != 16) {
                    if (i9 != 20) {
                        return i9 != 24 ? -1 : 6;
                    }
                    return 5;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static int j(int i9) {
        switch (i9) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public v a(List<PictureFrame> list) {
        return new v(this.f1555a, this.f1556b, this.f1557c, this.f1558d, this.f1559e, this.f1561g, this.f1562h, this.f1564j, this.f1565k, h(new Metadata(list)));
    }

    public v b(@Nullable a aVar) {
        return new v(this.f1555a, this.f1556b, this.f1557c, this.f1558d, this.f1559e, this.f1561g, this.f1562h, this.f1564j, aVar, this.f1566l);
    }

    public v c(List<String> list) {
        return new v(this.f1555a, this.f1556b, this.f1557c, this.f1558d, this.f1559e, this.f1561g, this.f1562h, this.f1564j, this.f1565k, h(h0.c(list)));
    }

    public long d() {
        long j10;
        long j11;
        int i9 = this.f1558d;
        if (i9 > 0) {
            j10 = (i9 + this.f1557c) / 2;
            j11 = 1;
        } else {
            int i10 = this.f1555a;
            j10 = ((((i10 != this.f1556b || i10 <= 0) ? 4096L : i10) * this.f1561g) * this.f1562h) / 8;
            j11 = 64;
        }
        return j10 + j11;
    }

    public long f() {
        long j10 = this.f1564j;
        if (j10 == 0) {
            return -9223372036854775807L;
        }
        return (j10 * 1000000) / this.f1559e;
    }

    public k1 g(byte[] bArr, @Nullable Metadata metadata) {
        bArr[4] = ByteCompanionObject.MIN_VALUE;
        int i9 = this.f1558d;
        if (i9 <= 0) {
            i9 = -1;
        }
        return new k1.b().e0("audio/flac").W(i9).H(this.f1561g).f0(this.f1559e).T(Collections.singletonList(bArr)).X(h(metadata)).E();
    }

    @Nullable
    public Metadata h(@Nullable Metadata metadata) {
        Metadata metadata2 = this.f1566l;
        return metadata2 == null ? metadata : metadata2.b(metadata);
    }

    public long i(long j10) {
        return l0.q((j10 * this.f1559e) / 1000000, 0L, this.f1564j - 1);
    }

    private v(int i9, int i10, int i11, int i12, int i13, int i14, int i15, long j10, @Nullable a aVar, @Nullable Metadata metadata) {
        this.f1555a = i9;
        this.f1556b = i10;
        this.f1557c = i11;
        this.f1558d = i12;
        this.f1559e = i13;
        this.f1560f = j(i13);
        this.f1561g = i14;
        this.f1562h = i15;
        this.f1563i = e(i15);
        this.f1564j = j10;
        this.f1565k = aVar;
        this.f1566l = metadata;
    }
}
