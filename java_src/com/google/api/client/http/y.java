package com.google.api.client.http;

import com.google.api.client.util.GenericData;
import com.google.api.client.util.f0;
import com.google.api.client.util.g0;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class y implements com.google.api.client.util.w {

    /* renamed from: a  reason: collision with root package name */
    public static final String f11080a = new l("application/x-www-form-urlencoded").k(StandardCharsets.UTF_8).a();

    public static void b(Reader reader, Object obj, boolean z10) throws IOException {
        int read;
        String stringWriter;
        Class<?> cls = obj.getClass();
        com.google.api.client.util.h e10 = com.google.api.client.util.h.e(cls);
        List asList = Arrays.asList(cls);
        GenericData genericData = GenericData.class.isAssignableFrom(cls) ? (GenericData) obj : null;
        Map map = Map.class.isAssignableFrom(cls) ? (Map) obj : null;
        com.google.api.client.util.b bVar = new com.google.api.client.util.b(obj);
        StringWriter stringWriter2 = new StringWriter();
        StringWriter stringWriter3 = new StringWriter();
        do {
            boolean z11 = true;
            while (true) {
                read = reader.read();
                if (read == -1 || read == 38) {
                    break;
                } else if (read != 61) {
                    if (z11) {
                        stringWriter2.write(read);
                    } else {
                        stringWriter3.write(read);
                    }
                } else if (z11) {
                    z11 = false;
                } else {
                    stringWriter3.write(read);
                }
            }
            String a10 = z10 ? j5.a.a(stringWriter2.toString()) : stringWriter2.toString();
            if (a10.length() != 0) {
                if (z10) {
                    stringWriter = j5.a.a(stringWriter3.toString());
                } else {
                    stringWriter = stringWriter3.toString();
                }
                com.google.api.client.util.m b10 = e10.b(a10);
                if (b10 != null) {
                    Type k10 = com.google.api.client.util.j.k(asList, b10.d());
                    if (g0.j(k10)) {
                        Class<?> f10 = g0.f(asList, g0.b(k10));
                        bVar.a(b10.b(), f10, e(f10, asList, stringWriter));
                    } else if (g0.k(g0.f(asList, k10), Iterable.class)) {
                        Collection<Object> collection = (Collection) b10.g(obj);
                        if (collection == null) {
                            collection = com.google.api.client.util.j.g(k10);
                            b10.m(obj, collection);
                        }
                        collection.add(e(k10 == Object.class ? null : g0.d(k10), asList, stringWriter));
                    } else {
                        b10.m(obj, e(k10, asList, stringWriter));
                    }
                } else if (map != null) {
                    ArrayList arrayList = (ArrayList) map.get(a10);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        if (genericData != null) {
                            genericData.e(a10, arrayList);
                        } else {
                            map.put(a10, arrayList);
                        }
                    }
                    arrayList.add(stringWriter);
                }
            }
            stringWriter2 = new StringWriter();
            stringWriter3 = new StringWriter();
        } while (read != -1);
        bVar.b();
    }

    public static void c(String str, Object obj) {
        d(str, obj, true);
    }

    public static void d(String str, Object obj, boolean z10) {
        if (str == null) {
            return;
        }
        try {
            b(new StringReader(str), obj, z10);
        } catch (IOException e10) {
            throw f0.a(e10);
        }
    }

    private static Object e(Type type, List<Type> list, String str) {
        return com.google.api.client.util.j.j(com.google.api.client.util.j.k(list, type), str);
    }
}
