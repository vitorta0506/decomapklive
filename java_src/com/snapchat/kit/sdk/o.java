package com.snapchat.kit.sdk;

import android.text.TextUtils;
import com.snapchat.kit.sdk.core.networking.FirebaseExtensionClient;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public final class o implements eg.c<FirebaseExtensionClient> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29584a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<ie.a> f29585b;

    private o(k kVar, fi.a<ie.a> aVar) {
        this.f29584a = kVar;
        this.f29585b = aVar;
    }

    public static eg.c<FirebaseExtensionClient> a(k kVar, fi.a<ie.a> aVar) {
        return new o(kVar, aVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        k kVar = this.f29584a;
        ie.a aVar = this.f29585b.get();
        if (!TextUtils.isEmpty(kVar.f29580h)) {
            return (FirebaseExtensionClient) eg.d.b(kVar.f29580h.endsWith(FileUtils.RES_PREFIX_STORAGE) ? (FirebaseExtensionClient) aVar.e(kVar.f29580h, FirebaseExtensionClient.class) : (FirebaseExtensionClient) aVar.e(kVar.f29580h.concat(FileUtils.RES_PREFIX_STORAGE), FirebaseExtensionClient.class), "Cannot return null from a non-@Nullable @Provides method");
        }
        throw new IllegalStateException("Firebase Extension custom token url must be set!");
    }
}
