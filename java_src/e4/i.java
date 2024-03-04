package e4;

import androidx.annotation.NonNull;
import kotlin.UByte;
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f38441a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f38442b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    @NonNull
    public static String a(@NonNull byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i9 = 0;
        for (byte b10 : bArr) {
            int i10 = b10 & UByte.MAX_VALUE;
            int i11 = i9 + 1;
            char[] cArr2 = f38442b;
            cArr[i9] = cArr2[i10 >>> 4];
            i9 = i11 + 1;
            cArr[i11] = cArr2[i10 & 15];
        }
        return new String(cArr);
    }

    @NonNull
    public static String b(@NonNull byte[] bArr, boolean z10) {
        int length = bArr.length;
        StringBuilder sb2 = new StringBuilder(length + length);
        for (int i9 = 0; i9 < length && (!z10 || i9 != length - 1 || (bArr[i9] & UByte.MAX_VALUE) != 0); i9++) {
            char[] cArr = f38441a;
            sb2.append(cArr[(bArr[i9] & 240) >>> 4]);
            sb2.append(cArr[bArr[i9] & 15]);
        }
        return sb2.toString();
    }
}
