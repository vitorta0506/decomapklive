package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import java.net.UnknownHostException;
import org.light.utils.IOUtils;
/* loaded from: classes2.dex */
public final class r {
    @GuardedBy("lock")

    /* renamed from: b  reason: collision with root package name */
    private static int f7028b = 0;
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private static boolean f7029c = true;

    /* renamed from: a  reason: collision with root package name */
    private static final Object f7027a = new Object();
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private static a f7030d = a.f7031a;

    /* loaded from: classes2.dex */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f7031a = new C0082a();

        /* renamed from: com.google.android.exoplayer2.util.r$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0082a implements a {
            C0082a() {
            }

            @Override // com.google.android.exoplayer2.util.r.a
            public void d(String str, String str2) {
                Log.d(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.r.a
            public void e(String str, String str2) {
                Log.e(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.r.a
            public void i(String str, String str2) {
                Log.i(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.r.a
            public void w(String str, String str2) {
                Log.w(str, str2);
            }
        }

        void d(String str, String str2);

        void e(String str, String str2);

        void i(String str, String str2);

        void w(String str, String str2);
    }

    private static String a(String str, @Nullable Throwable th2) {
        String e10 = e(th2);
        if (TextUtils.isEmpty(e10)) {
            return str;
        }
        return str + "\n  " + e10.replace(IOUtils.LINE_SEPARATOR_UNIX, "\n  ") + '\n';
    }

    public static void b(@Size(max = 23) String str, String str2) {
        synchronized (f7027a) {
            if (f7028b == 0) {
                f7030d.d(str, str2);
            }
        }
    }

    public static void c(@Size(max = 23) String str, String str2) {
        synchronized (f7027a) {
            if (f7028b <= 3) {
                f7030d.e(str, str2);
            }
        }
    }

    public static void d(@Size(max = 23) String str, String str2, @Nullable Throwable th2) {
        c(str, a(str2, th2));
    }

    @Nullable
    public static String e(@Nullable Throwable th2) {
        synchronized (f7027a) {
            if (th2 == null) {
                return null;
            }
            if (h(th2)) {
                return "UnknownHostException (no network)";
            }
            if (!f7029c) {
                return th2.getMessage();
            }
            return Log.getStackTraceString(th2).trim().replace("\t", "    ");
        }
    }

    public static void f(@Size(max = 23) String str, String str2) {
        synchronized (f7027a) {
            if (f7028b <= 1) {
                f7030d.i(str, str2);
            }
        }
    }

    public static void g(@Size(max = 23) String str, String str2, @Nullable Throwable th2) {
        f(str, a(str2, th2));
    }

    private static boolean h(@Nullable Throwable th2) {
        while (th2 != null) {
            if (th2 instanceof UnknownHostException) {
                return true;
            }
            th2 = th2.getCause();
        }
        return false;
    }

    public static void i(@Size(max = 23) String str, String str2) {
        synchronized (f7027a) {
            if (f7028b <= 2) {
                f7030d.w(str, str2);
            }
        }
    }

    public static void j(@Size(max = 23) String str, String str2, @Nullable Throwable th2) {
        i(str, a(str2, th2));
    }
}
