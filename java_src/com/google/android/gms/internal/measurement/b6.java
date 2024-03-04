package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.collection.SimpleArrayMap;
/* loaded from: classes2.dex */
public final class b6 {

    /* renamed from: a  reason: collision with root package name */
    private final SimpleArrayMap f7956a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b6(SimpleArrayMap simpleArrayMap) {
        this.f7956a = simpleArrayMap;
    }

    public final String a(Uri uri, String str, String str2, String str3) {
        if (uri != null) {
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.f7956a.get(uri.toString());
            if (simpleArrayMap == null) {
                return null;
            }
            return (String) simpleArrayMap.get("".concat(String.valueOf(str3)));
        }
        return null;
    }
}
