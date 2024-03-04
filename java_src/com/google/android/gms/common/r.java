package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.v0;
import com.google.android.gms.common.internal.w0;
import com.google.android.gms.dynamite.DynamiteModule;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: e  reason: collision with root package name */
    private static volatile w0 f7820e;

    /* renamed from: g  reason: collision with root package name */
    private static Context f7822g;

    /* renamed from: a  reason: collision with root package name */
    static final p f7816a = new j(n.D0("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));

    /* renamed from: b  reason: collision with root package name */
    static final p f7817b = new k(n.D0("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));

    /* renamed from: c  reason: collision with root package name */
    static final p f7818c = new l(n.D0("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));

    /* renamed from: d  reason: collision with root package name */
    static final p f7819d = new m(n.D0("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));

    /* renamed from: f  reason: collision with root package name */
    private static final Object f7821f = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w a(String str, n nVar, boolean z10, boolean z11) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return f(str, nVar, z10, z11);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w b(String str, boolean z10, boolean z11, boolean z12) {
        return g(str, z10, false, false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String c(boolean z10, String str, n nVar) throws Exception {
        String str2 = true != (!z10 && f(str, nVar, true, false).f7847a) ? "not allowed" : "debug cert rejected";
        MessageDigest b10 = e4.a.b("SHA-256");
        com.google.android.gms.common.internal.p.j(b10);
        return String.format("%s: pkg=%s, sha256=%s, atk=%s, ver=%s", str2, str, e4.i.a(b10.digest(nVar.E0())), Boolean.valueOf(z10), "12451000.false");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void d(Context context) {
        synchronized (r.class) {
            if (f7822g != null) {
                Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
            } else if (context != null) {
                f7822g = context.getApplicationContext();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                h();
                return f7820e.d();
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.LoadingException e10) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return false;
        }
    }

    private static w f(final String str, final n nVar, final boolean z10, boolean z11) {
        try {
            h();
            com.google.android.gms.common.internal.p.j(f7822g);
            try {
                return f7820e.U(new zzs(str, nVar, z10, z11), h4.b.E0(f7822g.getPackageManager())) ? w.b() : new v(new Callable() { // from class: com.google.android.gms.common.i
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return r.c(z10, str, nVar);
                    }
                }, null);
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                return w.d("module call", e10);
            }
        } catch (DynamiteModule.LoadingException e11) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e11);
            return w.d("module init: ".concat(String.valueOf(e11.getMessage())), e11);
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [android.os.IBinder, h4.a] */
    private static w g(String str, boolean z10, boolean z11, boolean z12, boolean z13) {
        w d10;
        zzq u02;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            com.google.android.gms.common.internal.p.j(f7822g);
            try {
                h();
                zzo zzoVar = new zzo(str, z10, false, h4.b.E0(f7822g), false);
                try {
                    if (z13) {
                        u02 = f7820e.o0(zzoVar);
                    } else {
                        u02 = f7820e.u0(zzoVar);
                    }
                    if (u02.K()) {
                        d10 = w.f(u02.L());
                    } else {
                        String I = u02.I();
                        PackageManager.NameNotFoundException nameNotFoundException = u02.M() == 4 ? new PackageManager.NameNotFoundException() : null;
                        if (I == null) {
                            I = "error checking package certificate";
                        }
                        d10 = w.g(u02.L(), u02.M(), I, nameNotFoundException);
                    }
                } catch (RemoteException e10) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                    d10 = w.d("module call", e10);
                }
            } catch (DynamiteModule.LoadingException e11) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e11);
                d10 = w.d("module init: ".concat(String.valueOf(e11.getMessage())), e11);
            }
            return d10;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    private static void h() throws DynamiteModule.LoadingException {
        if (f7820e != null) {
            return;
        }
        com.google.android.gms.common.internal.p.j(f7822g);
        synchronized (f7821f) {
            if (f7820e == null) {
                f7820e = v0.f(DynamiteModule.d(f7822g, DynamiteModule.f7857f, "com.google.android.gms.googlecertificates").c("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }
}
