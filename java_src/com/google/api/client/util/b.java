package com.google.api.client.util;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, a> f11101a = com.google.api.client.util.a.b();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Field, a> f11102b = com.google.api.client.util.a.b();

    /* renamed from: c  reason: collision with root package name */
    private final Object f11103c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final Class<?> f11104a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayList<Object> f11105b = new ArrayList<>();

        a(Class<?> cls) {
            this.f11104a = cls;
        }

        void a(Class<?> cls, Object obj) {
            z.a(cls == this.f11104a);
            this.f11105b.add(obj);
        }

        Object b() {
            return g0.o(this.f11105b, this.f11104a);
        }
    }

    public b(Object obj) {
        this.f11103c = obj;
    }

    public void a(Field field, Class<?> cls, Object obj) {
        a aVar = this.f11102b.get(field);
        if (aVar == null) {
            aVar = new a(cls);
            this.f11102b.put(field, aVar);
        }
        aVar.a(cls, obj);
    }

    public void b() {
        for (Map.Entry<String, a> entry : this.f11101a.entrySet()) {
            ((Map) this.f11103c).put(entry.getKey(), entry.getValue().b());
        }
        for (Map.Entry<Field, a> entry2 : this.f11102b.entrySet()) {
            m.l(entry2.getKey(), this.f11103c, entry2.getValue().b());
        }
    }
}
