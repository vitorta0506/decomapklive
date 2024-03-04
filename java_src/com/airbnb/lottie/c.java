package com.airbnb.lottie;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.os.TraceCompat;
import java.io.File;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f3607a = false;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f3608b = false;

    /* renamed from: c  reason: collision with root package name */
    private static String[] f3609c;

    /* renamed from: d  reason: collision with root package name */
    private static long[] f3610d;

    /* renamed from: e  reason: collision with root package name */
    private static int f3611e;

    /* renamed from: f  reason: collision with root package name */
    private static int f3612f;

    /* renamed from: g  reason: collision with root package name */
    private static k.e f3613g;

    /* renamed from: h  reason: collision with root package name */
    private static k.d f3614h;

    /* renamed from: i  reason: collision with root package name */
    private static volatile k.g f3615i;

    /* renamed from: j  reason: collision with root package name */
    private static volatile k.f f3616j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements k.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f3617a;

        a(Context context) {
            this.f3617a = context;
        }

        @Override // k.d
        @NonNull
        public File a() {
            return new File(this.f3617a.getCacheDir(), "lottie_network_cache");
        }
    }

    public static void a(String str) {
        if (f3608b) {
            int i9 = f3611e;
            if (i9 == 20) {
                f3612f++;
                return;
            }
            f3609c[i9] = str;
            f3610d[i9] = System.nanoTime();
            TraceCompat.beginSection(str);
            f3611e++;
        }
    }

    public static float b(String str) {
        int i9 = f3612f;
        if (i9 > 0) {
            f3612f = i9 - 1;
            return 0.0f;
        } else if (f3608b) {
            int i10 = f3611e - 1;
            f3611e = i10;
            if (i10 != -1) {
                if (str.equals(f3609c[i10])) {
                    TraceCompat.endSection();
                    return ((float) (System.nanoTime() - f3610d[f3611e])) / 1000000.0f;
                }
                throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + f3609c[f3611e] + ".");
            }
            throw new IllegalStateException("Can't end trace section. There are none.");
        } else {
            return 0.0f;
        }
    }

    @NonNull
    public static k.f c(@NonNull Context context) {
        Context applicationContext = context.getApplicationContext();
        k.f fVar = f3616j;
        if (fVar == null) {
            synchronized (k.f.class) {
                fVar = f3616j;
                if (fVar == null) {
                    k.d dVar = f3614h;
                    if (dVar == null) {
                        dVar = new a(applicationContext);
                    }
                    fVar = new k.f(dVar);
                    f3616j = fVar;
                }
            }
        }
        return fVar;
    }

    @NonNull
    public static k.g d(@NonNull Context context) {
        k.g gVar = f3615i;
        if (gVar == null) {
            synchronized (k.g.class) {
                gVar = f3615i;
                if (gVar == null) {
                    k.f c10 = c(context);
                    k.e eVar = f3613g;
                    if (eVar == null) {
                        eVar = new k.b();
                    }
                    gVar = new k.g(c10, eVar);
                    f3615i = gVar;
                }
            }
        }
        return gVar;
    }
}
