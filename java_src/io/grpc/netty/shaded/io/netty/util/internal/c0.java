package io.grpc.netty.shaded.io.netty.util.internal;

import com.facebook.internal.ServerProtocol;
import com.tencent.bugly.Bugly;
import java.security.AccessController;
import java.security.PrivilegedAction;
/* loaded from: classes5.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45037a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(c0.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a implements PrivilegedAction<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f45038a;

        a(String str) {
            this.f45038a = str;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public String run() {
            return System.getProperty(this.f45038a);
        }
    }

    private c0() {
    }

    public static boolean a(String str) {
        return b(str) != null;
    }

    public static String b(String str) {
        return c(str, null);
    }

    public static String c(String str, String str2) {
        s.a(str, "key");
        try {
            if (System.getSecurityManager() == null) {
                str = System.getProperty(str);
            } else {
                str = (String) AccessController.doPrivileged(new a(str));
            }
        } catch (SecurityException e10) {
            f45037a.warn("Unable to retrieve a system property '{}'; default values will be used.", str, e10);
            str = null;
        }
        return str == null ? str2 : str;
    }

    public static boolean d(String str, boolean z10) {
        String b10 = b(str);
        if (b10 == null) {
            return z10;
        }
        String lowerCase = b10.trim().toLowerCase();
        if (lowerCase.isEmpty()) {
            return z10;
        }
        if (ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(lowerCase) || "yes".equals(lowerCase) || "1".equals(lowerCase)) {
            return true;
        }
        if (Bugly.SDK_IS_DEV.equals(lowerCase) || "no".equals(lowerCase) || "0".equals(lowerCase)) {
            return false;
        }
        f45037a.warn("Unable to parse the boolean system property '{}':{} - using the default value: {}", str, lowerCase, Boolean.valueOf(z10));
        return z10;
    }

    public static int e(String str, int i9) {
        String b10 = b(str);
        if (b10 == null) {
            return i9;
        }
        String trim = b10.trim();
        try {
            return Integer.parseInt(trim);
        } catch (Exception unused) {
            f45037a.warn("Unable to parse the integer system property '{}':{} - using the default value: {}", str, trim, Integer.valueOf(i9));
            return i9;
        }
    }

    public static long f(String str, long j10) {
        String b10 = b(str);
        if (b10 == null) {
            return j10;
        }
        String trim = b10.trim();
        try {
            return Long.parseLong(trim);
        } catch (Exception unused) {
            f45037a.warn("Unable to parse the long integer system property '{}':{} - using the default value: {}", str, trim, Long.valueOf(j10));
            return j10;
        }
    }
}
