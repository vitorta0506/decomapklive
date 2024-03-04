package com.tencent.thumbplayer.e;

import androidx.annotation.NonNull;
import com.tencent.thumbplayer.utils.TPLogUtil;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f33929a;

    /* renamed from: b  reason: collision with root package name */
    private b f33930b;

    public a(@NonNull b bVar) {
        this.f33930b = bVar;
        this.f33929a = bVar.a();
    }

    public a(b bVar, String str) {
        b bVar2 = new b(bVar, str);
        this.f33930b = bVar2;
        this.f33929a = bVar2.a();
    }

    public b a() {
        return this.f33930b;
    }

    public void a(b bVar) {
        if (bVar == null) {
            this.f33930b = new b(this.f33929a);
        } else {
            this.f33930b = bVar;
        }
    }

    public void a(Exception exc) {
        TPLogUtil.e(this.f33930b.a(), exc);
    }

    public void a(String str) {
        this.f33930b.a(str);
    }

    public String b() {
        return this.f33930b.a();
    }

    public void b(String str) {
        TPLogUtil.d(this.f33930b.a(), str);
    }

    public void c(String str) {
        TPLogUtil.i(this.f33930b.a(), str);
    }

    public void d(String str) {
        TPLogUtil.w(this.f33930b.a(), str);
    }

    public void e(String str) {
        TPLogUtil.e(this.f33930b.a(), str);
    }
}
