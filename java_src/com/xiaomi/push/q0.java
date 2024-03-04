package com.xiaomi.push;

import android.text.TextUtils;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.xiaomi.push.service.az;
import java.util.HashMap;
/* loaded from: classes5.dex */
class q0 {
    public static void a(az.b bVar, String str, c1 c1Var) {
        String b10;
        y yVar = new y();
        if (!TextUtils.isEmpty(bVar.f37143c)) {
            yVar.k(bVar.f37143c);
        }
        if (!TextUtils.isEmpty(bVar.f37146f)) {
            yVar.t(bVar.f37146f);
        }
        if (!TextUtils.isEmpty(bVar.f37147g)) {
            yVar.w(bVar.f37147g);
        }
        yVar.n(bVar.f37145e ? "1" : "0");
        if (TextUtils.isEmpty(bVar.f37144d)) {
            yVar.q("XIAOMI-SASL");
        } else {
            yVar.q(bVar.f37144d);
        }
        r0 r0Var = new r0();
        r0Var.u(bVar.f37142b);
        r0Var.g(Integer.parseInt(bVar.f37148h));
        r0Var.r(bVar.f37141a);
        r0Var.j("BIND", null);
        r0Var.i(r0Var.w());
        tf.c.l("[Slim]: bind id=" + r0Var.w());
        HashMap hashMap = new HashMap();
        hashMap.put("challenge", str);
        hashMap.put(JThirdPlatFormInterface.KEY_TOKEN, bVar.f37143c);
        hashMap.put("chid", bVar.f37148h);
        hashMap.put("from", bVar.f37142b);
        hashMap.put("id", r0Var.w());
        hashMap.put("to", "xiaomi.com");
        if (bVar.f37145e) {
            hashMap.put("kick", "1");
        } else {
            hashMap.put("kick", "0");
        }
        if (TextUtils.isEmpty(bVar.f37146f)) {
            hashMap.put("client_attrs", "");
        } else {
            hashMap.put("client_attrs", bVar.f37146f);
        }
        if (TextUtils.isEmpty(bVar.f37147g)) {
            hashMap.put("cloud_attrs", "");
        } else {
            hashMap.put("cloud_attrs", bVar.f37147g);
        }
        if (bVar.f37144d.equals("XIAOMI-PASS") || bVar.f37144d.equals("XMPUSH-PASS")) {
            b10 = e.b(bVar.f37144d, null, hashMap, bVar.f37149i);
        } else {
            bVar.f37144d.equals("XIAOMI-SASL");
            b10 = null;
        }
        yVar.z(b10);
        r0Var.l(yVar.h(), null);
        c1Var.t(r0Var);
    }

    public static void b(String str, String str2, c1 c1Var) {
        r0 r0Var = new r0();
        r0Var.u(str2);
        r0Var.g(Integer.parseInt(str));
        r0Var.j("UBND", null);
        c1Var.t(r0Var);
    }
}
