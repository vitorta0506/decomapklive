package mh;
/* loaded from: classes7.dex */
public abstract class a {

    /* renamed from: mh.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static abstract class AbstractC0576a extends a {
        static a c(Long l10) {
            return new mh.b((Long) lh.b.b(l10, "longValue"));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Long d();
    }

    /* loaded from: classes7.dex */
    static abstract class b extends a {
        static a c(String str) {
            return new c((String) lh.b.b(str, "stringValue"));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String d();
    }

    a() {
    }

    public static a a(long j10) {
        return AbstractC0576a.c(Long.valueOf(j10));
    }

    public static a b(String str) {
        return b.c(str);
    }
}
