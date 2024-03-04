package v3;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.a;
/* loaded from: classes2.dex */
public final class q extends n {

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.gms.common.api.c f58986c;

    public q(com.google.android.gms.common.api.c cVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f58986c = cVar;
    }

    @Override // com.google.android.gms.common.api.d
    public final <A extends a.b, T extends com.google.android.gms.common.api.internal.b<? extends com.google.android.gms.common.api.i, A>> T a(@NonNull T t10) {
        return (T) this.f58986c.i(t10);
    }

    @Override // com.google.android.gms.common.api.d
    public final Looper c() {
        return this.f58986c.m();
    }
}
