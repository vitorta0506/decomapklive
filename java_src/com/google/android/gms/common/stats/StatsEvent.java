package com.google.android.gms.common.stats;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
@Deprecated
/* loaded from: classes2.dex */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {
    public abstract int I();

    public abstract long K();

    public abstract long L();

    @NonNull
    public abstract String M();

    @NonNull
    public final String toString() {
        long L = L();
        int I = I();
        long K = K();
        String M = M();
        return L + "\t" + I + "\t" + K + M;
    }
}
