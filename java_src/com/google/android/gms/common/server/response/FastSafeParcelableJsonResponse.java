package com.google.android.gms.common.server.response;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes2.dex */
public abstract class FastSafeParcelableJsonResponse extends FastJsonResponse implements SafeParcelable {
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @Nullable
    public Object c(@NonNull String str) {
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public boolean e(@NonNull String str) {
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (getClass().isInstance(obj)) {
            FastJsonResponse fastJsonResponse = (FastJsonResponse) obj;
            for (FastJsonResponse.Field<?, ?> field : a().values()) {
                if (d(field)) {
                    if (!fastJsonResponse.d(field) || !n.b(b(field), fastJsonResponse.b(field))) {
                        return false;
                    }
                } else if (fastJsonResponse.d(field)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i9 = 0;
        for (FastJsonResponse.Field<?, ?> field : a().values()) {
            if (d(field)) {
                i9 = (i9 * 31) + p.j(b(field)).hashCode();
            }
        }
        return i9;
    }
}
