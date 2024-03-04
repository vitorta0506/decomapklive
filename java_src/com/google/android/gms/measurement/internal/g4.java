package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.nc;
import java.util.Map;
/* loaded from: classes2.dex */
final class g4 implements nc {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9430a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ h4 f9431b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g4(h4 h4Var, String str) {
        this.f9431b = h4Var;
        this.f9430a = str;
    }

    @Override // com.google.android.gms.internal.measurement.nc
    public final String b(String str) {
        Map map;
        map = this.f9431b.f9454d;
        Map map2 = (Map) map.get(this.f9430a);
        if (map2 == null || !map2.containsKey(str)) {
            return null;
        }
        return (String) map2.get(str);
    }
}
