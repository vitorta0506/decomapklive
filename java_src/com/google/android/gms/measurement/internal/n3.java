package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import java.net.URL;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
@WorkerThread
/* loaded from: classes2.dex */
public final class n3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final URL f9664a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f9665b;

    /* renamed from: c  reason: collision with root package name */
    private final l3 f9666c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9667d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f9668e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ o3 f9669f;

    public n3(o3 o3Var, String str, URL url, byte[] bArr, Map map, l3 l3Var) {
        this.f9669f = o3Var;
        com.google.android.gms.common.internal.p.f(str);
        com.google.android.gms.common.internal.p.j(url);
        com.google.android.gms.common.internal.p.j(l3Var);
        this.f9664a = url;
        this.f9665b = bArr;
        this.f9666c = l3Var;
        this.f9667d = str;
        this.f9668e = map;
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00fa: MOVE  (r12 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:42:0x00f8 */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0100: MOVE  (r12 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:44:0x00fd */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0163 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0123 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.n3.run():void");
    }
}
