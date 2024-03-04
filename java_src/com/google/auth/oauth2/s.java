package com.google.auth.oauth2;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2.dex */
final class s {

    /* renamed from: a  reason: collision with root package name */
    private final AccessToken f11710a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11711b;

    /* renamed from: c  reason: collision with root package name */
    private final String f11712c;

    /* renamed from: d  reason: collision with root package name */
    private final Long f11713d;

    /* renamed from: e  reason: collision with root package name */
    private final String f11714e;

    /* renamed from: f  reason: collision with root package name */
    private final List<String> f11715f;

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f11716a;

        /* renamed from: b  reason: collision with root package name */
        private final String f11717b;

        /* renamed from: c  reason: collision with root package name */
        private final String f11718c;

        /* renamed from: d  reason: collision with root package name */
        private Long f11719d;

        /* renamed from: e  reason: collision with root package name */
        private String f11720e;

        /* renamed from: f  reason: collision with root package name */
        private List<String> f11721f;

        public s a() {
            return new s(this.f11716a, this.f11717b, this.f11718c, this.f11719d, this.f11720e, this.f11721f);
        }

        public b b(long j10) {
            this.f11719d = Long.valueOf(j10);
            return this;
        }

        public b c(String str) {
            this.f11720e = str;
            return this;
        }

        public b d(List<String> list) {
            if (list != null) {
                this.f11721f = new ArrayList(list);
            }
            return this;
        }

        private b(String str, String str2, String str3) {
            this.f11716a = str;
            this.f11717b = str2;
            this.f11718c = str3;
        }
    }

    public static b b(String str, String str2, String str3) {
        return new b(str, str2, str3);
    }

    public AccessToken a() {
        return this.f11710a;
    }

    private s(String str, String str2, String str3, Long l10, String str4, List<String> list) {
        com.google.common.base.o.s(str);
        this.f11713d = l10;
        Long valueOf = l10 == null ? null : Long.valueOf(System.currentTimeMillis() + (l10.longValue() * 1000));
        this.f11710a = new AccessToken(str, valueOf != null ? new Date(valueOf.longValue()) : null);
        this.f11711b = (String) com.google.common.base.o.s(str2);
        this.f11712c = (String) com.google.common.base.o.s(str3);
        this.f11714e = str4;
        this.f11715f = list;
    }
}
