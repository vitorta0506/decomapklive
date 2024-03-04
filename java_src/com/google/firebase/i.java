package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.r;
import e4.o;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final String f13876a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13877b;

    /* renamed from: c  reason: collision with root package name */
    private final String f13878c;

    /* renamed from: d  reason: collision with root package name */
    private final String f13879d;

    /* renamed from: e  reason: collision with root package name */
    private final String f13880e;

    /* renamed from: f  reason: collision with root package name */
    private final String f13881f;

    /* renamed from: g  reason: collision with root package name */
    private final String f13882g;

    private i(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        p.o(!o.a(str), "ApplicationId must be set.");
        this.f13877b = str;
        this.f13876a = str2;
        this.f13878c = str3;
        this.f13879d = str4;
        this.f13880e = str5;
        this.f13881f = str6;
        this.f13882g = str7;
    }

    @Nullable
    public static i a(@NonNull Context context) {
        r rVar = new r(context);
        String a10 = rVar.a("google_app_id");
        if (TextUtils.isEmpty(a10)) {
            return null;
        }
        return new i(a10, rVar.a("google_api_key"), rVar.a("firebase_database_url"), rVar.a("ga_trackingId"), rVar.a("gcm_defaultSenderId"), rVar.a("google_storage_bucket"), rVar.a("project_id"));
    }

    @NonNull
    public String b() {
        return this.f13876a;
    }

    @NonNull
    public String c() {
        return this.f13877b;
    }

    @Nullable
    public String d() {
        return this.f13880e;
    }

    @Nullable
    public String e() {
        return this.f13882g;
    }

    public boolean equals(Object obj) {
        if (obj instanceof i) {
            i iVar = (i) obj;
            return n.b(this.f13877b, iVar.f13877b) && n.b(this.f13876a, iVar.f13876a) && n.b(this.f13878c, iVar.f13878c) && n.b(this.f13879d, iVar.f13879d) && n.b(this.f13880e, iVar.f13880e) && n.b(this.f13881f, iVar.f13881f) && n.b(this.f13882g, iVar.f13882g);
        }
        return false;
    }

    public int hashCode() {
        return n.c(this.f13877b, this.f13876a, this.f13878c, this.f13879d, this.f13880e, this.f13881f, this.f13882g);
    }

    public String toString() {
        return n.d(this).a("applicationId", this.f13877b).a("apiKey", this.f13876a).a("databaseUrl", this.f13878c).a("gcmSenderId", this.f13880e).a("storageBucket", this.f13881f).a("projectId", this.f13882g).toString();
    }
}
