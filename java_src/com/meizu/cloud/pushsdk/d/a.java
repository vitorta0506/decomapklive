package com.meizu.cloud.pushsdk.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.d.b.a;
import com.meizu.cloud.pushsdk.d.b.f;
import com.meizu.cloud.pushsdk.d.e.a;
import com.meizu.cloud.pushsdk.d.e.c;
import com.meizu.cloud.pushsdk.d.f.b;
import com.meizu.cloud.pushsdk.d.f.e;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static com.meizu.cloud.pushsdk.d.e.a f28510a;

    /* renamed from: b  reason: collision with root package name */
    private static BroadcastReceiver f28511b;

    public static com.meizu.cloud.pushsdk.d.e.a a(Context context, com.meizu.cloud.pushsdk.c.c.a aVar, f fVar) {
        if (f28510a == null) {
            synchronized (a.class) {
                if (f28510a == null) {
                    com.meizu.cloud.pushsdk.d.e.a a10 = a(b(context, aVar, fVar), (c) null, context);
                    f28510a = a10;
                    a(context, a10);
                }
            }
        }
        return f28510a;
    }

    public static com.meizu.cloud.pushsdk.d.e.a a(Context context, boolean z10) {
        if (f28510a == null) {
            synchronized (a.class) {
                if (f28510a == null) {
                    f28510a = a(b(context, null, null), (c) null, context);
                }
            }
        }
        DebugLogger.i("PushAndroidTracker", "can upload subject " + z10);
        if (z10) {
            f28510a.a(a(context));
        }
        return f28510a;
    }

    private static com.meizu.cloud.pushsdk.d.e.a a(com.meizu.cloud.pushsdk.d.b.a aVar, c cVar, Context context) {
        return new com.meizu.cloud.pushsdk.d.e.a.a(new a.C0284a(aVar, "PushAndroidTracker", context.getPackageCodePath(), context, com.meizu.cloud.pushsdk.d.e.a.a.class).a(b.VERBOSE).a(Boolean.FALSE).a(cVar).a(4));
    }

    private static c a(Context context) {
        return new c.a().a(context).a();
    }

    private static String a() {
        String str = MzSystemUtils.isOverseas() ? PushConstants.URL_ABROAD_STATICS_DOMAIN : PushConstants.URL_STATICS_DOMAIN;
        DebugLogger.e("QuickTracker", "current statics domain is " + str);
        return str;
    }

    private static void a(Context context, final com.meizu.cloud.pushsdk.d.e.a aVar) {
        if (f28511b != null) {
            return;
        }
        f28511b = new BroadcastReceiver() { // from class: com.meizu.cloud.pushsdk.d.a.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (e.a(context2)) {
                    com.meizu.cloud.pushsdk.d.f.c.a("QuickTracker", "restart track event: %s", "online true");
                    com.meizu.cloud.pushsdk.d.e.a.this.a();
                }
            }
        };
        context.registerReceiver(f28511b, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    private static com.meizu.cloud.pushsdk.d.b.a b(Context context, com.meizu.cloud.pushsdk.c.c.a aVar, f fVar) {
        a.C0281a a10 = new a.C0281a(a(), context, com.meizu.cloud.pushsdk.d.b.a.a.class).a(fVar).a(aVar).a(1);
        com.meizu.cloud.pushsdk.d.b.b bVar = com.meizu.cloud.pushsdk.d.b.b.DefaultGroup;
        return new com.meizu.cloud.pushsdk.d.b.a.a(a10.a(bVar).b(bVar.a()).c(2));
    }
}
