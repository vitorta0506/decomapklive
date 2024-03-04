package cn.jiguang.ap;

import android.content.Intent;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public String f2013a;

    /* renamed from: b  reason: collision with root package name */
    public String f2014b;

    /* renamed from: c  reason: collision with root package name */
    public int f2015c;

    /* renamed from: d  reason: collision with root package name */
    public String f2016d;

    /* renamed from: e  reason: collision with root package name */
    public Intent f2017e;

    /* renamed from: f  reason: collision with root package name */
    public Intent f2018f;

    /* renamed from: g  reason: collision with root package name */
    public int f2019g = 0;

    /* renamed from: h  reason: collision with root package name */
    public String f2020h;

    /* renamed from: i  reason: collision with root package name */
    public int f2021i;

    public c() {
    }

    public c(String str, String str2, int i9) {
        this.f2013a = str;
        this.f2014b = str2;
        this.f2015c = i9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        String str = this.f2013a;
        String str2 = ((c) obj).f2013a;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public String toString() {
        return "JWakeTargetInfo{packageName='" + this.f2013a + "', serviceName='" + this.f2014b + "', targetVersion=" + this.f2015c + ", providerAuthority='" + this.f2016d + "', activityIntent=" + this.f2017e + ", activityIntentBackup=" + this.f2018f + ", wakeType=" + this.f2019g + ", authenType=" + this.f2020h + ", cmd=" + this.f2021i + '}';
    }
}
