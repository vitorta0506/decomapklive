package com.tencent.liteav.base.system;

import com.tencent.liteav.base.Log;
import java.security.MessageDigest;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f30982a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX WARN: Code restructure failed: missing block: B:76:0x01c8, code lost:
        if (r3 == null) goto L30;
     */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x01e6: MOVE  (r3 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:88:0x01e6 */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00ee A[EDGE_INSN: B:114:0x00ee->B:51:0x00ee ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00bf A[LOOP:0: B:48:0x00ba->B:50:0x00bf, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f1 A[LOOP:1: B:52:0x00ef->B:53:0x00f1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0173 A[Catch: all -> 0x01ab, Exception -> 0x01ae, TryCatch #12 {Exception -> 0x01ae, all -> 0x01ab, blocks: (B:58:0x0153, B:60:0x0173, B:61:0x0176, B:63:0x0194, B:64:0x0197), top: B:112:0x0153 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0194 A[Catch: all -> 0x01ab, Exception -> 0x01ae, TryCatch #12 {Exception -> 0x01ae, all -> 0x01ab, blocks: (B:58:0x0153, B:60:0x0173, B:61:0x0176, B:63:0x0194, B:64:0x0197), top: B:112:0x0153 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.base.system.p.a(java.lang.String):java.lang.String");
    }

    private static String b(String str) {
        if (str == null) {
            return "";
        }
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            char[] cArr = new char[digest.length << 1];
            int i9 = 0;
            for (int i10 = 0; i10 < digest.length; i10++) {
                int i11 = i9 + 1;
                char[] cArr2 = f30982a;
                cArr[i9] = cArr2[(digest[i10] & 240) >>> 4];
                i9 = i11 + 1;
                cArr[i11] = cArr2[digest[i10] & 15];
            }
            return new String(cArr);
        } catch (Exception e10) {
            Log.e("UUID", "stringToMd5 failed.", e10);
            return "";
        }
    }
}
