package com.google.api.client.http;

import com.google.api.client.util.GenericData;
import com.google.api.client.util.e0;
import com.google.api.client.util.g0;
import com.google.api.client.util.z;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.light.utils.IOUtils;
/* loaded from: classes2.dex */
public class j extends GenericData {
    @com.google.api.client.util.p("Accept-Encoding")

    /* renamed from: c  reason: collision with root package name */
    private List<String> f11002c;
    @com.google.api.client.util.p("Authorization")

    /* renamed from: d  reason: collision with root package name */
    private List<String> f11003d;
    @com.google.api.client.util.p("Content-Type")

    /* renamed from: e  reason: collision with root package name */
    private List<String> f11004e;
    @com.google.api.client.util.p("If-Modified-Since")

    /* renamed from: f  reason: collision with root package name */
    private List<String> f11005f;
    @com.google.api.client.util.p("If-Match")

    /* renamed from: g  reason: collision with root package name */
    private List<String> f11006g;
    @com.google.api.client.util.p("If-None-Match")

    /* renamed from: h  reason: collision with root package name */
    private List<String> f11007h;
    @com.google.api.client.util.p("If-Unmodified-Since")

    /* renamed from: i  reason: collision with root package name */
    private List<String> f11008i;
    @com.google.api.client.util.p("If-Range")

    /* renamed from: j  reason: collision with root package name */
    private List<String> f11009j;
    @com.google.api.client.util.p("Location")

    /* renamed from: k  reason: collision with root package name */
    private List<String> f11010k;
    @com.google.api.client.util.p("User-Agent")

    /* renamed from: l  reason: collision with root package name */
    private List<String> f11011l;
    @com.google.api.client.util.p("WWW-Authenticate")

    /* renamed from: m  reason: collision with root package name */
    private List<String> f11012m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final com.google.api.client.util.b f11013a;

        /* renamed from: b  reason: collision with root package name */
        final StringBuilder f11014b;

        /* renamed from: c  reason: collision with root package name */
        final com.google.api.client.util.h f11015c;

        /* renamed from: d  reason: collision with root package name */
        final List<Type> f11016d;

        public a(j jVar, StringBuilder sb2) {
            Class<?> cls = jVar.getClass();
            this.f11016d = Arrays.asList(cls);
            this.f11015c = com.google.api.client.util.h.f(cls, true);
            this.f11014b = sb2;
            this.f11013a = new com.google.api.client.util.b(jVar);
        }

