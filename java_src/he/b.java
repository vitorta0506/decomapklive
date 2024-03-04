package he;

import android.content.SharedPreferences;
import com.snapchat.kit.sdk.core.config.f;
import com.snapchat.kit.sdk.core.metrics.skate.SkateClient;
import ge.i;
/* loaded from: classes4.dex */
public final class b implements eg.c<a> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<f> f40630a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<SharedPreferences> f40631b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<i> f40632c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<SkateClient> f40633d;

    /* renamed from: e  reason: collision with root package name */
    private final fi.a<fe.a> f40634e;

    private b(fi.a<f> aVar, fi.a<SharedPreferences> aVar2, fi.a<i> aVar3, fi.a<SkateClient> aVar4, fi.a<fe.a> aVar5) {
        this.f40630a = aVar;
        this.f40631b = aVar2;
        this.f40632c = aVar3;
        this.f40633d = aVar4;
        this.f40634e = aVar5;
    }

    public static eg.c<a> a(fi.a<f> aVar, fi.a<SharedPreferences> aVar2, fi.a<i> aVar3, fi.a<SkateClient> aVar4, fi.a<fe.a> aVar5) {
        return new b(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new a(this.f40630a.get(), this.f40631b.get(), this.f40632c.get(), this.f40633d.get(), this.f40634e.get());
    }
}
