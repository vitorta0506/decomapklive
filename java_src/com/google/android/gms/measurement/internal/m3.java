package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import java.util.Map;
@WorkerThread
/* loaded from: classes2.dex */
final class m3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final l3 f9624a;

    /* renamed from: b  reason: collision with root package name */
    private final int f9625b;

    /* renamed from: c  reason: collision with root package name */
    private final Throwable f9626c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f9627d;

    /* renamed from: e  reason: collision with root package name */
    private final String f9628e;

    /* renamed from: f  reason: collision with root package name */
    private final Map f9629f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ m3(String str, l3 l3Var, int i9, Throwable th2, byte[] bArr, Map map, p4.g gVar) {
        com.google.android.gms.common.internal.p.j(l3Var);
        this.f9624a = l3Var;
        this.f9625b = i9;
        this.f9626c = th2;
        this.f9627d = bArr;
        this.f9628e = str;
        this.f9629f = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9624a.a(this.f9628e, this.f9625b, this.f9626c, this.f9627d, this.f9629f);
    }
}
