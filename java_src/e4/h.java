package e4;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class h {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f38437a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f38438b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static Boolean f38439c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static Boolean f38440d;

    public static boolean a(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f38440d == null) {
            boolean z10 = false;
            if (m.h() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z10 = true;
            }
            f38440d = Boolean.valueOf(z10);
        }
        return f38440d.booleanValue();
    }

    public static boolean b() {
        int i9 = com.google.android.gms.common.d.f7626a;
        return "user".equals(Build.TYPE);
    }

    public static boolean c(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f38437a == null) {
            boolean z10 = false;
            if (m.e() && packageManager.hasSystemFeature("android.hardware.type.watch")) {
                z10 = true;
            }
            f38437a = Boolean.valueOf(z10);
        }
        return f38437a.booleanValue();
    }

    public static boolean d(@NonNull Context context) {
        if (!c(context) || m.g()) {
            if (e(context)) {
                return !m.h() || m.k();
            }
            return false;
        }
        return true;
    }

    public static boolean e(@NonNull Context context) {
        if (f38438b == null) {
            boolean z10 = false;
            if (m.f() && context.getPackageManager().hasSystemFeature("cn.google")) {
                z10 = true;
            }
            f38438b = Boolean.valueOf(z10);
        }
        return f38438b.booleanValue();
    }

    public static boolean f(@NonNull Context context) {
        if (f38439c == null) {
            boolean z10 = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot") && !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                z10 = false;
            }
            f38439c = Boolean.valueOf(z10);
        }
        return f38439c.booleanValue();
    }
}
