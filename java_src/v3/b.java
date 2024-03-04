package v3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
/* loaded from: classes2.dex */
public final class b<O extends a.d> {

    /* renamed from: a  reason: collision with root package name */
    private final int f58960a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.gms.common.api.a f58961b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final a.d f58962c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f58963d;

    private b(com.google.android.gms.common.api.a aVar, @Nullable a.d dVar, @Nullable String str) {
        this.f58961b = aVar;
        this.f58962c = dVar;
        this.f58963d = str;
        this.f58960a = com.google.android.gms.common.internal.n.c(aVar, dVar, str);
    }

    @NonNull
    public static <O extends a.d> b<O> a(@NonNull com.google.android.gms.common.api.a<O> aVar, @Nullable O o10, @Nullable String str) {
        return new b<>(aVar, o10, str);
    }

    @NonNull
    public final String b() {
        return this.f58961b.c();
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return com.google.android.gms.common.internal.n.b(this.f58961b, bVar.f58961b) && com.google.android.gms.common.internal.n.b(this.f58962c, bVar.f58962c) && com.google.android.gms.common.internal.n.b(this.f58963d, bVar.f58963d);
        }
        return false;
    }

    public final int hashCode() {
        return this.f58960a;
    }
}
