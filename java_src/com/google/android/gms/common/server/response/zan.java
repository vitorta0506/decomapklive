package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    final int f7843a;
    private final HashMap zab;
    private final String zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zan(int i9, ArrayList arrayList, String str) {
        this.f7843a = i9;
        HashMap hashMap = new HashMap();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            zal zalVar = (zal) arrayList.get(i10);
            String str2 = zalVar.f7838b;
            HashMap hashMap2 = new HashMap();
            int size2 = ((ArrayList) p.j(zalVar.f7839c)).size();
            for (int i11 = 0; i11 < size2; i11++) {
                zam zamVar = (zam) zalVar.f7839c.get(i11);
                hashMap2.put(zamVar.f7841b, zamVar.f7842c);
            }
            hashMap.put(str2, hashMap2);
        }
        this.zab = hashMap;
        this.zac = (String) p.j(str);
        L();
    }

    public final String I() {
        return this.zac;
    }

    @Nullable
    public final Map K(String str) {
        return (Map) this.zab.get(str);
    }

    public final void L() {
        for (String str : this.zab.keySet()) {
            Map map = (Map) this.zab.get(str);
            for (String str2 : map.keySet()) {
                ((FastJsonResponse.Field) map.get(str2)).C0(this);
            }
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (String str : this.zab.keySet()) {
            sb2.append(str);
            sb2.append(":\n");
            Map map = (Map) this.zab.get(str);
            for (String str2 : map.keySet()) {
                sb2.append("  ");
                sb2.append(str2);
                sb2.append(": ");
                sb2.append(map.get(str2));
            }
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7843a);
        ArrayList arrayList = new ArrayList();
        for (String str : this.zab.keySet()) {
            arrayList.add(new zal(str, (Map) this.zab.get(str)));
        }
        x3.a.u(parcel, 2, arrayList, false);
        x3.a.q(parcel, 3, this.zac, false);
        x3.a.b(parcel, a10);
    }
}
