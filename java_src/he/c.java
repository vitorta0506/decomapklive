package he;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.snapchat.kit.sdk.core.config.f;
import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
import com.snapchat.kit.sdk.core.metrics.model.LoginRoute;
import com.snapchat.kit.sdk.core.metrics.model.SkateEvent;
import com.snapchat.kit.sdk.core.metrics.model.SnapKitInitType;
import java.util.Date;
import java.util.TimeZone;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final f f40635a;

    /* renamed from: b  reason: collision with root package name */
    private final d f40636b;

    /* renamed from: c  reason: collision with root package name */
    private final de.b<SkateEvent> f40637c;

    /* renamed from: d  reason: collision with root package name */
    private final pe.c f40638d;

    /* renamed from: e  reason: collision with root package name */
    private final com.snapchat.kit.sdk.f f40639e;

    /* renamed from: f  reason: collision with root package name */
    private final SnapKitInitType f40640f;

    /* renamed from: g  reason: collision with root package name */
    private final KitPluginType f40641g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f40642h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public final class a implements com.snapchat.kit.sdk.core.config.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.snapchat.kit.sdk.core.models.b f40643a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.snapchat.kit.sdk.core.models.b f40644b;

        a(com.snapchat.kit.sdk.core.models.b bVar, com.snapchat.kit.sdk.core.models.b bVar2) {
            this.f40643a = bVar;
            this.f40644b = bVar2;
        }

        @Override // com.snapchat.kit.sdk.core.config.b
        public final void a() {
        }

        @Override // com.snapchat.kit.sdk.core.config.b
        public final void b(double d10) {
            if (d10 > c.this.f40636b.e()) {
                c.this.f40637c.push(c.this.a(this.f40643a, this.f40644b, d10));
            }
        }
    }

    public c(f fVar, d dVar, de.b<SkateEvent> bVar, com.snapchat.kit.sdk.f fVar2, SnapKitInitType snapKitInitType, KitPluginType kitPluginType, boolean z10) {
        this(fVar, dVar, bVar, fVar2, new pe.c(TimeZone.getTimeZone("GMT-8")), snapKitInitType, kitPluginType, z10);
    }

    @VisibleForTesting(otherwise = 2)
    final SkateEvent a(@Nullable com.snapchat.kit.sdk.core.models.b bVar, com.snapchat.kit.sdk.core.models.b bVar2, double d10) {
        com.snapchat.kit.sdk.core.models.c cVar = bVar2.f29502a;
        SkateEvent.Builder core_version = new SkateEvent.Builder().daily_session_bucket(bVar2.b()).day(Long.valueOf(cVar.f29504a)).month(Long.valueOf(cVar.f29505b)).year(Long.valueOf(cVar.f29506c)).is_first_within_month(Boolean.valueOf(bVar == null || !bVar.f29502a.b(cVar))).sample_rate(Double.valueOf(d10)).snap_kit_init_type(this.f40640f).kit_plugin_type(this.f40641g).is_from_react_native_plugin(Boolean.valueOf(this.f40642h)).core_version("1.13.2");
        String c10 = this.f40636b.c();
        if (!TextUtils.isEmpty(c10)) {
            core_version.kit_variants_string_list(c10);
        }
        String d11 = this.f40636b.d();
        if (!TextUtils.isEmpty(d11)) {
            core_version.kit_version_string_list(d11);
        }
        if (this.f40639e.x()) {
            core_version.login_route(LoginRoute.LOGIN_ROUTE);
        }
        return core_version.build();
    }

    public final void c(Date date) {
        com.snapchat.kit.sdk.core.models.b bVar;
        com.snapchat.kit.sdk.core.models.b a10 = this.f40636b.a();
        com.snapchat.kit.sdk.core.models.c cVar = new com.snapchat.kit.sdk.core.models.c(this.f40638d.a(date), this.f40638d.b(date), this.f40638d.c(date));
        if (a10 != null && cVar.a(a10.f29502a)) {
            a10.c();
            bVar = a10;
        } else {
            bVar = new com.snapchat.kit.sdk.core.models.b(cVar, 1);
        }
        this.f40636b.b(bVar);
        this.f40635a.d(new a(a10, bVar));
    }

    @VisibleForTesting
    private c(f fVar, d dVar, de.b<SkateEvent> bVar, com.snapchat.kit.sdk.f fVar2, pe.c cVar, SnapKitInitType snapKitInitType, KitPluginType kitPluginType, boolean z10) {
        this.f40635a = fVar;
        this.f40636b = dVar;
        this.f40637c = bVar;
        this.f40639e = fVar2;
        this.f40638d = cVar;
        this.f40640f = snapKitInitType;
        this.f40641g = kitPluginType;
        this.f40642h = z10;
    }
}
