package com.google.android.gms.recaptcha;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.recaptcha.n;
import com.google.android.gms.internal.recaptcha.p0;
import com.google.android.gms.internal.recaptcha.w;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static com.google.android.gms.common.b f10102a = com.google.android.gms.common.b.f();

    /* renamed from: b  reason: collision with root package name */
    private static int f10103b = 1;

    @NonNull
    public static b a(@NonNull Activity activity) {
        if (b(activity)) {
            return n.a(activity);
        }
        return new w(activity);
    }

    private static boolean b(Context context) {
        ExecutorService executorService = p0.f8960b;
        int i9 = f10103b;
        if (i9 != 0) {
            if (i9 == 1) {
                int h10 = f10102a.h(context, 18223000);
                if (h10 != 1 && h10 != 9 && h10 != 3) {
                    f10103b = 2;
                } else {
                    f10103b = 3;
                }
            }
            int i10 = f10103b;
            if (i10 != 0) {
                return i10 == 3;
            }
            throw null;
        }
        throw null;
    }
}
