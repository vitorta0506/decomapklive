package com.google.api.client.util;
/* loaded from: classes2.dex */
public final class x {

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f11179a;

        /* renamed from: b  reason: collision with root package name */
        private a f11180b;

        /* renamed from: c  reason: collision with root package name */
        private a f11181c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f11182d;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            String f11183a;

            /* renamed from: b  reason: collision with root package name */
            Object f11184b;

            /* renamed from: c  reason: collision with root package name */
            a f11185c;

            private a() {
            }
        }

        b(String str) {
            a aVar = new a();
            this.f11180b = aVar;
            this.f11181c = aVar;
            this.f11179a = str;
        }

        private a b() {
            a aVar = new a();
            this.f11181c.f11185c = aVar;
            this.f11181c = aVar;
            return aVar;
        }

        private b c(String str, Object obj) {
            a b10 = b();
            b10.f11184b = obj;
            b10.f11183a = (String) z.d(str);
            return this;
        }

        public b a(String str, Object obj) {
            return c(str, obj);
        }

        public String toString() {
            boolean z10 = this.f11182d;
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append(this.f11179a);
            sb2.append('{');
            String str = "";
            for (a aVar = this.f11180b.f11185c; aVar != null; aVar = aVar.f11185c) {
                if (!z10 || aVar.f11184b != null) {
                    sb2.append(str);
                    String str2 = aVar.f11183a;
                    if (str2 != null) {
                        sb2.append(str2);
                        sb2.append('=');
                    }
                    sb2.append(aVar.f11184b);
                    str = ", ";
                }
            }
            sb2.append('}');
            return sb2.toString();
        }
    }

    public static boolean a(Object obj, Object obj2) {
        return com.google.common.base.l.a(obj, obj2);
    }

    public static b b(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }
}
