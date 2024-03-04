package o3;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.n;
/* loaded from: classes2.dex */
public final class c implements a.d {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public static final c f55511b = new c(new Bundle(), null);

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f55512a;

    /* synthetic */ c(Bundle bundle, g gVar) {
        this.f55512a = bundle;
    }

    @NonNull
    public final Bundle a() {
        return new Bundle(this.f55512a);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            return n.a(this.f55512a, ((c) obj).f55512a);
        }
        return false;
    }

    public final int hashCode() {
        return n.c(this.f55512a);
    }
}
