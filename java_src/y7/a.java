package y7;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static a f60120b;

    /* renamed from: a  reason: collision with root package name */
    private List<InterfaceC0697a> f60121a = new ArrayList();

    /* renamed from: y7.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0697a {
        void z();
    }

    private a() {
    }

    public static a a() {
        if (f60120b == null) {
            synchronized (a.class) {
                if (f60120b == null) {
                    f60120b = new a();
                }
            }
        }
        return f60120b;
    }

    public void b() {
        for (InterfaceC0697a interfaceC0697a : this.f60121a) {
            if (interfaceC0697a != null) {
                interfaceC0697a.z();
            }
        }
    }

    public void c(InterfaceC0697a interfaceC0697a) {
        if (this.f60121a.contains(interfaceC0697a)) {
            return;
        }
        this.f60121a.add(interfaceC0697a);
    }

    public void d(InterfaceC0697a interfaceC0697a) {
        this.f60121a.remove(interfaceC0697a);
    }
}
