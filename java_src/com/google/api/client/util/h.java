package com.google.api.client.util;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: e  reason: collision with root package name */
    private static final ConcurrentMap<Class<?>, h> f11113e = new ConcurrentHashMap();

    /* renamed from: f  reason: collision with root package name */
    private static final ConcurrentMap<Class<?>, h> f11114f = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f11115a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f11116b;

    /* renamed from: c  reason: collision with root package name */
    private final IdentityHashMap<String, m> f11117c = new IdentityHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    final List<String> f11118d;

    /* loaded from: classes2.dex */
    class a implements Comparator<String> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            if (x.a(str, str2)) {
                return 0;
            }
            if (str == null) {
                return -1;
            }
            if (str2 == null) {
                return 1;
            }
            return str.compareTo(str2);
        }
    }

    private h(Class<?> cls, boolean z10) {
        Field[] declaredFields;
        List<String> unmodifiableList;
        this.f11115a = cls;
        this.f11116b = z10;
        z.b((z10 && cls.isEnum()) ? false : true, "cannot ignore case on an enum: " + cls);
        TreeSet treeSet = new TreeSet(new a());
        for (Field field : cls.getDeclaredFields()) {
            m k10 = m.k(field);
            if (k10 != null) {
                String e10 = k10.e();
                e10 = z10 ? e10.toLowerCase(Locale.US).intern() : e10;
                m mVar = this.f11117c.get(e10);
                boolean z11 = mVar == null;
                Object[] objArr = new Object[4];
                objArr[0] = z10 ? "case-insensitive " : "";
                objArr[1] = e10;
                objArr[2] = field;
                objArr[3] = mVar == null ? null : mVar.b();
                z.c(z11, "two fields have the same %sname <%s>: %s and %s", objArr);
                this.f11117c.put(e10, k10);
                treeSet.add(e10);
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null) {
            h f10 = f(superclass, z10);
            treeSet.addAll(f10.f11118d);
            for (Map.Entry<String, m> entry : f10.f11117c.entrySet()) {
                String key = entry.getKey();
                if (!this.f11117c.containsKey(key)) {
                    this.f11117c.put(key, entry.getValue());
                }
            }
        }
        if (treeSet.isEmpty()) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(new ArrayList(treeSet));
        }
        this.f11118d = unmodifiableList;
    }

    public static h e(Class<?> cls) {
        return f(cls, false);
    }

    public static h f(Class<?> cls, boolean z10) {
        if (cls == null) {
            return null;
        }
        ConcurrentMap<Class<?>, h> concurrentMap = z10 ? f11114f : f11113e;
        h hVar = concurrentMap.get(cls);
        if (hVar == null) {
            h hVar2 = new h(cls, z10);
            h putIfAbsent = concurrentMap.putIfAbsent(cls, hVar2);
            return putIfAbsent == null ? hVar2 : putIfAbsent;
        }
        return hVar;
    }

    public Field a(String str) {
        m b10 = b(str);
        if (b10 == null) {
            return null;
        }
        return b10.b();
    }

    public m b(String str) {
        if (str != null) {
            if (this.f11116b) {
                str = str.toLowerCase(Locale.US);
            }
            str = str.intern();
        }
        return this.f11117c.get(str);
    }

    public Collection<m> c() {
        return Collections.unmodifiableCollection(this.f11117c.values());
    }

    public final boolean d() {
        return this.f11116b;
    }
}
