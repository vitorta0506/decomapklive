package okio;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u000e\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\nH\u0000\u001a\u0016\u0010\u000b\u001a\u00020\n*\u00020\u00012\b\b\u0002\u0010\f\u001a\u00020\u0001H\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u001c\u0010\u0006\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0007\u0010\u0003\u001a\u0004\b\b\u0010\u0005¨\u0006\r"}, d2 = {"BASE64", "", "getBASE64$annotations", "()V", "getBASE64", "()[B", "BASE64_URL_SAFE", "getBASE64_URL_SAFE$annotations", "getBASE64_URL_SAFE", "decodeBase64ToArray", "", "encodeBase64", "map", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class _Base64Kt {
    @NotNull
    private static final byte[] BASE64;
    @NotNull
    private static final byte[] BASE64_URL_SAFE;

    static {
        ByteString.Companion companion = ByteString.Companion;
        BASE64 = companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").getData$okio();
        BASE64_URL_SAFE = companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").getData$okio();
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00b8 A[LOOP:1: B:16:0x003e->B:63:0x00b8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00b4 A[SYNTHETIC] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final byte[] decodeBase64ToArray(@org.jetbrains.annotations.NotNull java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio._Base64Kt.decodeBase64ToArray(java.lang.String):byte[]");
    }

    @NotNull
    public static final String encodeBase64(@NotNull byte[] bArr, @NotNull byte[] map) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        byte[] bArr2 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i9 = 0;
        int i10 = 0;
        while (i9 < length) {
            int i11 = i9 + 1;
            byte b10 = bArr[i9];
            int i12 = i11 + 1;
            byte b11 = bArr[i11];
            int i13 = i12 + 1;
            byte b12 = bArr[i12];
            int i14 = i10 + 1;
            bArr2[i10] = map[(b10 & UByte.MAX_VALUE) >> 2];
            int i15 = i14 + 1;
            bArr2[i14] = map[((b10 & 3) << 4) | ((b11 & UByte.MAX_VALUE) >> 4)];
            int i16 = i15 + 1;
            bArr2[i15] = map[((b11 & 15) << 2) | ((b12 & UByte.MAX_VALUE) >> 6)];
            i10 = i16 + 1;
            bArr2[i16] = map[b12 & Utf8.REPLACEMENT_BYTE];
            i9 = i13;
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b13 = bArr[i9];
            int i17 = i10 + 1;
            bArr2[i10] = map[(b13 & UByte.MAX_VALUE) >> 2];
            int i18 = i17 + 1;
            bArr2[i17] = map[(b13 & 3) << 4];
            byte b14 = (byte) 61;
            bArr2[i18] = b14;
            bArr2[i18 + 1] = b14;
        } else if (length2 == 2) {
            int i19 = i9 + 1;
            byte b15 = bArr[i9];
            byte b16 = bArr[i19];
            int i20 = i10 + 1;
            bArr2[i10] = map[(b15 & UByte.MAX_VALUE) >> 2];
            int i21 = i20 + 1;
            bArr2[i20] = map[((b15 & 3) << 4) | ((b16 & UByte.MAX_VALUE) >> 4)];
            bArr2[i21] = map[(b16 & 15) << 2];
            bArr2[i21 + 1] = (byte) 61;
        }
        return _JvmPlatformKt.toUtf8String(bArr2);
    }

    public static /* synthetic */ String encodeBase64$default(byte[] bArr, byte[] bArr2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            bArr2 = BASE64;
        }
        return encodeBase64(bArr, bArr2);
    }

    @NotNull
    public static final byte[] getBASE64() {
        return BASE64;
    }

    public static /* synthetic */ void getBASE64$annotations() {
    }

    @NotNull
    public static final byte[] getBASE64_URL_SAFE() {
        return BASE64_URL_SAFE;
    }

    public static /* synthetic */ void getBASE64_URL_SAFE$annotations() {
    }
}
