package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
/* loaded from: classes2.dex */
public final class k6 {
    @GuardedBy("PhenotypeConstants.class")

    /* renamed from: a  reason: collision with root package name */
    private static final ArrayMap f8165a = new ArrayMap();

    public static synchronized Uri a(String str) {
        synchronized (k6.class) {
            ArrayMap arrayMap = f8165a;
            Uri uri = (Uri) arrayMap.get("com.google.android.gms.measurement");
            if (uri == null) {
                Uri parse = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.measurement"))));
                arrayMap.put("com.google.android.gms.measurement", parse);
                return parse;
            }
            return uri;
        }
    }
}
