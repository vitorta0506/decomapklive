package com.xiaomi.push;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class p1 extends r1 {

    /* renamed from: o  reason: collision with root package name */
    private a f37022o;

    /* renamed from: p  reason: collision with root package name */
    private final Map<String, String> f37023p;

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f37024b = new a("get");

        /* renamed from: c  reason: collision with root package name */
        public static final a f37025c = new a("set");

        /* renamed from: d  reason: collision with root package name */
        public static final a f37026d = new a("result");

        /* renamed from: e  reason: collision with root package name */
        public static final a f37027e = new a("error");

        /* renamed from: f  reason: collision with root package name */
        public static final a f37028f = new a("command");

        /* renamed from: a  reason: collision with root package name */
        private String f37029a;

        private a(String str) {
            this.f37029a = str;
        }

        public static a a(String str) {
            if (str == null) {
                return null;
            }
            String lowerCase = str.toLowerCase();
            a aVar = f37024b;
            if (aVar.toString().equals(lowerCase)) {
                return aVar;
            }
            a aVar2 = f37025c;
            if (aVar2.toString().equals(lowerCase)) {
                return aVar2;
            }
            a aVar3 = f37027e;
            if (aVar3.toString().equals(lowerCase)) {
                return aVar3;
            }
            a aVar4 = f37026d;
            if (aVar4.toString().equals(lowerCase)) {
                return aVar4;
            }
            a aVar5 = f37028f;
            if (aVar5.toString().equals(lowerCase)) {
                return aVar5;
            }
            return null;
        }

        public String toString() {
            return this.f37029a;
        }
    }

    public p1() {
        this.f37022o = a.f37024b;
        this.f37023p = new HashMap();
    }

    public p1(Bundle bundle) {
        super(bundle);
        this.f37022o = a.f37024b;
        this.f37023p = new HashMap();
        if (bundle.containsKey("ext_iq_type")) {
            this.f37022o = a.a(bundle.getString("ext_iq_type"));
        }
    }

    public synchronized void A(Map<String, String> map) {
        this.f37023p.putAll(map);
    }

    public String B() {
        return null;
    }

    @Override // com.xiaomi.push.r1
    public Bundle a() {
        Bundle a10 = super.a();
        a aVar = this.f37022o;
        if (aVar != null) {
            a10.putString("ext_iq_type", aVar.toString());
        }
        return a10;
    }

    @Override // com.xiaomi.push.r1
    public String f() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<iq ");
        if (l() != null) {
            sb2.append("id=\"" + l() + "\" ");
        }
        if (o() != null) {
            sb2.append("to=\"");
            sb2.append(b2.b(o()));
            sb2.append("\" ");
        }
        if (q() != null) {
            sb2.append("from=\"");
            sb2.append(b2.b(q()));
            sb2.append("\" ");
        }
        if (m() != null) {
            sb2.append("chid=\"");
            sb2.append(b2.b(m()));
            sb2.append("\" ");
        }
        for (Map.Entry<String, String> entry : this.f37023p.entrySet()) {
            sb2.append(b2.b(entry.getKey()));
            sb2.append("=\"");
            sb2.append(b2.b(entry.getValue()));
            sb2.append("\" ");
        }
        if (this.f37022o == null) {
            str = "type=\"get\">";
        } else {
            sb2.append("type=\"");
            sb2.append(y());
            str = "\">";
        }
        sb2.append(str);
        String B = B();
        if (B != null) {
            sb2.append(B);
        }
        sb2.append(u());
        u1 d10 = d();
        if (d10 != null) {
            sb2.append(d10.b());
        }
        sb2.append("</iq>");
        return sb2.toString();
    }

    public a y() {
        return this.f37022o;
    }

    public void z(a aVar) {
        if (aVar == null) {
            aVar = a.f37024b;
        }
        this.f37022o = aVar;
    }
}
