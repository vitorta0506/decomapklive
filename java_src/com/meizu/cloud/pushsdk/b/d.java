package com.meizu.cloud.pushsdk.b;

import com.huawei.hms.framework.common.ContainerUtils;
import kotlin.UByte;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
class d {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f28238a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', IOUtils.DIR_SEPARATOR_UNIX};

    /* renamed from: b  reason: collision with root package name */
    private static final char f28239b = (char) Integer.parseInt("00000011", 2);

    /* renamed from: c  reason: collision with root package name */
    private static final char f28240c = (char) Integer.parseInt("00001111", 2);

    /* renamed from: d  reason: collision with root package name */
    private static final char f28241d = (char) Integer.parseInt("00111111", 2);

    /* renamed from: e  reason: collision with root package name */
    private final String f28242e;

    /* renamed from: f  reason: collision with root package name */
    private char[] f28243f;

    /* renamed from: g  reason: collision with root package name */
    private int f28244g = 0;

    public d(String str) {
        this.f28242e = str;
        a();
    }

    private void a() {
        char[] cArr = new char[f28238a.length];
        int i9 = 0;
        this.f28244g = this.f28242e.charAt(0) % '\r';
        while (true) {
            char[] cArr2 = f28238a;
            if (i9 >= cArr2.length) {
                this.f28243f = cArr;
                return;
            } else {
                cArr[i9] = cArr2[(this.f28244g + i9) % cArr2.length];
                i9++;
            }
        }
    }

    public String a(byte[] bArr) {
        String str;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder(((bArr.length + 2) / 3) * 4);
        int i9 = 0;
        int length = bArr.length;
        while (i9 < length) {
            int i10 = i9 + 1;
            int i11 = bArr[i9] & UByte.MAX_VALUE;
            if (i10 == length) {
                sb2.append(this.f28243f[i11 >>> 2]);
                sb2.append(this.f28243f[(i11 & f28239b) << 4]);
                str = "==";
            } else {
                int i12 = i10 + 1;
                int i13 = bArr[i10] & UByte.MAX_VALUE;
                if (i12 == length) {
                    sb2.append(this.f28243f[i11 >>> 2]);
                    sb2.append(this.f28243f[((i11 & f28239b) << 4) | (i13 >>> 4)]);
                    sb2.append(this.f28243f[(f28240c & i13) << 2]);
                    str = ContainerUtils.KEY_VALUE_DELIMITER;
                } else {
                    int i14 = i12 + 1;
                    int i15 = bArr[i12] & UByte.MAX_VALUE;
                    sb2.append(this.f28243f[i11 >>> 2]);
                    sb2.append(this.f28243f[((i11 & f28239b) << 4) | (i13 >>> 4)]);
                    sb2.append(this.f28243f[((i13 & f28240c) << 2) | (i15 >>> 6)]);
                    sb2.append(this.f28243f[f28241d & i15]);
                    i9 = i14;
                }
            }
            sb2.append(str);
            break;
        }
        return sb2.toString();
    }
}
