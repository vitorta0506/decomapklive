package lb;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private int f54255a;

    /* renamed from: b  reason: collision with root package name */
    private int f54256b;

    public a() {
        this(0, 0);
    }

    public boolean a(int i9) {
        return i9 >= c() && i9 <= d();
    }

    public int b() {
        return this.f54256b;
    }

    public int c() {
        return this.f54255a;
    }

    public int d() {
        return (c() + b()) - 1;
    }

    public a(int i9, int i10) {
        this.f54255a = i9;
        this.f54256b = i10;
    }
}
