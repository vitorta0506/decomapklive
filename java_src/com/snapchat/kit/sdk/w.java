package com.snapchat.kit.sdk;

import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.snapchat.kit.sdk.core.security.SecureSharedPreferences;
/* loaded from: classes4.dex */
public final class w implements eg.c<SecureSharedPreferences> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29604a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<Gson> f29605b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<SharedPreferences> f29606c;

    private w(k kVar, fi.a<Gson> aVar, fi.a<SharedPreferences> aVar2) {
        this.f29604a = kVar;
        this.f29605b = aVar;
        this.f29606c = aVar2;
    }

    public static eg.c<SecureSharedPreferences> a(k kVar, fi.a<Gson> aVar, fi.a<SharedPreferences> aVar2) {
        return new w(kVar, aVar, aVar2);
    }

    @Override // fi.a
    @Nullable
    public final /* synthetic */ Object get() {
        return this.f29604a.e(this.f29605b.get(), this.f29606c.get());
    }
}