        void a() {
            this.f11013a.b();
        }
    }

    public j() {
        super(EnumSet.of(GenericData.Flags.IGNORE_CASE));
        this.f11002c = new ArrayList(Collections.singleton("gzip"));
    }

    private static String A(Object obj) {
        if (obj instanceof Enum) {
            return com.google.api.client.util.m.j((Enum) obj).e();
        }
        return obj.toString();
    }

    private static void f(Logger logger, StringBuilder sb2, StringBuilder sb3, u uVar, String str, Object obj, Writer writer) throws IOException {
        if (obj == null || com.google.api.client.util.j.d(obj)) {
            return;
        }
        String A = A(obj);
        String str2 = (("Authorization".equalsIgnoreCase(str) || "Cookie".equalsIgnoreCase(str)) && (logger == null || !logger.isLoggable(Level.ALL))) ? "<Not Logged>" : A;
        if (sb2 != null) {
            sb2.append(str);
            sb2.append(": ");
            sb2.append(str2);
            sb2.append(e0.f11107a);
        }
        if (sb3 != null) {
            sb3.append(" -H '");
            sb3.append(str);
            sb3.append(": ");
            sb3.append(str2);
            sb3.append("'");
        }
        if (uVar != null) {
            uVar.a(str, A);
        }
        if (writer != null) {
            writer.write(str);
            writer.write(": ");
            writer.write(A);
            writer.write(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
    }

    private <T> List<T> i(T t10) {
        if (t10 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(t10);
        return arrayList;
    }

    private <T> T k(List<T> list) {
        if (list == null) {
            return null;
        }
        return list.get(0);
    }

    private static Object o(Type type, List<Type> list, String str) {
        return com.google.api.client.util.j.j(com.google.api.client.util.j.k(list, type), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void p(j jVar, StringBuilder sb2, StringBuilder sb3, Logger logger, u uVar) throws IOException {
        q(jVar, sb2, sb3, logger, uVar, null);
    }

    static void q(j jVar, StringBuilder sb2, StringBuilder sb3, Logger logger, u uVar, Writer writer) throws IOException {
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, Object> entry : jVar.entrySet()) {
            String key = entry.getKey();
            z.c(hashSet.add(key), "multiple headers of the same name (headers are case insensitive): %s", key);
            Object value = entry.getValue();
            if (value != null) {
                com.google.api.client.util.m b10 = jVar.b().b(key);
                if (b10 != null) {
                    key = b10.e();
                }
                String str = key;
                Class<?> cls = value.getClass();
                if (!(value instanceof Iterable) && !cls.isArray()) {
                    f(logger, sb2, sb3, uVar, str, value, writer);
                } else {
                    for (Object obj : g0.l(value)) {
                        f(logger, sb2, sb3, uVar, str, obj, writer);
                    }
                }
            }
        }
        if (writer != null) {
            writer.flush();
        }
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    /* renamed from: g */
    public j clone() {
        return (j) super.clone();
    }

    public final String getContentType() {
        return (String) k(this.f11004e);
    }

    public final void h(v vVar, StringBuilder sb2) throws IOException {
        clear();
        a aVar = new a(this, sb2);
        int f10 = vVar.f();
        for (int i9 = 0; i9 < f10; i9++) {
            n(vVar.g(i9), vVar.h(i9), aVar);
        }
        aVar.a();
    }

    public final List<String> j() {
        return this.f11012m;
    }

    public final String l() {
        return (String) k(this.f11010k);
    }

    public final String m() {
        return (String) k(this.f11011l);
    }

    void n(String str, String str2, a aVar) {
        List<Type> list = aVar.f11016d;
        com.google.api.client.util.h hVar = aVar.f11015c;
        com.google.api.client.util.b bVar = aVar.f11013a;
        StringBuilder sb2 = aVar.f11014b;
        if (sb2 != null) {
            sb2.append(str + ": " + str2);
            sb2.append(e0.f11107a);
        }
        com.google.api.client.util.m b10 = hVar.b(str);
        if (b10 != null) {
            Type k10 = com.google.api.client.util.j.k(list, b10.d());
            if (g0.j(k10)) {
                Class<?> f10 = g0.f(list, g0.b(k10));
                bVar.a(b10.b(), f10, o(f10, list, str2));
                return;
            } else if (g0.k(g0.f(list, k10), Iterable.class)) {
                Collection<Object> collection = (Collection) b10.g(this);
                if (collection == null) {
                    collection = com.google.api.client.util.j.g(k10);
                    b10.m(this, collection);
                }
                collection.add(o(k10 == Object.class ? null : g0.d(k10), list, str2));
                return;
            } else {
                b10.m(this, o(k10, list, str2));
                return;
            }
        }
        ArrayList arrayList = (ArrayList) get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            e(str, arrayList);
        }
        arrayList.add(str2);
    }

    @Override // com.google.api.client.util.GenericData
    /* renamed from: r */
    public j e(String str, Object obj) {
        return (j) super.e(str, obj);
    }

    public j s(String str) {
        return t(i(str));
    }

    public j t(List<String> list) {
        this.f11003d = list;
        return this;
    }

    public j u(String str) {
        this.f11006g = i(str);
        return this;
    }

    public j v(String str) {
        this.f11005f = i(str);
        return this;
    }

    public j w(String str) {
        this.f11007h = i(str);
        return this;
    }

    public j x(String str) {
        this.f11009j = i(str);
        return this;
    }

    public j y(String str) {
        this.f11008i = i(str);
        return this;
    }

    public j z(String str) {
        this.f11011l = i(str);
        return this;
    }
}
