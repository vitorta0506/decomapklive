package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class j0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f36243a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Context f36244b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ c f36245c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0(String str, Context context, c cVar) {
        this.f36243a = str;
        this.f36244b = context;
        this.f36245c = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        if (TextUtils.isEmpty(this.f36243a)) {
            return;
        }
        String[] split = this.f36243a.split("~");
        int length = split.length;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                str = "";
                break;
            }
            String str2 = split[i9];
            if (!TextUtils.isEmpty(str2) && str2.startsWith("token:")) {
                str = str2.substring(str2.indexOf(CertificateUtil.DELIMITER) + 1);
                break;
            }
            i9++;
        }
        if (TextUtils.isEmpty(str)) {
            tf.c.l("ASSEMBLE_PUSH : receive incorrect token");
            return;
        }
        tf.c.l("ASSEMBLE_PUSH : receive correct token");
        i0.p(this.f36244b, this.f36245c, str);
        i0.f(this.f36244b);
    }
}
