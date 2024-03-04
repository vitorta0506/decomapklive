package ce;
/* loaded from: classes4.dex */
public interface b {

    /* loaded from: classes4.dex */
    public interface a {
        void a();
    }

    /* renamed from: ce.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0031b {
        void a();

        void b();

        void onLogout();
    }

    void addOnLoginStartListener(a aVar);

    void addOnLoginStateChangedListener(InterfaceC0031b interfaceC0031b);

    void removeOnLoginStartListener(a aVar);

    void removeOnLoginStateChangedListener(InterfaceC0031b interfaceC0031b);
}
