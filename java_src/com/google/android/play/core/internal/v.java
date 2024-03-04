package com.google.android.play.core.internal;

import android.content.Context;
import android.util.Log;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class v implements b5.g {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10619a;

    /* renamed from: b  reason: collision with root package name */
    private final a5.f f10620b;

    /* renamed from: c  reason: collision with root package name */
    private final x f10621c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f10622d;

    /* renamed from: e  reason: collision with root package name */
    private final a5.s f10623e;

    public v(Context context, Executor executor, x xVar, a5.f fVar, a5.s sVar, byte[] bArr) {
        this.f10619a = context;
        this.f10620b = fVar;
        this.f10621c = xVar;
        this.f10622d = executor;
        this.f10623e = sVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void c(v vVar, List list, b5.e eVar) {
        Integer e10 = vVar.e(list);
        if (e10 == null) {
            return;
        }
        if (e10.intValue() == 0) {
            eVar.E();
        } else {
            eVar.F(e10.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void d(v vVar, b5.e eVar) {
        try {
            if (!a5.a.d(y0.a(vVar.f10619a))) {
                Log.e("SplitCompat", "Emulating splits failed.");
                eVar.F(-12);
                return;
            }
            Log.i("SplitCompat", "Splits installed.");
            eVar.zza();
        } catch (Exception e10) {
            Log.e("SplitCompat", "Error emulating splits.", e10);
            eVar.F(-12);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0124 A[Catch: Exception -> 0x0128, TRY_LEAVE, TryCatch #7 {Exception -> 0x0128, blocks: (B:3:0x0004, B:70:0x0124, B:5:0x0016, B:12:0x0024, B:13:0x002d, B:15:0x0033, B:17:0x005b, B:22:0x006e, B:24:0x007a, B:33:0x0099, B:40:0x00a6, B:20:0x0068, B:41:0x00a7, B:42:0x00ac, B:43:0x00b6, B:45:0x00be, B:47:0x00c6, B:48:0x00d4, B:50:0x00d8, B:52:0x00e9, B:64:0x0114, B:54:0x00f0, B:55:0x00f6, B:57:0x00fd, B:60:0x0106, B:62:0x010d), top: B:87:0x0004 }] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Integer e(java.util.List r15) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.v.e(java.util.List):java.lang.Integer");
    }

    @Override // b5.g
    public final void a(List list, b5.e eVar) {
        if (a5.a.e()) {
            this.f10622d.execute(new u(this, list, eVar));
            return;
        }
        throw new IllegalStateException("Ingestion should only be called in SplitCompat mode.");
    }
}
