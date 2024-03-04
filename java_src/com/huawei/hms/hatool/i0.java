package com.huawei.hms.hatool;

import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class i0 implements n0 {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f27473a;

    /* renamed from: b  reason: collision with root package name */
    public String f27474b;

    /* renamed from: c  reason: collision with root package name */
    public String f27475c;

    /* renamed from: d  reason: collision with root package name */
    public String f27476d;

    /* renamed from: e  reason: collision with root package name */
    public String f27477e;

    /* renamed from: f  reason: collision with root package name */
    public List<q> f27478f;

    public i0(byte[] bArr, String str, String str2, String str3, String str4, List<q> list) {
        this.f27473a = (byte[]) bArr.clone();
        this.f27474b = str;
        this.f27475c = str2;
        this.f27477e = str3;
        this.f27476d = str4;
        this.f27478f = list;
    }

    public final b0 a(Map<String, String> map) {
        return a0.a(this.f27474b, this.f27473a, map);
    }

    public final Map<String, String> a() {
        return d1.b(this.f27475c, this.f27477e, this.f27476d);
    }

    public final void b() {
        o0.c().a(new l0(this.f27478f, this.f27475c, this.f27476d, this.f27477e));
    }

    @Override // java.lang.Runnable
    public void run() {
        y.c("hmsSdk", "send data running");
        int b10 = a(a()).b();
        if (b10 != 200) {
            b();
            return;
        }
        y.b("hmsSdk", "events PostRequest sendevent TYPE : %s, TAG : %s, resultCode: %d ,reqID:" + this.f27476d, this.f27477e, this.f27475c, Integer.valueOf(b10));
    }
}
