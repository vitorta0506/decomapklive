package com.xiaomi.push;

import android.os.Bundle;
import java.util.Objects;
/* loaded from: classes5.dex */
public class cl extends r1 {

    /* renamed from: o  reason: collision with root package name */
    private b f36435o;

    /* renamed from: p  reason: collision with root package name */
    private String f36436p;

    /* renamed from: q  reason: collision with root package name */
    private int f36437q;

    /* renamed from: r  reason: collision with root package name */
    private a f36438r;

    /* loaded from: classes5.dex */
    public enum a {
        chat,
        available,
        away,
        xa,
        dnd
    }

    /* loaded from: classes5.dex */
    public enum b {
        available,
        unavailable,
        subscribe,
        subscribed,
        unsubscribe,
        unsubscribed,
        error,
        probe
    }

    public cl(Bundle bundle) {
        super(bundle);
        this.f36435o = b.available;
        this.f36436p = null;
        this.f36437q = Integer.MIN_VALUE;
        this.f36438r = null;
        if (bundle.containsKey("ext_pres_type")) {
            this.f36435o = b.valueOf(bundle.getString("ext_pres_type"));
        }
        if (bundle.containsKey("ext_pres_status")) {
            this.f36436p = bundle.getString("ext_pres_status");
        }
        if (bundle.containsKey("ext_pres_prio")) {
            this.f36437q = bundle.getInt("ext_pres_prio");
        }
        if (bundle.containsKey("ext_pres_mode")) {
            this.f36438r = a.valueOf(bundle.getString("ext_pres_mode"));
        }
    }

    public cl(b bVar) {
        this.f36435o = b.available;
        this.f36436p = null;
        this.f36437q = Integer.MIN_VALUE;
        this.f36438r = null;
        A(bVar);
    }

    public void A(b bVar) {
        Objects.requireNonNull(bVar, "Type cannot be null");
        this.f36435o = bVar;
    }

    public void B(String str) {
        this.f36436p = str;
    }

    @Override // com.xiaomi.push.r1
    public Bundle a() {
        Bundle a10 = super.a();
        b bVar = this.f36435o;
        if (bVar != null) {
            a10.putString("ext_pres_type", bVar.toString());
        }
        String str = this.f36436p;
        if (str != null) {
            a10.putString("ext_pres_status", str);
        }
        int i9 = this.f36437q;
        if (i9 != Integer.MIN_VALUE) {
            a10.putInt("ext_pres_prio", i9);
        }
        a aVar = this.f36438r;
        if (aVar != null && aVar != a.available) {
            a10.putString("ext_pres_mode", aVar.toString());
        }
        return a10;
    }

    @Override // com.xiaomi.push.r1
    public String f() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<presence");
        if (w() != null) {
            sb2.append(" xmlns=\"");
            sb2.append(w());
            sb2.append("\"");
        }
        if (l() != null) {
            sb2.append(" id=\"");
            sb2.append(l());
            sb2.append("\"");
        }
        if (o() != null) {
            sb2.append(" to=\"");
            sb2.append(b2.b(o()));
            sb2.append("\"");
        }
        if (q() != null) {
            sb2.append(" from=\"");
            sb2.append(b2.b(q()));
            sb2.append("\"");
        }
        if (m() != null) {
            sb2.append(" chid=\"");
            sb2.append(b2.b(m()));
            sb2.append("\"");
        }
        if (this.f36435o != null) {
            sb2.append(" type=\"");
            sb2.append(this.f36435o);
            sb2.append("\"");
        }
        sb2.append(">");
        if (this.f36436p != null) {
            sb2.append("<status>");
            sb2.append(b2.b(this.f36436p));
            sb2.append("</status>");
        }
        if (this.f36437q != Integer.MIN_VALUE) {
            sb2.append("<priority>");
            sb2.append(this.f36437q);
            sb2.append("</priority>");
        }
        a aVar = this.f36438r;
        if (aVar != null && aVar != a.available) {
            sb2.append("<show>");
            sb2.append(this.f36438r);
            sb2.append("</show>");
        }
        sb2.append(u());
        u1 d10 = d();
        if (d10 != null) {
            sb2.append(d10.b());
        }
        sb2.append("</presence>");
        return sb2.toString();
    }

    public void y(int i9) {
        if (i9 >= -128 && i9 <= 128) {
            this.f36437q = i9;
            return;
        }
        throw new IllegalArgumentException("Priority value " + i9 + " is not valid. Valid range is -128 through 128.");
    }

    public void z(a aVar) {
        this.f36438r = aVar;
    }
}
