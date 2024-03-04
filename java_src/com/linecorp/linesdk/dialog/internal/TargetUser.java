package com.linecorp.linesdk.dialog.internal;

import android.net.Uri;
/* loaded from: classes4.dex */
public class TargetUser {

    /* renamed from: a  reason: collision with root package name */
    private String f28141a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f28142b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f28143c;

    /* renamed from: d  reason: collision with root package name */
    private Type f28144d;

    /* loaded from: classes4.dex */
    public enum Type {
        FRIEND,
        GROUP
    }

    public static int d() {
        return Type.values().length;
    }

    public String a() {
        return this.f28141a;
    }

    public Uri b() {
        return this.f28142b;
    }

    public Boolean c() {
        return this.f28143c;
    }

    public Type e() {
        return this.f28144d;
    }

    public void f(Boolean bool) {
        this.f28143c = bool;
    }
}
