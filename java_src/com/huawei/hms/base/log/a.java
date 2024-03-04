package com.huawei.hms.base.log;

import android.content.Context;
import android.util.Log;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    public String f27261b;

    /* renamed from: a  reason: collision with root package name */
    public int f27260a = 4;

    /* renamed from: c  reason: collision with root package name */
    public b f27262c = new e();

    public void a(Context context, int i9, String str) {
        this.f27260a = i9;
        this.f27261b = str;
        this.f27262c.a(context, "HMSCore");
    }

    public void b(int i9, String str, String str2, Throwable th2) {
        if (a(i9)) {
            c a10 = a(i9, str, str2, th2);
            b bVar = this.f27262c;
            bVar.a(a10.c() + a10.a(), i9, str, str2 + '\n' + Log.getStackTraceString(th2));
        }
    }

    public b a() {
        return this.f27262c;
    }

    public void a(b bVar) {
        this.f27262c = bVar;
    }

    public boolean a(int i9) {
        return i9 >= this.f27260a;
    }

    public void a(int i9, String str, String str2) {
        if (a(i9)) {
            c a10 = a(i9, str, str2, null);
            this.f27262c.a(a10.c() + a10.a(), i9, str, str2);
        }
    }

    public void a(String str, String str2) {
        c a10 = a(4, str, str2, null);
        this.f27262c.a(a10.c() + '\n' + a10.a(), 4, str, str2);
    }

    public final c a(int i9, String str, String str2, Throwable th2) {
        c cVar = new c(8, this.f27261b, i9, str);
        cVar.a((c) str2);
        cVar.a(th2);
        return cVar;
    }
}
