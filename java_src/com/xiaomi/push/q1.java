package com.xiaomi.push;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes5.dex */
public class q1 extends r1 {
    private boolean A;

    /* renamed from: o  reason: collision with root package name */
    private String f37038o;

    /* renamed from: p  reason: collision with root package name */
    private String f37039p;

    /* renamed from: q  reason: collision with root package name */
    private String f37040q;

    /* renamed from: r  reason: collision with root package name */
    private String f37041r;

    /* renamed from: s  reason: collision with root package name */
    private String f37042s;

    /* renamed from: t  reason: collision with root package name */
    private String f37043t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f37044u;

    /* renamed from: v  reason: collision with root package name */
    private String f37045v;

    /* renamed from: w  reason: collision with root package name */
    private String f37046w;

    /* renamed from: x  reason: collision with root package name */
    private String f37047x;

    /* renamed from: y  reason: collision with root package name */
    private String f37048y;

    /* renamed from: z  reason: collision with root package name */
    private String f37049z;

    public q1() {
        this.f37038o = null;
        this.f37039p = null;
        this.f37044u = false;
        this.f37046w = "";
        this.f37047x = "";
        this.f37048y = "";
        this.f37049z = "";
        this.A = false;
    }

    public q1(Bundle bundle) {
        super(bundle);
        this.f37038o = null;
        this.f37039p = null;
        this.f37044u = false;
        this.f37046w = "";
        this.f37047x = "";
        this.f37048y = "";
        this.f37049z = "";
        this.A = false;
        this.f37038o = bundle.getString("ext_msg_type");
        this.f37040q = bundle.getString("ext_msg_lang");
        this.f37039p = bundle.getString("ext_msg_thread");
        this.f37041r = bundle.getString("ext_msg_sub");
        this.f37042s = bundle.getString("ext_msg_body");
        this.f37043t = bundle.getString("ext_body_encode");
        this.f37045v = bundle.getString("ext_msg_appid");
        this.f37044u = bundle.getBoolean("ext_msg_trans", false);
        this.A = bundle.getBoolean("ext_msg_encrypt", false);
        this.f37046w = bundle.getString("ext_msg_seq");
        this.f37047x = bundle.getString("ext_msg_mseq");
        this.f37048y = bundle.getString("ext_msg_fseq");
        this.f37049z = bundle.getString("ext_msg_status");
    }

    public void A(boolean z10) {
        this.f37044u = z10;
    }

    public String B() {
        return this.f37038o;
    }

    public void C(String str) {
        this.f37046w = str;
    }

    public void D(boolean z10) {
        this.A = z10;
    }

    public String E() {
        return this.f37045v;
    }

    public void F(String str) {
        this.f37047x = str;
    }

    public String G() {
        return this.f37046w;
    }

    public void H(String str) {
        this.f37048y = str;
    }

    public String I() {
        return this.f37047x;
    }

    public void J(String str) {
        this.f37049z = str;
    }

    public String K() {
        return this.f37048y;
    }

    public void L(String str) {
        this.f37038o = str;
    }

    public String M() {
        return this.f37049z;
    }

    public void N(String str) {
        this.f37041r = str;
    }

    public String O() {
        return this.f37040q;
    }

    public void P(String str) {
        this.f37042s = str;
    }

    public void Q(String str) {
        this.f37039p = str;
    }

    public void R(String str) {
        this.f37040q = str;
    }

