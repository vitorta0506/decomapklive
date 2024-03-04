package io.grpc;

import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class g0 {

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicLong f42326d = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    private final String f42327a;

    /* renamed from: b  reason: collision with root package name */
    private final String f42328b;

    /* renamed from: c  reason: collision with root package name */
    private final long f42329c;

    g0(String str, String str2, long j10) {
        com.google.common.base.o.t(str, "typeName");
        com.google.common.base.o.e(!str.isEmpty(), "empty type");
        this.f42327a = str;
        this.f42328b = str2;
        this.f42329c = j10;
    }

    public static g0 a(Class<?> cls, String str) {
        return b(c(cls), str);
    }

    public static g0 b(String str, String str2) {
        return new g0(str, str2, e());
    }

    private static String c(Class<?> cls) {
        String simpleName = ((Class) com.google.common.base.o.t(cls, "type")).getSimpleName();
        return !simpleName.isEmpty() ? simpleName : cls.getName().substring(cls.getPackage().getName().length() + 1);
    }

    static long e() {
        return f42326d.incrementAndGet();
    }

    public long d() {
        return this.f42329c;
    }

    public String f() {
        return this.f42327a + "<" + this.f42329c + ">";
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        if (this.f42328b != null) {
            sb2.append(": (");
            sb2.append(this.f42328b);
            sb2.append(')');
        }
        return sb2.toString();
    }
}
