package com.tencent.thumbplayer.e;

import android.text.TextUtils;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private String f33931a;

    /* renamed from: b  reason: collision with root package name */
    private String f33932b;

    /* renamed from: c  reason: collision with root package name */
    private String f33933c;

    /* renamed from: d  reason: collision with root package name */
    private String f33934d;

    /* renamed from: e  reason: collision with root package name */
    private String f33935e;

    public b(b bVar, @NonNull String str) {
        this.f33931a = "";
        this.f33932b = "";
        this.f33933c = "";
        this.f33934d = "";
        this.f33935e = "TPLogger";
        a(bVar, str);
    }

    public b(@NonNull String str) {
        this(str, "", "", "");
    }

    public b(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) {
        this.f33935e = "TPLogger";
        this.f33931a = str;
        this.f33932b = str2;
        this.f33933c = str3;
        this.f33934d = str4;
        b();
    }

    private void b() {
        this.f33935e = this.f33931a;
        if (!TextUtils.isEmpty(this.f33932b)) {
            this.f33935e += "_C" + this.f33932b;
        }
        if (!TextUtils.isEmpty(this.f33933c)) {
            this.f33935e += "_T" + this.f33933c;
        }
        if (TextUtils.isEmpty(this.f33934d)) {
            return;
        }
        this.f33935e += "_" + this.f33934d;
    }

    public String a() {
        return this.f33935e;
    }

    public void a(b bVar, @NonNull String str) {
        String str2;
        if (bVar != null) {
            this.f33931a = bVar.f33931a;
            this.f33932b = bVar.f33932b;
            str2 = bVar.f33933c;
        } else {
            str2 = "";
            this.f33931a = "";
            this.f33932b = "";
        }
        this.f33933c = str2;
        this.f33934d = str;
        b();
    }

    public void a(String str) {
        this.f33933c = str;
        b();
    }

    public String toString() {
        return "TPLoggerContext{prefix='" + this.f33931a + "', classId='" + this.f33932b + "', taskId='" + this.f33933c + "', model='" + this.f33934d + "', tag='" + this.f33935e + "'}";
    }
}
