package com.google.android.gms.common.api.internal;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s implements t4.c {

    /* renamed from: a  reason: collision with root package name */
    private final c f7596a;

    /* renamed from: b  reason: collision with root package name */
    private final int f7597b;

    /* renamed from: c  reason: collision with root package name */
    private final v3.b f7598c;

    /* renamed from: d  reason: collision with root package name */
    private final long f7599d;

    /* renamed from: e  reason: collision with root package name */
    private final long f7600e;

    s(c cVar, int i9, v3.b bVar, long j10, long j11, @Nullable String str, @Nullable String str2) {
        this.f7596a = cVar;
        this.f7597b = i9;
        this.f7598c = bVar;
        this.f7599d = j10;
        this.f7600e = j11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static s b(c cVar, int i9, v3.b bVar) {
        boolean z10;
        if (cVar.g()) {
            RootTelemetryConfiguration a10 = com.google.android.gms.common.internal.q.b().a();
            if (a10 == null) {
                z10 = true;
            } else if (!a10.L()) {
                return null;
            } else {
                z10 = a10.M();
                o x10 = cVar.x(bVar);
                if (x10 != null) {
                    if (!(x10.u() instanceof com.google.android.gms.common.internal.d)) {
                        return null;
                    }
                    com.google.android.gms.common.internal.d dVar = (com.google.android.gms.common.internal.d) x10.u();
                    if (dVar.G() && !dVar.isConnecting()) {
                        ConnectionTelemetryConfiguration c10 = c(x10, dVar, i9);
                        if (c10 == null) {
                            return null;
                        }
                        x10.F();
                        z10 = c10.P();
                    }
                }
            }
            return new s(cVar, i9, bVar, z10 ? System.currentTimeMillis() : 0L, z10 ? SystemClock.elapsedRealtime() : 0L, null, null);
        }
        return null;
    }

    @Nullable
    private static ConnectionTelemetryConfiguration c(o oVar, com.google.android.gms.common.internal.d dVar, int i9) {
        int[] K;
        int[] L;
        ConnectionTelemetryConfiguration E = dVar.E();
        if (E == null || !E.M() || ((K = E.K()) != null ? !e4.b.b(K, i9) : !((L = E.L()) == null || !e4.b.b(L, i9))) || oVar.r() >= E.I()) {
            return null;
        }
        return E;
    }

    @Override // t4.c
    @WorkerThread
    public final void a(@NonNull t4.g gVar) {
        o x10;
        int i9;
        int i10;
        int i11;
        int i12;
        int I;
        long j10;
        long j11;
        int i13;
        if (this.f7596a.g()) {
            RootTelemetryConfiguration a10 = com.google.android.gms.common.internal.q.b().a();
            if ((a10 == null || a10.L()) && (x10 = this.f7596a.x(this.f7598c)) != null && (x10.u() instanceof com.google.android.gms.common.internal.d)) {
                com.google.android.gms.common.internal.d dVar = (com.google.android.gms.common.internal.d) x10.u();
                boolean z10 = true;
                boolean z11 = this.f7599d > 0;
                int w6 = dVar.w();
                if (a10 != null) {
                    z11 &= a10.M();
                    int I2 = a10.I();
                    int K = a10.K();
                    i9 = a10.getVersion();
                    if (dVar.G() && !dVar.isConnecting()) {
                        ConnectionTelemetryConfiguration c10 = c(x10, dVar, this.f7597b);
                        if (c10 == null) {
                            return;
                        }
                        z10 = (!c10.P() || this.f7599d <= 0) ? false : false;
                        K = c10.I();
                        z11 = z10;
                    }
                    i10 = I2;
                    i11 = K;
                } else {
                    i9 = 0;
                    i10 = 5000;
                    i11 = 100;
                }
                c cVar = this.f7596a;
                if (gVar.o()) {
                    i12 = 0;
                    I = 0;
                } else {
                    if (gVar.m()) {
                        i12 = 100;
                    } else {
                        Exception j12 = gVar.j();
                        if (j12 instanceof ApiException) {
                            Status status = ((ApiException) j12).getStatus();
                            int L = status.L();
                            ConnectionResult I3 = status.I();
                            I = I3 == null ? -1 : I3.I();
                            i12 = L;
                        } else {
                            i12 = 101;
                        }
                    }
                    I = -1;
                }
                if (z11) {
                    long j13 = this.f7599d;
                    j11 = System.currentTimeMillis();
                    j10 = j13;
                    i13 = (int) (SystemClock.elapsedRealtime() - this.f7600e);
                } else {
                    j10 = 0;
                    j11 = 0;
                    i13 = -1;
                }
                cVar.G(new MethodInvocation(this.f7597b, i12, I, j10, j11, null, null, w6, i13), i9, i10, i11);
            }
        }
    }
}