    @Override // com.xiaomi.push.r1
    public Bundle a() {
        Bundle a10 = super.a();
        if (!TextUtils.isEmpty(this.f37038o)) {
            a10.putString("ext_msg_type", this.f37038o);
        }
        String str = this.f37040q;
        if (str != null) {
            a10.putString("ext_msg_lang", str);
        }
        String str2 = this.f37041r;
        if (str2 != null) {
            a10.putString("ext_msg_sub", str2);
        }
        String str3 = this.f37042s;
        if (str3 != null) {
            a10.putString("ext_msg_body", str3);
        }
        if (!TextUtils.isEmpty(this.f37043t)) {
            a10.putString("ext_body_encode", this.f37043t);
        }
        String str4 = this.f37039p;
        if (str4 != null) {
            a10.putString("ext_msg_thread", str4);
        }
        String str5 = this.f37045v;
        if (str5 != null) {
            a10.putString("ext_msg_appid", str5);
        }
        if (this.f37044u) {
            a10.putBoolean("ext_msg_trans", true);
        }
        if (!TextUtils.isEmpty(this.f37046w)) {
            a10.putString("ext_msg_seq", this.f37046w);
        }
        if (!TextUtils.isEmpty(this.f37047x)) {
            a10.putString("ext_msg_mseq", this.f37047x);
        }
        if (!TextUtils.isEmpty(this.f37048y)) {
            a10.putString("ext_msg_fseq", this.f37048y);
        }
        if (this.A) {
            a10.putBoolean("ext_msg_encrypt", true);
        }
        if (!TextUtils.isEmpty(this.f37049z)) {
            a10.putString("ext_msg_status", this.f37049z);
        }
        return a10;
    }

    @Override // com.xiaomi.push.r1
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q1 q1Var = (q1) obj;
        if (super.equals(q1Var)) {
            String str = this.f37042s;
            if (str == null ? q1Var.f37042s == null : str.equals(q1Var.f37042s)) {
                String str2 = this.f37040q;
                if (str2 == null ? q1Var.f37040q == null : str2.equals(q1Var.f37040q)) {
                    String str3 = this.f37041r;
                    if (str3 == null ? q1Var.f37041r == null : str3.equals(q1Var.f37041r)) {
                        String str4 = this.f37039p;
                        if (str4 == null ? q1Var.f37039p == null : str4.equals(q1Var.f37039p)) {
                            return this.f37038o == q1Var.f37038o;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.xiaomi.push.r1
    public String f() {
        u1 d10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<message");
        if (w() != null) {
            sb2.append(" xmlns=\"");
            sb2.append(w());
            sb2.append("\"");
        }
        if (this.f37040q != null) {
            sb2.append(" xml:lang=\"");
            sb2.append(O());
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
        if (!TextUtils.isEmpty(G())) {
            sb2.append(" seq=\"");
            sb2.append(G());
            sb2.append("\"");
        }
        if (!TextUtils.isEmpty(I())) {
            sb2.append(" mseq=\"");
            sb2.append(I());
            sb2.append("\"");
        }
        if (!TextUtils.isEmpty(K())) {
            sb2.append(" fseq=\"");
            sb2.append(K());
            sb2.append("\"");
        }
        if (!TextUtils.isEmpty(M())) {
            sb2.append(" status=\"");
            sb2.append(M());
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
        if (this.f37044u) {
            sb2.append(" transient=\"true\"");
        }
        if (!TextUtils.isEmpty(this.f37045v)) {
            sb2.append(" appid=\"");
            sb2.append(E());
            sb2.append("\"");
        }
        if (!TextUtils.isEmpty(this.f37038o)) {
            sb2.append(" type=\"");
            sb2.append(this.f37038o);
            sb2.append("\"");
        }
        if (this.A) {
            sb2.append(" s=\"1\"");
        }
        sb2.append(">");
        if (this.f37041r != null) {
            sb2.append("<subject>");
            sb2.append(b2.b(this.f37041r));
            sb2.append("</subject>");
        }
        if (this.f37042s != null) {
            sb2.append("<body");
            if (!TextUtils.isEmpty(this.f37043t)) {
                sb2.append(" encode=\"");
                sb2.append(this.f37043t);
                sb2.append("\"");
            }
            sb2.append(">");
            sb2.append(b2.b(this.f37042s));
            sb2.append("</body>");
        }
        if (this.f37039p != null) {
            sb2.append("<thread>");
            sb2.append(this.f37039p);
            sb2.append("</thread>");
        }
        if ("error".equalsIgnoreCase(this.f37038o) && (d10 = d()) != null) {
            sb2.append(d10.b());
        }
        sb2.append(u());
        sb2.append("</message>");
        return sb2.toString();
    }

    @Override // com.xiaomi.push.r1
    public int hashCode() {
        String str = this.f37038o;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f37042s;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f37039p;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f37040q;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f37041r;
        return hashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public void y(String str) {
        this.f37045v = str;
    }

    public void z(String str, String str2) {
        this.f37042s = str;
        this.f37043t = str2;
    }
}
