package com.google.auth.oauth2;

import com.facebook.internal.NativeProtocol;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.http.x;
import com.google.api.client.util.GenericData;
import com.google.auth.oauth2.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final String f11686a;

    /* renamed from: b  reason: collision with root package name */
    private final r f11687b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.api.client.http.n f11688c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.api.client.http.j f11689d;

    /* renamed from: e  reason: collision with root package name */
    private final String f11690e;

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f11691a;

        /* renamed from: b  reason: collision with root package name */
        private final r f11692b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.api.client.http.n f11693c;

        /* renamed from: d  reason: collision with root package name */
        private com.google.api.client.http.j f11694d;

        /* renamed from: e  reason: collision with root package name */
        private String f11695e;

        public q a() {
            return new q(this.f11691a, this.f11692b, this.f11693c, this.f11694d, this.f11695e);
        }

        public b b(String str) {
            this.f11695e = str;
            return this;
        }

        private b(String str, r rVar, com.google.api.client.http.n nVar) {
            this.f11691a = str;
            this.f11692b = rVar;
            this.f11693c = nVar;
        }
    }

    private s a(GenericData genericData) throws IOException {
        s.b b10 = s.b(n.e(genericData, "access_token", "Error parsing token response."), n.e(genericData, "issued_token_type", "Error parsing token response."), n.e(genericData, "token_type", "Error parsing token response."));
        if (genericData.containsKey(com.facebook.AccessToken.EXPIRES_IN_KEY)) {
            b10.b(n.c(genericData, com.facebook.AccessToken.EXPIRES_IN_KEY, "Error parsing token response."));
        }
        if (genericData.containsKey("refresh_token")) {
            b10.c(n.e(genericData, "refresh_token", "Error parsing token response."));
        }
        if (genericData.containsKey("scope")) {
            b10.d(Arrays.asList(n.e(genericData, "scope", "Error parsing token response.").trim().split("\\s+")));
        }
        return b10.a();
    }

    private GenericData b() {
        GenericData e10 = new GenericData().e("grant_type", "urn:ietf:params:oauth:grant-type:token-exchange").e("subject_token_type", this.f11687b.h()).e("subject_token", this.f11687b.g());
        ArrayList arrayList = new ArrayList();
        if (this.f11687b.m()) {
            arrayList.addAll(this.f11687b.f());
            e10.e("scope", com.google.common.base.i.g(' ').d(arrayList));
        }
        e10.e("requested_token_type", this.f11687b.k() ? this.f11687b.d() : "urn:ietf:params:oauth:token-type:access_token");
        if (this.f11687b.l()) {
            e10.e("resource", this.f11687b.e());
        }
        if (this.f11687b.j()) {
            e10.e("audience", this.f11687b.b());
        }
        if (!this.f11687b.i()) {
            String str = this.f11690e;
            if (str != null && !str.isEmpty()) {
                e10.e("options", this.f11690e);
            }
            return e10;
        }
        this.f11687b.a();
        throw null;
    }

    public static b d(String str, r rVar, com.google.api.client.http.n nVar) {
        return new b(str, rVar, nVar);
    }

    private g5.b e(String str) throws IOException {
        return (g5.b) n.f11679f.e(str).K(g5.b.class);
    }

    public s c() throws IOException {
        com.google.api.client.http.m b10 = this.f11688c.b(new com.google.api.client.http.d(this.f11686a), new x(b()));
        b10.r(new g5.e(n.f11679f));
        com.google.api.client.http.j jVar = this.f11689d;
        if (jVar != null) {
            b10.p(jVar);
        }
        try {
            return a((GenericData) b10.b().k(GenericData.class));
        } catch (HttpResponseException e10) {
            g5.b e11 = e(e10.getContent());
            throw new o((String) e11.get("error"), e11.containsKey(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION) ? (String) e11.get(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION) : null, e11.containsKey("error_uri") ? (String) e11.get("error_uri") : null);
        }
    }

    private q(String str, r rVar, com.google.api.client.http.n nVar, com.google.api.client.http.j jVar, String str2) {
        this.f11686a = str;
        this.f11687b = rVar;
        this.f11688c = nVar;
        this.f11689d = jVar;
        this.f11690e = str2;
    }
}
