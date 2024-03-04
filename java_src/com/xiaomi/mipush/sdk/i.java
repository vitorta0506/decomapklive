package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.mipush.sdk.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f36234a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f36235b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f36236c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ j.a f36237d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(String str, String str2, String str3, j.a aVar) {
        this.f36234a = str;
        this.f36235b = str2;
        this.f36236c = str3;
        this.f36237d = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        Context context;
        if (j.f36241c != null) {
            str = j.f36241c.name();
            j.f36241c = null;
        } else {
            str = "";
        }
        context = j.f36239a;
        j.E(context, this.f36234a, this.f36235b, null, this.f36236c, this.f36237d, str);
    }
}
