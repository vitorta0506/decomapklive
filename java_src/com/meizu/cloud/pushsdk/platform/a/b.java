package com.meizu.cloud.pushsdk.platform.a;

import android.content.Context;
import com.meizu.cloud.pushsdk.c.a.c;
import com.meizu.cloud.pushsdk.platform.b.d;
import com.meizu.cloud.pushsdk.platform.b.e;
import com.meizu.cloud.pushsdk.platform.b.f;
import com.meizu.cloud.pushsdk.platform.b.g;
import java.io.File;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static b f28773a;

    /* renamed from: b  reason: collision with root package name */
    private ScheduledExecutorService f28774b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f28775c;

    /* renamed from: d  reason: collision with root package name */
    private final a f28776d;

    /* renamed from: e  reason: collision with root package name */
    private final com.meizu.cloud.pushsdk.platform.b.b f28777e;

    /* renamed from: f  reason: collision with root package name */
    private final g f28778f;

    /* renamed from: g  reason: collision with root package name */
    private final f f28779g;

    /* renamed from: h  reason: collision with root package name */
    private final e f28780h;

    /* renamed from: i  reason: collision with root package name */
    private final d f28781i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f28782j;

    public b(Context context, boolean z10) {
        this(context, z10, true);
    }

    public b(Context context, boolean z10, boolean z11) {
        Context applicationContext = context.getApplicationContext();
        this.f28775c = applicationContext;
        a aVar = new a(applicationContext);
        this.f28776d = aVar;
        if (z10) {
            this.f28774b = (ScheduledExecutorService) com.meizu.cloud.pushsdk.d.b.a.b.a();
        }
        this.f28782j = z11;
        this.f28777e = new com.meizu.cloud.pushsdk.platform.b.b(applicationContext, aVar, this.f28774b, z11);
        this.f28778f = new g(applicationContext, aVar, this.f28774b, z11);
        this.f28779g = new f(applicationContext, aVar, this.f28774b, z11);
        this.f28780h = new e(applicationContext, aVar, this.f28774b, z11);
        this.f28781i = new d(applicationContext, aVar, this.f28774b, z11);
    }

    public static b a(Context context) {
        if (f28773a == null) {
            synchronized (b.class) {
                if (f28773a == null) {
                    f28773a = new b(context, true);
                }
            }
        }
        return f28773a;
    }

    public c<String> a(String str, String str2, String str3, File file) {
        return this.f28776d.a(str, str2, str3, file);
    }

    public void a(boolean z10) {
        this.f28777e.a(z10);
        this.f28778f.a(z10);
        this.f28779g.a(z10);
        this.f28781i.a(z10);
        this.f28780h.a(z10);
    }

    public boolean a(String str) {
        com.meizu.cloud.pushsdk.platform.b.a aVar = new com.meizu.cloud.pushsdk.platform.b.a(this.f28775c, this.f28774b, this.f28782j);
        aVar.a(0);
        aVar.d(str);
        return aVar.m();
    }

    public boolean a(String str, String str2) {
        com.meizu.cloud.pushsdk.platform.b.a aVar = new com.meizu.cloud.pushsdk.platform.b.a(this.f28775c, this.f28774b, this.f28782j);
        aVar.a(2);
        aVar.a(str2);
        aVar.d(str);
        return aVar.m();
    }

    public boolean a(String str, String str2, String str3) {
        this.f28777e.b(str);
        this.f28777e.c(str2);
        this.f28777e.d(str3);
        return this.f28777e.m();
    }

    public boolean a(String str, String str2, String str3, String str4) {
        this.f28779g.b(str);
        this.f28779g.c(str2);
        this.f28779g.d(str3);
        this.f28779g.a(str4);
        this.f28779g.a(2);
        return this.f28779g.m();
    }

    public boolean a(String str, String str2, String str3, String str4, int i9, boolean z10) {
        this.f28779g.b(str);
        this.f28779g.c(str2);
        this.f28779g.d(str3);
        this.f28779g.a(str4);
        this.f28779g.a(i9);
        this.f28779g.b(z10);
        return this.f28779g.m();
    }

    public boolean a(String str, String str2, String str3, String str4, String str5) {
        this.f28780h.b(str);
        this.f28780h.c(str2);
        this.f28780h.d(str3);
        this.f28780h.e(str4);
        this.f28780h.a(0);
        this.f28780h.a(str5);
        return this.f28780h.m();
    }

    public boolean a(String str, String str2, String str3, String str4, boolean z10) {
        this.f28779g.b(str);
        this.f28779g.c(str2);
        this.f28779g.d(str3);
        this.f28779g.a(str4);
        this.f28779g.a(3);
        this.f28779g.b(z10);
        return this.f28779g.m();
    }

    public boolean a(String str, int... iArr) {
        com.meizu.cloud.pushsdk.platform.b.a aVar = new com.meizu.cloud.pushsdk.platform.b.a(this.f28775c, this.f28774b, this.f28782j);
        aVar.a(iArr);
        aVar.d(str);
        aVar.a(1);
        return aVar.m();
    }

    public boolean b(String str, String str2, String str3) {
        this.f28778f.b(str);
        this.f28778f.c(str2);
        this.f28778f.d(str3);
        return this.f28778f.m();
    }

    public boolean b(String str, String str2, String str3, String str4) {
        this.f28780h.b(str);
        this.f28780h.c(str2);
        this.f28780h.d(str3);
        this.f28780h.e(str4);
        this.f28780h.a(2);
        return this.f28780h.m();
    }

    public boolean b(String str, String str2, String str3, String str4, String str5) {
        this.f28780h.b(str);
        this.f28780h.c(str2);
        this.f28780h.d(str3);
        this.f28780h.e(str4);
        this.f28780h.a(1);
        this.f28780h.a(str5);
        return this.f28780h.m();
    }

    public boolean c(String str, String str2, String str3, String str4) {
        this.f28780h.b(str);
        this.f28780h.c(str2);
        this.f28780h.d(str3);
        this.f28780h.e(str4);
        this.f28780h.a(3);
        return this.f28780h.m();
    }

    public boolean c(String str, String str2, String str3, String str4, String str5) {
        this.f28781i.b(str);
        this.f28781i.c(str2);
        this.f28781i.d(str3);
        this.f28781i.e(str4);
        this.f28781i.a(0);
        this.f28781i.a(str5);
        return this.f28781i.m();
    }

    public boolean d(String str, String str2, String str3, String str4) {
        this.f28781i.b(str);
        this.f28781i.c(str2);
        this.f28781i.d(str3);
        this.f28781i.e(str4);
        this.f28781i.a(2);
        return this.f28781i.m();
    }

    public boolean d(String str, String str2, String str3, String str4, String str5) {
        this.f28781i.b(str);
        this.f28781i.c(str2);
        this.f28781i.d(str3);
        this.f28781i.e(str4);
        this.f28781i.a(1);
        this.f28781i.a(str5);
        return this.f28781i.m();
    }
}
