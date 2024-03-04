package com.google.android.gms.common.api;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.a;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
@Deprecated
/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Set f7486a = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    /* loaded from: classes2.dex */
    public interface a extends v3.c {
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface b extends v3.h {
    }

    @NonNull
    public static Set<d> b() {
        Set<d> set = f7486a;
        synchronized (set) {
        }
        return set;
    }

    @NonNull
    public <A extends a.b, T extends com.google.android.gms.common.api.internal.b<? extends i, A>> T a(@NonNull T t10) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public Looper c() {
        throw new UnsupportedOperationException();
    }

    public boolean d(@NonNull v3.j jVar) {
        throw new UnsupportedOperationException();
    }

    public void e() {
        throw new UnsupportedOperationException();
    }

    public abstract void registerConnectionFailedListener(@NonNull b bVar);

    public abstract void unregisterConnectionFailedListener(@NonNull b bVar);
}
