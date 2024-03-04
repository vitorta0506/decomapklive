package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    final int f7837a;

    /* renamed from: b  reason: collision with root package name */
    final String f7838b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    final ArrayList f7839c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(int i9, String str, ArrayList arrayList) {
        this.f7837a = i9;
        this.f7838b = str;
        this.f7839c = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7837a);
        x3.a.q(parcel, 2, this.f7838b, false);
        x3.a.u(parcel, 3, this.f7839c, false);
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(String str, Map map) {
        ArrayList arrayList;
        this.f7837a = 1;
        this.f7838b = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (String str2 : map.keySet()) {
                arrayList.add(new zam(str2, (FastJsonResponse.Field) map.get(str2)));
            }
        }
        this.f7839c = arrayList;
    }
}
