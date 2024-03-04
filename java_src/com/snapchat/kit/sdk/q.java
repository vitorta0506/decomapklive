package com.snapchat.kit.sdk;

import com.google.gson.Gson;
/* loaded from: classes4.dex */
public final class q implements eg.c<Gson> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29589a;

    private q(k kVar) {
        this.f29589a = kVar;
    }

    public static eg.c<Gson> a(k kVar) {
        return new q(kVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (Gson) eg.d.b(k.m(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
