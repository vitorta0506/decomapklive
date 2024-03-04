package ce;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import ce.a;
import ce.b;
import com.snapchat.kit.sdk.core.controller.OAuthFailureReason;
import java.util.ArrayList;
import java.util.Collection;
import java.util.WeakHashMap;
/* loaded from: classes4.dex */
public final class c implements ce.a, ce.b {

    /* renamed from: a  reason: collision with root package name */
    private final WeakHashMap<b.a, Void> f1711a = new WeakHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final WeakHashMap<b.InterfaceC0031b, Void> f1712b = new WeakHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final WeakHashMap<a.InterfaceC0030a, Void> f1713c = new WeakHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final Handler f1714d;

    /* loaded from: classes4.dex */
    final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (b.a aVar : c.this.a()) {
                aVar.a();
            }
        }
    }

    /* loaded from: classes4.dex */
    final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (b.InterfaceC0031b interfaceC0031b : c.this.d()) {
                interfaceC0031b.b();
            }
        }
    }

    /* renamed from: ce.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    final class RunnableC0032c implements Runnable {
        RunnableC0032c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (b.InterfaceC0031b interfaceC0031b : c.this.d()) {
                interfaceC0031b.a();
            }
        }
    }

    /* loaded from: classes4.dex */
    final class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (b.InterfaceC0031b interfaceC0031b : c.this.d()) {
                interfaceC0031b.onLogout();
            }
        }
    }

    /* loaded from: classes4.dex */
    final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f1719a;

        e(String str) {
            this.f1719a = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (a.InterfaceC0030a interfaceC0030a : c.this.e()) {
                interfaceC0030a.b(this.f1719a);
            }
        }
    }

    /* loaded from: classes4.dex */
    final class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ OAuthFailureReason f1721a;

        f(OAuthFailureReason oAuthFailureReason) {
            this.f1721a = oAuthFailureReason;
        }

        @Override // java.lang.Runnable
        public final void run() {
            for (a.InterfaceC0030a interfaceC0030a : c.this.e()) {
                interfaceC0030a.a(this.f1721a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Handler handler) {
        this.f1714d = handler;
    }

    @NonNull
    @VisibleForTesting(otherwise = 2)
    final Collection<b.a> a() {
        return new ArrayList(this.f1711a.keySet());
    }

    @Override // ce.a
    public final void addOnFirebaseCustomTokenResultListener(a.InterfaceC0030a interfaceC0030a) {
        this.f1713c.put(interfaceC0030a, null);
    }

    @Override // ce.b
    public final void addOnLoginStartListener(b.a aVar) {
        this.f1711a.put(aVar, null);
    }

    @Override // ce.b
    public final void addOnLoginStateChangedListener(b.InterfaceC0031b interfaceC0031b) {
        this.f1712b.put(interfaceC0031b, null);
    }

    public final void b(@NonNull OAuthFailureReason oAuthFailureReason) {
        this.f1714d.post(new f(oAuthFailureReason));
    }

    public final void c(@NonNull String str) {
        this.f1714d.post(new e(str));
    }

    @NonNull
    @VisibleForTesting(otherwise = 2)
    final Collection<b.InterfaceC0031b> d() {
        return new ArrayList(this.f1712b.keySet());
    }

    @NonNull
    @VisibleForTesting(otherwise = 2)
    final Collection<a.InterfaceC0030a> e() {
        return new ArrayList(this.f1713c.keySet());
    }

    public final void f() {
        this.f1714d.post(new a());
    }

    public final void g() {
        this.f1714d.post(new b());
    }

    public final void h() {
        this.f1714d.post(new RunnableC0032c());
    }

    public final void i() {
        this.f1714d.post(new d());
    }

    @Override // ce.a
    public final void removeOnFirebaseCustomTokenResultListener(a.InterfaceC0030a interfaceC0030a) {
        this.f1713c.remove(interfaceC0030a);
    }

    @Override // ce.b
    public final void removeOnLoginStartListener(b.a aVar) {
        this.f1711a.remove(aVar);
    }

    @Override // ce.b
    public final void removeOnLoginStateChangedListener(b.InterfaceC0031b interfaceC0031b) {
        this.f1712b.remove(interfaceC0031b);
    }
}
