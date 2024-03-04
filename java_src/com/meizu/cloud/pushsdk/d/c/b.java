package com.meizu.cloud.pushsdk.d.c;

import com.meizu.cloud.pushsdk.d.a.c;
import com.meizu.cloud.pushsdk.d.c.a;
import com.meizu.cloud.pushsdk.notification.model.AppIconSetting;
import com.meizu.cloud.pushsdk.notification.model.BrightRemindSetting;
/* loaded from: classes4.dex */
public class b extends com.meizu.cloud.pushsdk.d.c.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f28585a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28586b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28587c;

    /* renamed from: d  reason: collision with root package name */
    private final String f28588d;

    /* renamed from: e  reason: collision with root package name */
    private final String f28589e;

    /* renamed from: f  reason: collision with root package name */
    private final String f28590f;

    /* renamed from: g  reason: collision with root package name */
    private final String f28591g;

    /* renamed from: h  reason: collision with root package name */
    private final String f28592h;

    /* renamed from: i  reason: collision with root package name */
    private final int f28593i;

    /* loaded from: classes4.dex */
    public static abstract class a<T extends a<T>> extends a.AbstractC0282a<T> {

        /* renamed from: a  reason: collision with root package name */
        private String f28594a;

        /* renamed from: b  reason: collision with root package name */
        private String f28595b;

        /* renamed from: c  reason: collision with root package name */
        private String f28596c;

        /* renamed from: d  reason: collision with root package name */
        private String f28597d;

        /* renamed from: e  reason: collision with root package name */
        private String f28598e;

        /* renamed from: f  reason: collision with root package name */
        private String f28599f;

        /* renamed from: g  reason: collision with root package name */
        private String f28600g;

        /* renamed from: h  reason: collision with root package name */
        private String f28601h;

        /* renamed from: i  reason: collision with root package name */
        private int f28602i = 0;

        public T a(int i9) {
            this.f28602i = i9;
            return (T) a();
        }

        public T a(String str) {
            this.f28594a = str;
            return (T) a();
        }

        public T b(String str) {
            this.f28595b = str;
            return (T) a();
        }

        public b b() {
            return new b(this);
        }

        public T c(String str) {
            this.f28596c = str;
            return (T) a();
        }

        public T d(String str) {
            this.f28597d = str;
            return (T) a();
        }

        public T e(String str) {
            this.f28598e = str;
            return (T) a();
        }

        public T f(String str) {
            this.f28599f = str;
            return (T) a();
        }

        public T g(String str) {
            this.f28600g = str;
            return (T) a();
        }

        public T h(String str) {
            this.f28601h = str;
            return (T) a();
        }
    }

    /* renamed from: com.meizu.cloud.pushsdk.d.c.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static class C0283b extends a<C0283b> {
        private C0283b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.meizu.cloud.pushsdk.d.c.a.AbstractC0282a
        /* renamed from: c */
        public C0283b a() {
            return this;
        }
    }

    protected b(a<?> aVar) {
        super(aVar);
        this.f28586b = ((a) aVar).f28595b;
        this.f28587c = ((a) aVar).f28596c;
        this.f28585a = ((a) aVar).f28594a;
        this.f28588d = ((a) aVar).f28597d;
        this.f28589e = ((a) aVar).f28598e;
        this.f28590f = ((a) aVar).f28599f;
        this.f28591g = ((a) aVar).f28600g;
        this.f28592h = ((a) aVar).f28601h;
        this.f28593i = ((a) aVar).f28602i;
    }

    public static a<?> d() {
        return new C0283b();
    }

    public c e() {
        c cVar = new c();
        cVar.a("en", this.f28585a);
        cVar.a("ti", this.f28586b);
        cVar.a(AppIconSetting.DEFAULT_LARGE_ICON, this.f28587c);
        cVar.a("pv", this.f28588d);
        cVar.a("pn", this.f28589e);
        cVar.a("si", this.f28590f);
        cVar.a("ms", this.f28591g);
        cVar.a("ect", this.f28592h);
        cVar.a(BrightRemindSetting.BRIGHT_REMIND, Integer.valueOf(this.f28593i));
        return a(cVar);
    }
}
