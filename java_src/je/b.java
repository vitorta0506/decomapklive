package je;

import android.content.Context;
import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
import eg.d;
import ke.c;
/* loaded from: classes4.dex */
public final class b implements je.a {

    /* renamed from: a  reason: collision with root package name */
    private be.b f53216a;

    /* renamed from: b  reason: collision with root package name */
    private fi.a<de.b<OpMetric>> f53217b;

    /* renamed from: c  reason: collision with root package name */
    private fi.a<c> f53218c;

    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private be.b f53219a;

        private a() {
        }

        /* synthetic */ a(byte b10) {
            this();
        }

        public final je.a b() {
            if (this.f53219a != null) {
                return new b(this, (byte) 0);
            }
            throw new IllegalStateException(be.b.class.getCanonicalName() + " must be set");
        }

        public final a c(be.b bVar) {
            this.f53219a = (be.b) d.a(bVar);
            return this;
        }
    }

    /* renamed from: je.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static class C0544b implements fi.a<de.b<OpMetric>> {

        /* renamed from: a  reason: collision with root package name */
        private final be.b f53220a;

        C0544b(be.b bVar) {
            this.f53220a = bVar;
        }

        @Override // fi.a
        public final /* synthetic */ de.b<OpMetric> get() {
            return (de.b) d.b(this.f53220a.j(), "Cannot return null from a non-@Nullable component method");
        }
    }

    /* synthetic */ b(a aVar, byte b10) {
        this(aVar);
    }

    public static a c() {
        return new a((byte) 0);
    }

    @Override // je.a
    public final ne.a a() {
        return ne.b.a(this.f53218c.get());
    }

    @Override // je.a
    public final le.a b() {
        return le.b.a((Context) d.b(this.f53216a.h(), "Cannot return null from a non-@Nullable component method"), (String) d.b(this.f53216a.g(), "Cannot return null from a non-@Nullable component method"), (String) d.b(this.f53216a.i(), "Cannot return null from a non-@Nullable component method"), this.f53218c.get(), (de.b) d.b(this.f53216a.f(), "Cannot return null from a non-@Nullable component method"), ke.b.a((ge.a) d.b(this.f53216a.a(), "Cannot return null from a non-@Nullable component method")), (KitPluginType) d.b(this.f53216a.b(), "Cannot return null from a non-@Nullable component method"), this.f53216a.l());
    }

    private b(a aVar) {
        this.f53216a = aVar.f53219a;
        C0544b c0544b = new C0544b(aVar.f53219a);
        this.f53217b = c0544b;
        this.f53218c = eg.b.b(ke.d.a(c0544b));
    }
}
