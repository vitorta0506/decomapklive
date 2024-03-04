package com.xiaomi.push.service;

import com.xiaomi.push.f3;
/* loaded from: classes5.dex */
final class j extends f3.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f37277a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ r f37278b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f37279c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(String str, r rVar, int i9) {
        this.f37277a = str;
        this.f37278b = rVar;
        this.f37279c = i9;
    }

    @Override // com.xiaomi.push.f3.a
    public String b() {
        return this.f37277a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f37278b.m(this.f37279c);
    }
}
