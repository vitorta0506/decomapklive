package n1;

import n1.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class n {

    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract n a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a b(l1.b bVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a c(l1.c<?> cVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a d(l1.d<?, byte[]> dVar);

        public abstract a e(o oVar);

        public abstract a f(String str);
    }

    public static a a() {
        return new c.b();
    }

    public abstract l1.b b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract l1.c<?> c();

    public byte[] d() {
        return e().apply(c().b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract l1.d<?, byte[]> e();

    public abstract o f();

    public abstract String g();
}
