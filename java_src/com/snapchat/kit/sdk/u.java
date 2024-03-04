package com.snapchat.kit.sdk;

import java.util.Random;
/* loaded from: classes4.dex */
public final class u implements eg.c<Random> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29602a;

    private u(k kVar) {
        this.f29602a = kVar;
    }

    public static eg.c<Random> a(k kVar) {
        return new u(kVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (Random) eg.d.b(k.q(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
