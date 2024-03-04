package com.google.android.play.core.assetpacks;

import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class a1 {

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10140g = new com.google.android.play.core.internal.g("ExtractChunkTaskHandler");

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f10141a = new byte[8192];

    /* renamed from: b  reason: collision with root package name */
    private final e0 f10142b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10143c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10144d;

    /* renamed from: e  reason: collision with root package name */
    private final j1 f10145e;

    /* renamed from: f  reason: collision with root package name */
    private final t2 f10146f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(e0 e0Var, com.google.android.play.core.internal.g1 g1Var, com.google.android.play.core.internal.g1 g1Var2, j1 j1Var, t2 t2Var) {
        this.f10142b = e0Var;
        this.f10143c = g1Var;
        this.f10144d = g1Var2;
        this.f10145e = j1Var;
        this.f10146f = t2Var;
    }

    private final File b(z0 z0Var) {
        File C = this.f10142b.C(z0Var.f10148b, z0Var.f10545c, z0Var.f10546d, z0Var.f10548f);
        if (!C.exists()) {
            C.mkdirs();
        }
        return C;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:11|(2:13|(12:15|(1:(1:(2:19|(1:21)(2:85|86))(2:87|88))(2:89|(10:91|(7:24|(4:25|(2:29|(1:38)(4:33|(1:35)|36|37))|39|(1:41)(1:65))|43|44|(1:46)|47|(2:49|(1:51)(2:52|(1:54)(3:55|(2:57|(1:59)(2:61|62))(1:64)|60))))|66|67|(2:79|80)|69|70|71|72|(2:74|75)(1:76))(2:92|93)))(2:94|(4:96|(4:97|(1:99)|100|(1:103)(1:111))|106|(3:108|109|110))(2:112|113))|22|(0)|66|67|(0)|69|70|71|72|(0)(0))(2:114|115))|116|(0)|66|67|(0)|69|70|71|72|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x02fa, code lost:
        com.google.android.play.core.assetpacks.a1.f10140g.e("Could not close file for chunk %s of slice %s of pack %s.", java.lang.Integer.valueOf(r23.f10550h), r23.f10548f, r23.f10148b);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x029e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0186 A[Catch: all -> 0x0292, TryCatch #2 {all -> 0x0292, blocks: (B:54:0x0186, B:55:0x018f, B:57:0x0199, B:59:0x019f, B:61:0x01a5, B:63:0x01ab, B:65:0x01cf, B:66:0x01db, B:67:0x01df, B:68:0x01e6, B:70:0x01ec, B:72:0x01f2, B:74:0x01f8, B:75:0x0208, B:77:0x020e, B:79:0x0214, B:80:0x0227, B:82:0x022d, B:83:0x023c, B:85:0x0242, B:91:0x0283, B:88:0x026a, B:89:0x0271, B:90:0x0272, B:47:0x0151, B:48:0x0156, B:49:0x0160, B:50:0x0161, B:51:0x0181), top: B:122:0x0043 }] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.android.play.core.assetpacks.e0] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.io.InputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.play.core.assetpacks.z0 r23) {
        /*
            Method dump skipped, instructions count: 900
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.assetpacks.a1.a(com.google.android.play.core.assetpacks.z0):void");
    }
}
