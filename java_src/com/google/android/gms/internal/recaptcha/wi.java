package com.google.android.gms.internal.recaptcha;

import com.tencent.ugc.datereport.UGCDataReportDef;
import okio.Utf8;
/* loaded from: classes2.dex */
final class wi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i9) throws zzrr {
        if (!e(b11) && (((b10 << 28) + (b11 + 112)) >> 30) == 0 && !e(b12) && !e(b13)) {
            int i10 = ((b10 & 7) << 18) | ((b11 & Utf8.REPLACEMENT_BYTE) << 12) | ((b12 & Utf8.REPLACEMENT_BYTE) << 6) | (b13 & Utf8.REPLACEMENT_BYTE);
            cArr[i9] = (char) ((i10 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
            cArr[i9 + 1] = (char) ((i10 & UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER) + Utf8.LOG_SURROGATE_HEADER);
            return;
        }
        throw zzrr.zzd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(byte b10, byte b11, char[] cArr, int i9) throws zzrr {
        if (b10 >= -62 && !e(b11)) {
            cArr[i9] = (char) (((b10 & 31) << 6) | (b11 & Utf8.REPLACEMENT_BYTE));
            return;
        }
        throw zzrr.zzd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(byte b10, byte b11, byte b12, char[] cArr, int i9) throws zzrr {
        if (!e(b11)) {
            if (b10 == -32) {
                if (b11 >= -96) {
                    b10 = -32;
                }
            }
            if (b10 == -19) {
                if (b11 < -96) {
                    b10 = -19;
                }
            }
            if (!e(b12)) {
                cArr[i9] = (char) (((b10 & 15) << 12) | ((b11 & Utf8.REPLACEMENT_BYTE) << 6) | (b12 & Utf8.REPLACEMENT_BYTE));
                return;
            }
        }
        throw zzrr.zzd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean d(byte b10) {
        return b10 >= 0;
    }

    private static boolean e(byte b10) {
        return b10 > -65;
    }
}
