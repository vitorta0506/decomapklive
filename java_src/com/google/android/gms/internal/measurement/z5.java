package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class z5 implements e6 {
    @GuardedBy("ConfigurationContentLoader.class")

    /* renamed from: h  reason: collision with root package name */
    private static final Map f8454h = new ArrayMap();

    /* renamed from: i  reason: collision with root package name */
    public static final String[] f8455i = {"key", "value"};

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f8456a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f8457b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f8458c;

    /* renamed from: d  reason: collision with root package name */
    private final ContentObserver f8459d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f8460e;

    /* renamed from: f  reason: collision with root package name */
    private volatile Map f8461f;
    @GuardedBy("this")

    /* renamed from: g  reason: collision with root package name */
    private final List f8462g;

    private z5(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        y5 y5Var = new y5(this, null);
        this.f8459d = y5Var;
        this.f8460e = new Object();
        this.f8462g = new ArrayList();
        Objects.requireNonNull(contentResolver);
        Objects.requireNonNull(uri);
        this.f8456a = contentResolver;
        this.f8457b = uri;
        this.f8458c = runnable;
        contentResolver.registerContentObserver(uri, false, y5Var);
    }

    public static z5 b(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        z5 z5Var;
        synchronized (z5.class) {
            Map map = f8454h;
            z5Var = (z5) map.get(uri);
            if (z5Var == null) {
                try {
                    z5 z5Var2 = new z5(contentResolver, uri, runnable);
                    try {
                        map.put(uri, z5Var2);
                    } catch (SecurityException unused) {
                    }
                    z5Var = z5Var2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return z5Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void e() {
        synchronized (z5.class) {
            for (z5 z5Var : f8454h.values()) {
                z5Var.f8456a.unregisterContentObserver(z5Var.f8459d);
            }
            f8454h.clear();
        }
    }

    @Override // com.google.android.gms.internal.measurement.e6
    public final /* bridge */ /* synthetic */ Object a(String str) {
        return (String) c().get(str);
    }

    public final Map c() {
        Map map;
        Map map2 = this.f8461f;
        if (map2 == null) {
            synchronized (this.f8460e) {
                map2 = this.f8461f;
                if (map2 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        map = (Map) c6.a(new d6() { // from class: com.google.android.gms.internal.measurement.x5
                            @Override // com.google.android.gms.internal.measurement.d6
                            public final Object zza() {
                                return z5.this.d();
                            }
                        });
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    } catch (SQLiteException | IllegalStateException | SecurityException unused) {
                        Log.e("ConfigurationContentLdr", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        map = null;
                    }
                    this.f8461f = map;
                    map2 = map;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map d() {
        Map hashMap;
        Cursor query = this.f8456a.query(this.f8457b, f8455i, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            if (count <= 256) {
                hashMap = new ArrayMap(count);
            } else {
                hashMap = new HashMap(count, 1.0f);
            }
            while (query.moveToNext()) {
                hashMap.put(query.getString(0), query.getString(1));
            }
            return hashMap;
        } finally {
            query.close();
        }
    }

    public final void f() {
        synchronized (this.f8460e) {
            this.f8461f = null;
            this.f8458c.run();
        }
        synchronized (this) {
            for (a6 a6Var : this.f8462g) {
                a6Var.zza();
            }
        }
    }
}
