package e4;

import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
/* loaded from: classes2.dex */
public final class m {
    @ChecksSdkIntAtLeast(api = 14)
    public static boolean a() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 16)
    public static boolean b() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 18)
    public static boolean c() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 19)
    public static boolean d() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 20)
    public static boolean e() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 21)
    public static boolean f() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 24)
    public static boolean g() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @ChecksSdkIntAtLeast(api = 26)
    public static boolean h() {
        return Build.VERSION.SDK_INT >= 26;
    }

    @ChecksSdkIntAtLeast(api = 28)
    public static boolean i() {
        return Build.VERSION.SDK_INT >= 28;
    }

    @ChecksSdkIntAtLeast(api = 29)
    public static boolean j() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @ChecksSdkIntAtLeast(api = 30)
    public static boolean k() {
        return Build.VERSION.SDK_INT >= 30;
    }

    @ChecksSdkIntAtLeast(api = 31)
    public static boolean l() {
        return Build.VERSION.SDK_INT >= 31;
    }
}
