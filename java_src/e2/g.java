package e2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import com.google.common.collect.ImmutableList;
import com.tencent.thumbplayer.core.common.TPDecoderType;
/* loaded from: classes.dex */
final class g implements a {

    /* renamed from: a  reason: collision with root package name */
    public final k1 f38361a;

    public g(k1 k1Var) {
        this.f38361a = k1Var;
    }

    @Nullable
    private static String a(int i9) {
        switch (i9) {
            case 808802372:
            case 877677894:
            case 1145656883:
            case 1145656920:
            case 1482049860:
            case 1684633208:
            case 2021026148:
                return "video/mp4v-es";
            case 826496577:
            case 828601953:
            case 875967048:
                return TPDecoderType.TP_CODEC_MIMETYPE_AVC;
            case 842289229:
                return "video/mp42";
            case 859066445:
                return "video/mp43";
            case 1196444237:
            case 1735420525:
                return "video/mjpeg";
            default:
                return null;
        }
    }

    @Nullable
    private static String b(int i9) {
        if (i9 != 1) {
            if (i9 != 85) {
                if (i9 != 255) {
                    if (i9 != 8192) {
                        if (i9 != 8193) {
                            return null;
                        }
                        return "audio/vnd.dts";
                    }
                    return "audio/ac3";
                }
                return "audio/mp4a-latm";
            }
            return "audio/mpeg";
        }
        return "audio/raw";
    }

    @Nullable
    private static a c(b0 b0Var) {
        b0Var.Q(4);
        int q10 = b0Var.q();
        int q11 = b0Var.q();
        b0Var.Q(4);
        int q12 = b0Var.q();
        String a10 = a(q12);
        if (a10 == null) {
            r.i("StreamFormatChunk", "Ignoring track with unsupported compression " + q12);
            return null;
        }
        k1.b bVar = new k1.b();
        bVar.j0(q10).Q(q11).e0(a10);
        return new g(bVar.E());
    }

    @Nullable
    public static a d(int i9, b0 b0Var) {
        if (i9 == 2) {
            return c(b0Var);
        }
        if (i9 == 1) {
            return e(b0Var);
        }
        r.i("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + l0.g0(i9));
        return null;
    }

    @Nullable
    private static a e(b0 b0Var) {
        int v10 = b0Var.v();
        String b10 = b(v10);
        if (b10 == null) {
            r.i("StreamFormatChunk", "Ignoring track with unsupported format tag " + v10);
            return null;
        }
        int v11 = b0Var.v();
        int q10 = b0Var.q();
        b0Var.Q(6);
        int W = l0.W(b0Var.J());
        int v12 = b0Var.v();
        byte[] bArr = new byte[v12];
        b0Var.j(bArr, 0, v12);
        k1.b bVar = new k1.b();
        bVar.e0(b10).H(v11).f0(q10);
        if ("audio/raw".equals(b10) && W != 0) {
            bVar.Y(W);
        }
        if ("audio/mp4a-latm".equals(b10) && v12 > 0) {
            bVar.T(ImmutableList.of(bArr));
        }
        return new g(bVar.E());
    }

    @Override // e2.a
    public int getType() {
        return 1718776947;
    }
}
