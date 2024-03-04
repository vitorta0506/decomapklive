package e4;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f38435a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    public static boolean a(@NonNull Context context, @NonNull Throwable th2) {
        try {
            com.google.android.gms.common.internal.p.j(context);
            com.google.android.gms.common.internal.p.j(th2);
            return false;
        } catch (Exception e10) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e10);
            return false;
        }
    }
}
