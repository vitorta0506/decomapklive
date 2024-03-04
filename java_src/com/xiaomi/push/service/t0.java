package com.xiaomi.push.service;

import android.app.Notification;
import android.content.Context;
import com.xiaomi.push.f3;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class t0 extends f3.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f37365a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f37366b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Context f37367c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ String f37368d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Notification f37369e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(int i9, String str, Context context, String str2, Notification notification) {
        this.f37365a = i9;
        this.f37366b = str;
        this.f37367c = context;
        this.f37368d = str2;
        this.f37369e = notification;
    }

    @Override // com.xiaomi.push.f3.a
    public String b() {
        String i9;
        i9 = s0.i(this.f37365a, this.f37366b);
        return i9;
    }

    @Override // java.lang.Runnable
    public void run() {
        s0.k(this.f37367c, this.f37368d, this.f37365a, this.f37366b, this.f37369e);
    }
}
