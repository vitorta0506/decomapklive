package com.google.auth.oauth2;
/* loaded from: classes2.dex */
class t implements k {

    /* renamed from: a  reason: collision with root package name */
    static final t f11722a = new t();

    private t() {
    }

    public static t b() {
        return f11722a;
    }

    @Override // com.google.auth.oauth2.k
    public String a(String str) {
        return System.getenv(str);
    }
}
