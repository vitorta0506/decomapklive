package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import java.util.UUID;
/* loaded from: classes4.dex */
public class z0 {

    /* renamed from: b  reason: collision with root package name */
    public static z0 f27620b;

    /* renamed from: a  reason: collision with root package name */
    public Context f27621a;

    /* loaded from: classes4.dex */
    public static class a extends a1 {

        /* renamed from: a  reason: collision with root package name */
        public String f27622a;

        /* renamed from: b  reason: collision with root package name */
        public String f27623b;

        public a(String str, String str2) {
            this.f27622a = str;
            this.f27623b = str2;
        }

        @Override // com.huawei.hms.hatool.a1
        public String a() {
            return com.huawei.hms.hatool.a.d(this.f27622a, this.f27623b);
        }

        @Override // com.huawei.hms.hatool.a1
        public String a(String str) {
            return zb.b.b(str);
        }

        @Override // com.huawei.hms.hatool.a1
        public String b() {
            return com.huawei.hms.hatool.a.g(this.f27622a, this.f27623b);
        }

        @Override // com.huawei.hms.hatool.a1
        public String c() {
            return com.huawei.hms.hatool.a.j(this.f27622a, this.f27623b);
        }

        @Override // com.huawei.hms.hatool.a1
        public int d() {
            return (com.huawei.hms.hatool.a.k(this.f27622a, this.f27623b) ? 4 : 0) | 0 | (com.huawei.hms.hatool.a.e(this.f27622a, this.f27623b) ? 2 : 0) | (com.huawei.hms.hatool.a.h(this.f27622a, this.f27623b) ? 1 : 0);
        }
    }

    public static z0 a() {
        z0 z0Var;
        synchronized (z0.class) {
            if (f27620b == null) {
                f27620b = new z0();
            }
            z0Var = f27620b;
        }
        return z0Var;
    }

    public String a(String str, String str2) {
        return g.a(this.f27621a, str, str2);
    }

    public String a(boolean z10) {
        if (z10) {
            String e10 = b.e();
            if (TextUtils.isEmpty(e10)) {
                e10 = g0.a(this.f27621a, "global_v2", "uuid", "");
                if (TextUtils.isEmpty(e10)) {
                    e10 = UUID.randomUUID().toString().replace("-", "");
                    g0.b(this.f27621a, "global_v2", "uuid", e10);
                }
                b.h(e10);
            }
            return e10;
        }
        return "";
    }

    public void a(Context context) {
        if (this.f27621a == null) {
            this.f27621a = context;
        }
    }

    public String b(String str, String str2) {
        return g.b(this.f27621a, str, str2);
    }

    public x0 c(String str, String str2) {
        return new a(str, str2).a(this.f27621a);
    }

    public String d(String str, String str2) {
        return c1.b(str, str2);
    }

    public Pair<String, String> e(String str, String str2) {
        if (com.huawei.hms.hatool.a.f(str, str2)) {
            String p10 = i.c().b().p();
            String q10 = i.c().b().q();
            if (TextUtils.isEmpty(p10) || TextUtils.isEmpty(q10)) {
                Pair<String, String> e10 = b1.e(this.f27621a);
                i.c().b().k((String) e10.first);
                i.c().b().l((String) e10.second);
                return e10;
            }
            return new Pair<>(p10, q10);
        }
        return new Pair<>("", "");
    }

    public String f(String str, String str2) {
        return c1.a(str, str2);
    }
}
