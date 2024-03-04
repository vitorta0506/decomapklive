package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.light.utils.FileUtils;
/* loaded from: classes2.dex */
public final class p2 {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, q3> f8961a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, v3> f8962b;

    /* renamed from: c  reason: collision with root package name */
    private final List<u3> f8963c;

    public p2(List<q3> list) {
        List<v3> emptyList = Collections.emptyList();
        List emptyList2 = Collections.emptyList();
        this.f8961a = new HashMap();
        this.f8962b = new HashMap();
        this.f8963c = new ArrayList();
        k9 listIterator = ((zzkj) list).listIterator(0);
        while (listIterator.hasNext()) {
            q3 q3Var = (q3) listIterator.next();
            if (TextUtils.isEmpty(q3Var.b())) {
                Log.w("MobStore.FileStorage", "Cannot register backend, name empty");
            } else {
                q3 put = this.f8961a.put(q3Var.b(), q3Var);
                if (put != null) {
                    String canonicalName = put.getClass().getCanonicalName();
                    String canonicalName2 = q3Var.getClass().getCanonicalName();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(canonicalName).length() + 30 + String.valueOf(canonicalName2).length());
                    sb2.append("Cannot override Backend ");
                    sb2.append(canonicalName);
                    sb2.append(" with ");
                    sb2.append(canonicalName2);
                    throw new IllegalArgumentException(sb2.toString());
                }
            }
        }
        for (v3 v3Var : emptyList) {
            if (TextUtils.isEmpty(v3Var.zza())) {
                Log.w("MobStore.FileStorage", "Cannot register transform, name empty");
            } else {
                v3 put2 = this.f8962b.put(v3Var.zza(), v3Var);
                if (put2 != null) {
                    String canonicalName3 = put2.getClass().getCanonicalName();
                    String canonicalName4 = v3Var.getClass().getCanonicalName();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(canonicalName3).length() + 35 + String.valueOf(canonicalName4).length());
                    sb3.append("Cannot to override Transform ");
                    sb3.append(canonicalName3);
                    sb3.append(" with ");
                    sb3.append(canonicalName4);
                    throw new IllegalArgumentException(sb3.toString());
                }
            }
        }
        this.f8963c.addAll(emptyList2);
    }

    private final n2 e(Uri uri) throws IOException {
        zzkj zzo;
        q8 zzj = zzkj.zzj();
        q8 zzj2 = zzkj.zzj();
        String encodedFragment = uri.getEncodedFragment();
        if (!TextUtils.isEmpty(encodedFragment) && encodedFragment.startsWith("transform=")) {
            zzo = zzkj.zzm(f8.c("+").b().d(encodedFragment.substring(10)));
        } else {
            zzo = zzkj.zzo();
        }
        int size = zzo.size();
        for (int i9 = 0; i9 < size; i9++) {
            zzj2.d(l3.b((String) zzo.get(i9)));
        }
        zzkj f10 = zzj2.f();
        int size2 = f10.size();
        for (int i10 = 0; i10 < size2; i10++) {
            String str = (String) f10.get(i10);
            v3 v3Var = this.f8962b.get(str);
            if (v3Var != null) {
                zzj.d(v3Var);
            } else {
                String valueOf = String.valueOf(uri);
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 21 + valueOf.length());
                sb2.append("No such transform: ");
                sb2.append(str);
                sb2.append(": ");
                sb2.append(valueOf);
                throw new zzew(sb2.toString());
            }
        }
        zzkj zzh = zzj.f().zzh();
        m2 m2Var = new m2(null);
        m2Var.g(this);
        String scheme = uri.getScheme();
        q3 q3Var = this.f8961a.get(scheme);
        if (q3Var != null) {
            m2Var.c(q3Var);
            m2Var.e(this.f8963c);
            m2Var.h(zzh);
            m2Var.f(uri);
            if (!zzh.isEmpty()) {
                ArrayList arrayList = new ArrayList(uri.getPathSegments());
                if (!arrayList.isEmpty() && !uri.getPath().endsWith(FileUtils.RES_PREFIX_STORAGE)) {
                    String str2 = (String) arrayList.get(arrayList.size() - 1);
                    ListIterator<E> listIterator = zzh.listIterator(zzh.size());
                    while (listIterator.hasPrevious()) {
                        str2 = ((v3) listIterator.previous()).D();
                    }
                    arrayList.set(arrayList.size() - 1, str2);
                    uri = uri.buildUpon().path(TextUtils.join(FileUtils.RES_PREFIX_STORAGE, arrayList)).encodedFragment(null).build();
                }
            }
            m2Var.d(uri);
            return new n2(m2Var);
        }
        throw new zzew(String.format("Cannot open, unregistered backend: %s", scheme));
    }

    public final <T> T a(Uri uri, o2<T> o2Var) throws IOException {
        return o2Var.a(e(uri));
    }

    public final void b(Uri uri) throws IOException {
        n2 e10 = e(uri);
        e10.b().f(e10.a());
    }

    public final void c(Uri uri, Uri uri2) throws IOException {
        n2 e10 = e(uri);
        n2 e11 = e(uri2);
        if (e10.b() == e11.b()) {
            e10.b().g(e10.a(), e11.a());
            return;
        }
        throw new zzew("Cannot rename file across backends");
    }

    public final boolean d(Uri uri) throws IOException {
        n2 e10 = e(uri);
        return e10.b().d(e10.a());
    }
}
