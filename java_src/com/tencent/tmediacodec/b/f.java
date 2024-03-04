package com.tencent.tmediacodec.b;

import android.media.MediaCodec;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public final class f extends e {
    public f(@NonNull MediaCodec mediaCodec, @NonNull d dVar) {
        super(mediaCodec, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0079  */
    @Override // com.tencent.tmediacodec.b.e
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.tencent.tmediacodec.d.a.b b(@androidx.annotation.NonNull com.tencent.tmediacodec.b.d r7) {
        /*
            r6 = this;
            com.tencent.tmediacodec.b.d r0 = r6.f34546e
            java.lang.String r1 = r0.f34538j
            java.lang.String r2 = r7.f34538j
            boolean r1 = android.text.TextUtils.equals(r1, r2)
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L26
            int r1 = r0.f34532d
            int r4 = r7.f34532d
            if (r1 != r4) goto L26
            boolean r1 = r6.f34544c
            if (r1 != 0) goto L24
            int r1 = r0.f34530b
            int r4 = r7.f34530b
            if (r1 != r4) goto L26
            int r0 = r0.f34531c
            int r1 = r7.f34531c
            if (r0 != r1) goto L26
        L24:
            r0 = 1
            goto L27
        L26:
            r0 = 0
        L27:
            if (r0 == 0) goto L7c
            int r0 = r7.f34530b
            com.tencent.tmediacodec.b.a r1 = r6.f34548g
            int r4 = r1.f34522a
            if (r0 > r4) goto L7c
            int r0 = r7.f34531c
            int r1 = r1.f34523b
            if (r0 > r1) goto L7c
            int r0 = com.tencent.tmediacodec.f.c.a(r6, r7)
            com.tencent.tmediacodec.b.a r1 = r6.f34548g
            int r1 = r1.f34524c
            if (r0 > r1) goto L7c
            com.tencent.tmediacodec.b.d r0 = r6.f34546e
            java.util.ArrayList<byte[]> r1 = r7.f34529a
            int r1 = r1.size()
            java.util.ArrayList<byte[]> r4 = r0.f34529a
            int r4 = r4.size()
            if (r1 == r4) goto L53
        L51:
            r2 = 0
            goto L74
        L53:
            r1 = 0
        L54:
            java.util.ArrayList<byte[]> r4 = r7.f34529a
            int r4 = r4.size()
            if (r1 >= r4) goto L74
            java.util.ArrayList<byte[]> r4 = r7.f34529a
            java.lang.Object r4 = r4.get(r1)
            byte[] r4 = (byte[]) r4
            java.util.ArrayList<byte[]> r5 = r0.f34529a
            java.lang.Object r5 = r5.get(r1)
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L71
            goto L51
        L71:
            int r1 = r1 + 1
            goto L54
        L74:
            if (r2 == 0) goto L79
            com.tencent.tmediacodec.d.a$b r7 = com.tencent.tmediacodec.d.a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION
            return r7
        L79:
            com.tencent.tmediacodec.d.a$b r7 = com.tencent.tmediacodec.d.a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION
            return r7
        L7c:
            com.tencent.tmediacodec.d.a$b r7 = com.tencent.tmediacodec.d.a.b.KEEP_CODEC_RESULT_NO
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tmediacodec.b.f.b(com.tencent.tmediacodec.b.d):com.tencent.tmediacodec.d.a$b");
    }

    @Override // com.tencent.tmediacodec.b.e
    public final boolean j() {
        return super.j() && this.f34547f != null && this.f34546e.f34532d == 0;
    }

    @Override // com.tencent.tmediacodec.b.e
    @NonNull
    public final String toString() {
        return "VideoCodecWrapper[" + hashCode() + ']';
    }
}
