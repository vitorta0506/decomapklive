package vb;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import rb.a;
/* loaded from: classes4.dex */
public class a extends rb.a {

    /* renamed from: b  reason: collision with root package name */
    private static final List<a.InterfaceC0632a> f59076b = new CopyOnWriteArrayList();

    public static void a() {
        for (a.InterfaceC0632a interfaceC0632a : f59076b) {
            interfaceC0632a.onFinish();
        }
    }
}
