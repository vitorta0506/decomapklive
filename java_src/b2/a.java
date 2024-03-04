package b2;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private int f1108a;

    public final void e(int i9) {
        this.f1108a = i9 | this.f1108a;
    }

    public void f() {
        this.f1108a = 0;
    }

    public final void g(int i9) {
        this.f1108a = (~i9) & this.f1108a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean h(int i9) {
        return (this.f1108a & i9) == i9;
    }

    public final boolean i() {
        return h(268435456);
    }

    public final boolean j() {
        return h(Integer.MIN_VALUE);
    }

    public final boolean k() {
        return h(4);
    }

    public final boolean l() {
        return h(134217728);
    }

    public final boolean m() {
        return h(1);
    }

    public final void o(int i9) {
        this.f1108a = i9;
    }
}
