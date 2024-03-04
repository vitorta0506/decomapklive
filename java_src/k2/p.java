package k2;

import androidx.annotation.Nullable;
import c2.e0;
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f53485a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f53486b;

    /* renamed from: c  reason: collision with root package name */
    public final e0.a f53487c;

    /* renamed from: d  reason: collision with root package name */
    public final int f53488d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f53489e;

    public p(boolean z10, @Nullable String str, int i9, byte[] bArr, int i10, int i11, @Nullable byte[] bArr2) {
        com.google.android.exoplayer2.util.a.a((bArr2 == null) ^ (i9 == 0));
        this.f53485a = z10;
        this.f53486b = str;
        this.f53488d = i9;
        this.f53489e = bArr2;
        this.f53487c = new e0.a(a(str), bArr, i10, i11);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int a(@Nullable String str) {
        if (str == null) {
            return 1;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals("cbc1")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3046671:
                if (str.equals("cbcs")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3049879:
                if (str.equals("cenc")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3049895:
                if (str.equals("cens")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 2;
            case 2:
            case 3:
                break;
            default:
                com.google.android.exoplayer2.util.r.i("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                break;
        }
        return 1;
    }
}
