package ie;

import com.google.gson.Gson;
import com.snapchat.kit.sdk.core.networking.FirebaseExtensionClient;
/* loaded from: classes4.dex */
public final class k implements eg.c<j> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<FirebaseExtensionClient> f41056a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<Gson> f41057b;

    private k(fi.a<FirebaseExtensionClient> aVar, fi.a<Gson> aVar2) {
        this.f41056a = aVar;
        this.f41057b = aVar2;
    }

    public static eg.c<j> a(fi.a<FirebaseExtensionClient> aVar, fi.a<Gson> aVar2) {
        return new k(aVar, aVar2);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new j(this.f41056a.get(), this.f41057b.get());
    }
}
