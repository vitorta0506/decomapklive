package io.grpc;

import io.grpc.l;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes5.dex */
public final class v {

    /* renamed from: c  reason: collision with root package name */
    static final com.google.common.base.i f45456c = com.google.common.base.i.g(',');

    /* renamed from: d  reason: collision with root package name */
    private static final v f45457d = a().f(new l.a(), true).f(l.b.f43352a, false);

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, a> f45458a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f45459b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final u f45460a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f45461b;

        a(u uVar, boolean z10) {
            this.f45460a = (u) com.google.common.base.o.t(uVar, "decompressor");
            this.f45461b = z10;
        }
    }

    private v(u uVar, boolean z10, v vVar) {
        String a10 = uVar.a();
        com.google.common.base.o.e(!a10.contains(","), "Comma is currently not allowed in message encoding");
        int size = vVar.f45458a.size();
        LinkedHashMap linkedHashMap = new LinkedHashMap(vVar.f45458a.containsKey(uVar.a()) ? size : size + 1);
        for (a aVar : vVar.f45458a.values()) {
            String a11 = aVar.f45460a.a();
            if (!a11.equals(a10)) {
                linkedHashMap.put(a11, new a(aVar.f45460a, aVar.f45461b));
            }
        }
        linkedHashMap.put(a10, new a(uVar, z10));
        this.f45458a = Collections.unmodifiableMap(linkedHashMap);
        this.f45459b = f45456c.d(b()).getBytes(Charset.forName("US-ASCII"));
    }

    public static v a() {
        return new v();
    }

    public static v c() {
        return f45457d;
    }

    public Set<String> b() {
        HashSet hashSet = new HashSet(this.f45458a.size());
        for (Map.Entry<String, a> entry : this.f45458a.entrySet()) {
            if (entry.getValue().f45461b) {
                hashSet.add(entry.getKey());
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] d() {
        return this.f45459b;
    }

    public u e(String str) {
        a aVar = this.f45458a.get(str);
        if (aVar != null) {
            return aVar.f45460a;
        }
        return null;
    }

    public v f(u uVar, boolean z10) {
        return new v(uVar, z10, this);
    }

    private v() {
        this.f45458a = new LinkedHashMap(0);
        this.f45459b = new byte[0];
    }
}
