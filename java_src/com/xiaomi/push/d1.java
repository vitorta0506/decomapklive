package com.xiaomi.push;

import java.util.Map;
/* loaded from: classes5.dex */
public class d1 implements Cloneable {

    /* renamed from: h  reason: collision with root package name */
    public static final String f36483h = c3.f36433b;

    /* renamed from: i  reason: collision with root package name */
    public static String f36484i;

    /* renamed from: a  reason: collision with root package name */
    private String f36485a;

    /* renamed from: b  reason: collision with root package name */
    private String f36486b;

    /* renamed from: c  reason: collision with root package name */
    private int f36487c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f36488d = c1.f36411s;

    /* renamed from: e  reason: collision with root package name */
    private boolean f36489e = true;

    /* renamed from: f  reason: collision with root package name */
    private String f36490f;

    /* renamed from: g  reason: collision with root package name */
    private f1 f36491g;

    public d1(Map<String, Integer> map, int i9, String str, f1 f1Var) {
        e(map, i9, str, f1Var);
    }

    public static final String b() {
        String str = f36484i;
        return str != null ? str : a3.c() ? "" : a3.d() ? f36483h : "app.chat.global.xiaomi.net";
    }

    public static final void d(String str) {
        if (sf.e.i(sf.j.b()) && a3.d()) {
            return;
        }
        f36484i = str;
    }

    private void e(Map<String, Integer> map, int i9, String str, f1 f1Var) {
        this.f36487c = i9;
        this.f36485a = str;
        this.f36491g = f1Var;
    }

    public int a() {
        return this.f36487c;
    }

    public void f(boolean z10) {
        this.f36488d = z10;
    }

    public boolean g() {
        return this.f36488d;
    }

    public byte[] h() {
        throw null;
    }

    public String i() {
        return this.f36490f;
    }

    public void j(String str) {
        this.f36490f = str;
    }

    public String k() {
        if (this.f36486b == null) {
            this.f36486b = b();
        }
        return this.f36486b;
    }

    public void l(String str) {
        this.f36486b = str;
    }
}
