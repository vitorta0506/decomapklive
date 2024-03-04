package com.meizu.cloud.pushsdk.b.b;

import java.util.HashMap;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, Class<?>> f28206a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private Class<?> f28207b;

    /* renamed from: c  reason: collision with root package name */
    private String f28208c;

    /* renamed from: d  reason: collision with root package name */
    private Object f28209d;

    private a(Object obj) {
        this.f28209d = obj;
    }

    private a(String str) {
        this.f28208c = str;
    }

    public static a a(Object obj) {
        return new a(obj);
    }

    public static a a(String str) {
        return new a(str);
    }

    public b a(Class<?>... clsArr) {
        return new b(this, clsArr);
    }

    public c a(String str, Class<?>... clsArr) {
        return new c(this, str, clsArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Class<?> a() throws ClassNotFoundException {
        Class<?> cls = this.f28207b;
        if (cls != null) {
            return cls;
        }
        Object obj = this.f28209d;
        if (obj != null) {
            return obj.getClass();
        }
        HashMap<String, Class<?>> hashMap = f28206a;
        Class<?> cls2 = hashMap.get(this.f28208c);
        if (cls2 == null) {
            cls2 = Class.forName(this.f28208c);
            hashMap.put(this.f28208c, cls2);
        }
        return cls2;
    }
}
