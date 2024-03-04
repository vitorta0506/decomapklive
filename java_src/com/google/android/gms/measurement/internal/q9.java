package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlinx.coroutines.DebugKt;
/* loaded from: classes2.dex */
public final class q9 {

    /* renamed from: a  reason: collision with root package name */
    private final n4 f9788a;

    public q9(n4 n4Var) {
        this.f9788a = n4Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(String str, Bundle bundle) {
        String uri;
        this.f9788a.a().h();
        if (this.f9788a.o()) {
            return;
        }
        if (bundle.isEmpty()) {
            uri = null;
        } else {
            if (true == str.isEmpty()) {
                str = DebugKt.DEBUG_PROPERTY_VALUE_AUTO;
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            uri = builder.build().toString();
        }
        if (TextUtils.isEmpty(uri)) {
            return;
        }
        this.f9788a.F().f9971u.b(uri);
        this.f9788a.F().f9972v.b(this.f9788a.c().a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void b() {
        this.f9788a.a().h();
        if (d()) {
            if (e()) {
                this.f9788a.F().f9971u.b(null);
                Bundle bundle = new Bundle();
                bundle.putString(ShareConstants.FEED_SOURCE_PARAM, "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK);
                bundle.putLong("_cc", 1L);
                this.f9788a.I().u(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_cmpx", bundle);
            } else {
                String a10 = this.f9788a.F().f9971u.a();
                if (TextUtils.isEmpty(a10)) {
                    this.f9788a.b().t().a("Cache still valid but referrer not found");
                } else {
                    long a11 = ((this.f9788a.F().f9972v.a() / 3600000) - 1) * 3600000;
                    Uri parse = Uri.parse(a10);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(parse.getPath(), bundle2);
                    for (String str : parse.getQueryParameterNames()) {
                        bundle2.putString(str, parse.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", a11);
                    Object obj = pair.first;
                    this.f9788a.I().u(obj == null ? PushConstants.EXTRA_APPLICATION_PENDING_INTENT : (String) obj, "_cmp", (Bundle) pair.second);
                }
                this.f9788a.F().f9971u.b(null);
            }
            this.f9788a.F().f9972v.b(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (d() && e()) {
            this.f9788a.F().f9971u.b(null);
        }
    }

    final boolean d() {
        return this.f9788a.F().f9972v.a() > 0;
    }

    final boolean e() {
        return d() && this.f9788a.c().a() - this.f9788a.F().f9972v.a() > this.f9788a.z().r(null, z2.S);
    }
}
