package eh;

import com.google.common.collect.ImmutableList;
import eh.w;
/* loaded from: classes5.dex */
abstract class g2 {

    /* loaded from: classes5.dex */
    static abstract class a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(h2 h2Var) {
            f().a(h2Var);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a b(i2 i2Var) {
            j().a(i2Var);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract g2 c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a d(String str);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a e(String str);

        abstract ImmutableList.b<h2> f();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long g();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a h(long j10);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a i(long j10);

        abstract ImmutableList.b<i2> j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a e() {
        return new w.b().i(0L).h(0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ImmutableList<h2> c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long f();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ImmutableList<i2> g();
}
