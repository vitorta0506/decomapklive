package oh;

import mh.j;
/* loaded from: classes7.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final b f55649a = new b();

    /* loaded from: classes7.dex */
    private static final class b extends a {
        @Override // oh.a
        public <C> void a(j jVar, C c10, c<C> cVar) {
            lh.b.b(jVar, "spanContext");
            lh.b.b(c10, "carrier");
            lh.b.b(cVar, "setter");
        }

        private b() {
        }
    }

    /* loaded from: classes7.dex */
    public static abstract class c<C> {
        public abstract void a(C c10, String str, String str2);
    }

    public abstract <C> void a(j jVar, C c10, c<C> cVar);
}
