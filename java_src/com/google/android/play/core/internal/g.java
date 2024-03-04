package com.google.android.play.core.internal;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.IllegalFormatException;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final String f10569a;

    public g(String str) {
        int myUid = Process.myUid();
        int myPid = Process.myPid();
        StringBuilder sb2 = new StringBuilder(39);
        sb2.append("UID: [");
        sb2.append(myUid);
        sb2.append("]  PID: [");
        sb2.append(myPid);
        sb2.append("] ");
        String sb3 = sb2.toString();
        String valueOf = String.valueOf(str);
        this.f10569a = valueOf.length() != 0 ? sb3.concat(valueOf) : new String(sb3);
    }

    private static String f(String str, String str2, @Nullable Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e10) {
                String valueOf = String.valueOf(str2);
                Log.e("PlayCore", valueOf.length() != 0 ? "Unable to format ".concat(valueOf) : new String("Unable to format "), e10);
                String join = TextUtils.join(", ", objArr);
                StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 3 + String.valueOf(join).length());
                sb2.append(str2);
                sb2.append(" [");
                sb2.append(join);
                sb2.append("]");
                str2 = sb2.toString();
            }
        }
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb3.append(str);
        sb3.append(" : ");
        sb3.append(str2);
        return sb3.toString();
    }

    public final int a(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 3)) {
            return Log.d("PlayCore", f(this.f10569a, str, objArr));
        }
        return 0;
    }

    public final int b(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", f(this.f10569a, str, objArr));
        }
        return 0;
    }

    public final int c(Throwable th2, String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", f(this.f10569a, str, objArr), th2);
        }
        return 0;
    }

    public final int d(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            return Log.i("PlayCore", f(this.f10569a, str, objArr));
        }
        return 0;
    }

    public final int e(String str, @Nullable Object... objArr) {
        if (Log.isLoggable("PlayCore", 5)) {
            return Log.w("PlayCore", f(this.f10569a, str, objArr));
        }
        return 0;
    }
}
