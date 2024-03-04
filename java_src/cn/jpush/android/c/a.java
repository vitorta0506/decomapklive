package cn.jpush.android.c;

import android.os.Bundle;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f2979a;

    /* renamed from: b  reason: collision with root package name */
    private int f2980b;

    /* renamed from: c  reason: collision with root package name */
    private Bundle f2981c;

    public a(String str, int i9) {
        this.f2979a = str;
        this.f2980b = i9;
    }

    public int a() {
        return this.f2980b;
    }

    public void a(Bundle bundle) {
        this.f2981c = bundle;
    }

    public String toString() {
        return "CmdMessage{cmd='" + this.f2979a + "', errorCode=" + this.f2980b + ", extra=" + this.f2981c + '}';
    }
}
