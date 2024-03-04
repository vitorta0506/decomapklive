package ab;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static b f724b;

    /* renamed from: a  reason: collision with root package name */
    private List<a> f725a = new ArrayList();

    private b() {
    }

    public static b d() {
        if (f724b == null) {
            synchronized (b.class) {
                if (f724b == null) {
                    f724b = new b();
                }
            }
        }
        return f724b;
    }

    public void a(a aVar) {
        this.f725a.add(aVar);
    }

    public void b() {
        this.f725a.clear();
    }

    public a c(int i9) {
        return this.f725a.get(i9);
    }

    public int e() {
        return this.f725a.size();
    }
}
