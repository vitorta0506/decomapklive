package org.threeten.bp;

import java.io.Serializable;
import jl.d;
/* loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0604a extends a implements Serializable {
        private static final long serialVersionUID = 6740630888130243051L;

        /* renamed from: a  reason: collision with root package name */
        private final ZoneId f56479a;

        C0604a(ZoneId zoneId) {
            this.f56479a = zoneId;
        }

        @Override // org.threeten.bp.a
        public ZoneId a() {
            return this.f56479a;
        }

        @Override // org.threeten.bp.a
        public Instant b() {
            return Instant.ofEpochMilli(f());
        }

        public boolean equals(Object obj) {
            if (obj instanceof C0604a) {
                return this.f56479a.equals(((C0604a) obj).f56479a);
            }
            return false;
        }

        public long f() {
            return System.currentTimeMillis();
        }

        public int hashCode() {
            return this.f56479a.hashCode() + 1;
        }

        public String toString() {
            return "SystemClock[" + this.f56479a + "]";
        }
    }

    protected a() {
    }

    public static a c(ZoneId zoneId) {
        d.i(zoneId, "zone");
        return new C0604a(zoneId);
    }

    public static a d() {
        return new C0604a(ZoneId.systemDefault());
    }

    public static a e() {
        return new C0604a(ZoneOffset.UTC);
    }

    public abstract ZoneId a();

    public abstract Instant b();
}
