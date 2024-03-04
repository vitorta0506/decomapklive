package cn.jiguang.az;
/* loaded from: classes.dex */
public class f extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final int f2307a;

    public f(int i9, String str) {
        super(str);
        this.f2307a = i9;
    }

    public int a() {
        return this.f2307a;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "JException(" + this.f2307a + "):" + getLocalizedMessage();
    }
}
