package com.meizu.cloud.pushsdk.c.c;

import com.meizu.cloud.pushsdk.c.c.c;
/* loaded from: classes4.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final i f28442a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28443b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28444c;

    /* renamed from: d  reason: collision with root package name */
    private final c f28445d;

    /* renamed from: e  reason: collision with root package name */
    private final l f28446e;

    /* renamed from: f  reason: collision with root package name */
    private final k f28447f;

    /* renamed from: g  reason: collision with root package name */
    private final k f28448g;

    /* renamed from: h  reason: collision with root package name */
    private final k f28449h;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private i f28450a;

        /* renamed from: c  reason: collision with root package name */
        private String f28452c;

        /* renamed from: e  reason: collision with root package name */
        private l f28454e;

        /* renamed from: f  reason: collision with root package name */
        private k f28455f;

        /* renamed from: g  reason: collision with root package name */
        private k f28456g;

        /* renamed from: h  reason: collision with root package name */
        private k f28457h;

        /* renamed from: b  reason: collision with root package name */
        private int f28451b = -1;

        /* renamed from: d  reason: collision with root package name */
        private c.a f28453d = new c.a();

        public a a(int i9) {
            this.f28451b = i9;
            return this;
        }

        public a a(c cVar) {
            this.f28453d = cVar.c();
            return this;
        }

        public a a(i iVar) {
            this.f28450a = iVar;
            return this;
        }

        public a a(l lVar) {
            this.f28454e = lVar;
            return this;
        }

        public a a(String str) {
            this.f28452c = str;
            return this;
        }

        public k a() {
            if (this.f28450a != null) {
                if (this.f28451b >= 0) {
                    return new k(this);
                }
                throw new IllegalStateException("code < 0: " + this.f28451b);
            }
            throw new IllegalStateException("request == null");
        }
    }

    private k(a aVar) {
        this.f28442a = aVar.f28450a;
        this.f28443b = aVar.f28451b;
        this.f28444c = aVar.f28452c;
        this.f28445d = aVar.f28453d.a();
        this.f28446e = aVar.f28454e;
        this.f28447f = aVar.f28455f;
        this.f28448g = aVar.f28456g;
        this.f28449h = aVar.f28457h;
    }

    public int a() {
        return this.f28443b;
    }

    public l b() {
        return this.f28446e;
    }

    public String toString() {
        return "Response{protocol=, code=" + this.f28443b + ", message=" + this.f28444c + ", url=" + this.f28442a.a() + '}';
    }
}
