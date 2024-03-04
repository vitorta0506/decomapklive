package com.google.auth.oauth2;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final String f11696a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11697b;

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f11698c;

    /* renamed from: d  reason: collision with root package name */
    private final String f11699d;

    /* renamed from: e  reason: collision with root package name */
    private final String f11700e;

    /* renamed from: f  reason: collision with root package name */
    private final String f11701f;

    /* renamed from: g  reason: collision with root package name */
    private final String f11702g;

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f11703a;

        /* renamed from: b  reason: collision with root package name */
        private final String f11704b;

        /* renamed from: c  reason: collision with root package name */
        private String f11705c;

        /* renamed from: d  reason: collision with root package name */
        private String f11706d;

        /* renamed from: e  reason: collision with root package name */
        private String f11707e;

        /* renamed from: f  reason: collision with root package name */
        private List<String> f11708f;

        /* renamed from: g  reason: collision with root package name */
        private String f11709g;

        public r a() {
            return new r(this.f11703a, this.f11704b, null, this.f11708f, this.f11705c, this.f11706d, this.f11707e, this.f11709g);
        }

        public b b(String str) {
            this.f11706d = str;
            return this;
        }

        public b c(String str) {
            this.f11707e = str;
            return this;
        }

        public b d(List<String> list) {
            this.f11708f = list;
            return this;
        }

        private b(String str, String str2) {
            this.f11703a = str;
            this.f11704b = str2;
        }
    }

    public static b n(String str, String str2) {
        return new b(str, str2);
    }

    public com.google.auth.oauth2.a a() {
        return null;
    }

    public String b() {
        return this.f11700e;
    }

    public String c() {
        return this.f11702g;
    }

    public String d() {
        return this.f11701f;
    }

    public String e() {
        return this.f11699d;
    }

    public List<String> f() {
        return this.f11698c;
    }

    public String g() {
        return this.f11696a;
    }

    public String h() {
        return this.f11697b;
    }

    public boolean i() {
        return false;
    }

    public boolean j() {
        String str = this.f11700e;
        return (str == null || str.isEmpty()) ? false : true;
    }

    public boolean k() {
        String str = this.f11701f;
        return (str == null || str.isEmpty()) ? false : true;
    }

    public boolean l() {
        String str = this.f11699d;
        return (str == null || str.isEmpty()) ? false : true;
    }

    public boolean m() {
        List<String> list = this.f11698c;
        return (list == null || list.isEmpty()) ? false : true;
    }

    private r(String str, String str2, com.google.auth.oauth2.a aVar, List<String> list, String str3, String str4, String str5, String str6) {
        this.f11696a = (String) com.google.common.base.o.s(str);
        this.f11697b = (String) com.google.common.base.o.s(str2);
        this.f11698c = list;
        this.f11699d = str3;
        this.f11700e = str4;
        this.f11701f = str5;
        this.f11702g = str6;
    }
}
