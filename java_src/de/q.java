package de;

import android.content.SharedPreferences;
import com.snapchat.kit.sdk.core.metrics.MetricsClient;
/* loaded from: classes4.dex */
public final class q implements eg.c<p> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<SharedPreferences> f38090a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<MetricsClient> f38091b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<fe.a> f38092c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<String> f38093d;

    private q(fi.a<SharedPreferences> aVar, fi.a<MetricsClient> aVar2, fi.a<fe.a> aVar3, fi.a<String> aVar4) {
        this.f38090a = aVar;
        this.f38091b = aVar2;
        this.f38092c = aVar3;
        this.f38093d = aVar4;
    }

    public static eg.c<p> a(fi.a<SharedPreferences> aVar, fi.a<MetricsClient> aVar2, fi.a<fe.a> aVar3, fi.a<String> aVar4) {
        return new q(aVar, aVar2, aVar3, aVar4);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new p(this.f38090a.get(), this.f38091b.get(), this.f38092c.get(), this.f38093d.get());
    }
}
