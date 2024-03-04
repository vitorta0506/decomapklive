package y7;

import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private int f60132a = -1;

    /* renamed from: b  reason: collision with root package name */
    private String f60133b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f60134c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f60135d;

    public e(String str) {
        this.f60133b = str;
    }

    public static void e(String str) {
        f(str, -1);
    }

    public static void f(String str, int i9) {
        e eVar = new e(str);
        eVar.g(true);
        eVar.i(i9);
        EventBus.getDefault().post(eVar);
    }

    public String a() {
        return this.f60133b;
    }

    public int b() {
        return this.f60132a;
    }

    public boolean c() {
        return this.f60135d;
    }

    public boolean d() {
        return this.f60134c;
    }

    public void g(boolean z10) {
        this.f60135d = z10;
    }

    public void h(boolean z10) {
        this.f60134c = z10;
    }

    public void i(int i9) {
        this.f60132a = i9;
    }
}
