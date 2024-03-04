package com.xiaomi.push.service;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.facebook.internal.security.CertificateUtil;
import com.xiaomi.push.m;
import com.xiaomi.push.p3;
import com.xiaomi.push.service.o0;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes5.dex */
public class f0 extends o0.a implements m.a {

    /* renamed from: a  reason: collision with root package name */
    private XMPushService f37239a;

    /* renamed from: b  reason: collision with root package name */
    private long f37240b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a implements m.b {
        a() {
        }

        @Override // com.xiaomi.push.m.b
        public String a(String str) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            buildUpon.appendQueryParameter("sdkver", String.valueOf(48));
            buildUpon.appendQueryParameter("osver", String.valueOf(Build.VERSION.SDK_INT));
            buildUpon.appendQueryParameter("os", com.xiaomi.push.b2.b(Build.MODEL + CertificateUtil.DELIMITER + Build.VERSION.INCREMENTAL));
            buildUpon.appendQueryParameter("mi", String.valueOf(sf.j.a()));
            URL url = new URL(buildUpon.toString());
            if (url.getPort() != -1) {
                url.getPort();
            }
            try {
                System.currentTimeMillis();
                String g10 = p3.g(sf.j.b(), url);
                System.currentTimeMillis();
                return g10;
            } catch (IOException e10) {
                throw e10;
            }
        }
    }

    /* loaded from: classes5.dex */
    static class b extends com.xiaomi.push.m {
        protected b(Context context, com.xiaomi.push.l lVar, m.b bVar, String str) {
            super(context, lVar, bVar, str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xiaomi.push.m
        public String f(ArrayList<String> arrayList, String str, String str2, boolean z10) {
            try {
                return super.f(arrayList, str, str2, z10);
            } catch (IOException e10) {
                p3.n(com.xiaomi.push.m.f36967j);
                throw e10;
            }
        }
    }

    f0(XMPushService xMPushService) {
        this.f37239a = xMPushService;
    }

    public static void d(XMPushService xMPushService) {
        f0 f0Var = new f0(xMPushService);
        o0.e().j(f0Var);
        synchronized (com.xiaomi.push.m.class) {
            com.xiaomi.push.m.k(f0Var);
            com.xiaomi.push.m.j(xMPushService, null, new a(), "0", "push", "2.2");
        }
    }

    @Override // com.xiaomi.push.m.a
    public com.xiaomi.push.m a(Context context, com.xiaomi.push.l lVar, m.b bVar, String str) {
        return new b(context, lVar, bVar, str);
    }

    @Override // com.xiaomi.push.service.o0.a
    public void b(com.xiaomi.push.v vVar) {
    }

    @Override // com.xiaomi.push.service.o0.a
    public void c(com.xiaomi.push.x xVar) {
        com.xiaomi.push.i p10;
        if (xVar.p() && xVar.n() && System.currentTimeMillis() - this.f37240b > 3600000) {
            tf.c.l("fetch bucket :" + xVar.n());
            this.f37240b = System.currentTimeMillis();
            com.xiaomi.push.m c10 = com.xiaomi.push.m.c();
            c10.i();
            c10.v();
            com.xiaomi.push.c1 m1533a = this.f37239a.m1533a();
            if (m1533a == null || (p10 = c10.p(m1533a.b().k())) == null) {
                return;
            }
            ArrayList<String> c11 = p10.c();
            boolean z10 = true;
            Iterator<String> it = c11.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().equals(m1533a.c())) {
                    z10 = false;
                    break;
                }
            }
            if (!z10 || c11.isEmpty()) {
                return;
            }
            tf.c.l("bucket changed, force reconnect");
            this.f37239a.a(0, (Exception) null);
            this.f37239a.a(false);
        }
    }
}
