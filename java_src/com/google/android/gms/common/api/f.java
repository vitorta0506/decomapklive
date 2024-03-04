package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.i;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class f<R extends i> {

    /* loaded from: classes2.dex */
    public interface a {
        void a(@NonNull Status status);
    }

    public abstract void a(@NonNull a aVar);

    @NonNull
    public abstract R b(long j10, @NonNull TimeUnit timeUnit);
}
