package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public final class x6 implements e6 {
    @GuardedBy("SharedPreferencesLoader.class")

    /* renamed from: b  reason: collision with root package name */
    private static final Map f8423b = new ArrayMap();

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f8424a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static x6 b(Context context, String str, Runnable runnable) {
        x6 x6Var;
        if (!v5.b()) {
            synchronized (x6.class) {
                x6Var = (x6) f8423b.get(null);
                if (x6Var == null) {
                    StrictMode.allowThreadDiskReads();
                    throw null;
                }
            }
            return x6Var;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void c() {
        synchronized (x6.class) {
            Map map = f8423b;
            Iterator it = map.values().iterator();
            if (!it.hasNext()) {
                map.clear();
            } else {
                SharedPreferences sharedPreferences = ((x6) it.next()).f8424a;
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.e6
    @Nullable
    public final Object a(String str) {
        throw null;
    }
}
