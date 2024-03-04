package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.a;
/* loaded from: classes2.dex */
public class u implements a.d {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public static final u f7792b = a().a();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f7793a;

    /* loaded from: classes2.dex */
    public static class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f7794a;

        /* synthetic */ a(x xVar) {
        }

        @NonNull
        public u a() {
            return new u(this.f7794a, null);
        }
    }

    /* synthetic */ u(String str, y yVar) {
        this.f7793a = str;
    }

    @NonNull
    public static a a() {
        return new a(null);
    }

    @NonNull
    public final Bundle b() {
        Bundle bundle = new Bundle();
        String str = this.f7793a;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof u) {
            return n.b(this.f7793a, ((u) obj).f7793a);
        }
        return false;
    }

    public final int hashCode() {
        return n.c(this.f7793a);
    }
}
