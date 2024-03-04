package com.xiaomi.push;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class u1 {

    /* renamed from: a  reason: collision with root package name */
    private int f37463a;

    /* renamed from: b  reason: collision with root package name */
    private String f37464b;

    /* renamed from: c  reason: collision with root package name */
    private String f37465c;

    /* renamed from: d  reason: collision with root package name */
    private String f37466d;

    /* renamed from: e  reason: collision with root package name */
    private String f37467e;

    /* renamed from: f  reason: collision with root package name */
    private List<o1> f37468f;

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f37469b = new a("internal-server-error");

        /* renamed from: c  reason: collision with root package name */
        public static final a f37470c = new a("forbidden");

        /* renamed from: d  reason: collision with root package name */
        public static final a f37471d = new a("bad-request");

        /* renamed from: e  reason: collision with root package name */
        public static final a f37472e = new a("conflict");

        /* renamed from: f  reason: collision with root package name */
        public static final a f37473f = new a("feature-not-implemented");

        /* renamed from: g  reason: collision with root package name */
        public static final a f37474g = new a("gone");

        /* renamed from: h  reason: collision with root package name */
        public static final a f37475h = new a("item-not-found");

        /* renamed from: i  reason: collision with root package name */
        public static final a f37476i = new a("jid-malformed");

        /* renamed from: j  reason: collision with root package name */
        public static final a f37477j = new a("not-acceptable");

        /* renamed from: k  reason: collision with root package name */
        public static final a f37478k = new a("not-allowed");

        /* renamed from: l  reason: collision with root package name */
        public static final a f37479l = new a("not-authorized");

        /* renamed from: m  reason: collision with root package name */
        public static final a f37480m = new a("payment-required");

        /* renamed from: n  reason: collision with root package name */
        public static final a f37481n = new a("recipient-unavailable");

        /* renamed from: o  reason: collision with root package name */
        public static final a f37482o = new a("redirect");

        /* renamed from: p  reason: collision with root package name */
        public static final a f37483p = new a("registration-required");

        /* renamed from: q  reason: collision with root package name */
        public static final a f37484q = new a("remote-server-error");

        /* renamed from: r  reason: collision with root package name */
        public static final a f37485r = new a("remote-server-not-found");

        /* renamed from: s  reason: collision with root package name */
        public static final a f37486s = new a("remote-server-timeout");

        /* renamed from: t  reason: collision with root package name */
        public static final a f37487t = new a("resource-constraint");

        /* renamed from: u  reason: collision with root package name */
        public static final a f37488u = new a("service-unavailable");

        /* renamed from: v  reason: collision with root package name */
        public static final a f37489v = new a("subscription-required");

        /* renamed from: w  reason: collision with root package name */
        public static final a f37490w = new a("undefined-condition");

        /* renamed from: x  reason: collision with root package name */
        public static final a f37491x = new a("unexpected-request");

        /* renamed from: y  reason: collision with root package name */
        public static final a f37492y = new a("request-timeout");

        /* renamed from: a  reason: collision with root package name */
        private String f37493a;

        public a(String str) {
            this.f37493a = str;
        }

        public String toString() {
            return this.f37493a;
        }
    }

    public u1(int i9, String str, String str2, String str3, String str4, List<o1> list) {
        this.f37463a = i9;
        this.f37464b = str;
        this.f37466d = str2;
        this.f37465c = str3;
        this.f37467e = str4;
        this.f37468f = list;
    }

    public u1(Bundle bundle) {
        this.f37468f = null;
        this.f37463a = bundle.getInt("ext_err_code");
        if (bundle.containsKey("ext_err_type")) {
            this.f37464b = bundle.getString("ext_err_type");
        }
        this.f37465c = bundle.getString("ext_err_cond");
        this.f37466d = bundle.getString("ext_err_reason");
        this.f37467e = bundle.getString("ext_err_msg");
        Parcelable[] parcelableArray = bundle.getParcelableArray("ext_exts");
        if (parcelableArray != null) {
            this.f37468f = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                o1 c10 = o1.c((Bundle) parcelable);
                if (c10 != null) {
                    this.f37468f.add(c10);
                }
            }
        }
    }

    public u1(a aVar) {
        this.f37468f = null;
        d(aVar);
        this.f37467e = null;
    }

    private void d(a aVar) {
        this.f37465c = aVar.f37493a;
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        String str = this.f37464b;
        if (str != null) {
            bundle.putString("ext_err_type", str);
        }
        bundle.putInt("ext_err_code", this.f37463a);
        String str2 = this.f37466d;
        if (str2 != null) {
            bundle.putString("ext_err_reason", str2);
        }
        String str3 = this.f37465c;
        if (str3 != null) {
            bundle.putString("ext_err_cond", str3);
        }
        String str4 = this.f37467e;
        if (str4 != null) {
            bundle.putString("ext_err_msg", str4);
        }
        List<o1> list = this.f37468f;
        if (list != null) {
            Bundle[] bundleArr = new Bundle[list.size()];
            int i9 = 0;
            for (o1 o1Var : this.f37468f) {
                Bundle a10 = o1Var.a();
                if (a10 != null) {
                    bundleArr[i9] = a10;
                    i9++;
                }
            }
            bundle.putParcelableArray("ext_exts", bundleArr);
        }
        return bundle;
    }

    public String b() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<error code=\"");
        sb2.append(this.f37463a);
        sb2.append("\"");
        if (this.f37464b != null) {
            sb2.append(" type=\"");
            sb2.append(this.f37464b);
            sb2.append("\"");
        }
        if (this.f37466d != null) {
            sb2.append(" reason=\"");
            sb2.append(this.f37466d);
            sb2.append("\"");
        }
        sb2.append(">");
        if (this.f37465c != null) {
            sb2.append("<");
            sb2.append(this.f37465c);
            sb2.append(" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>");
        }
        if (this.f37467e != null) {
            sb2.append("<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">");
            sb2.append(this.f37467e);
            sb2.append("</text>");
        }
        for (o1 o1Var : c()) {
            sb2.append(o1Var.d());
        }
        sb2.append("</error>");
        return sb2.toString();
    }

    public synchronized List<o1> c() {
        List<o1> list = this.f37468f;
        if (list == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(list);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        String str = this.f37465c;
        if (str != null) {
            sb2.append(str);
        }
        sb2.append("(");
        sb2.append(this.f37463a);
        sb2.append(")");
        if (this.f37467e != null) {
            sb2.append(" ");
            sb2.append(this.f37467e);
        }
        return sb2.toString();
    }
}
