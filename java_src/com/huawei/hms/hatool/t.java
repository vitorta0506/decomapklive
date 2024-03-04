package com.huawei.hms.hatool;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* loaded from: classes4.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    public List<q> f27591a;

    /* renamed from: b  reason: collision with root package name */
    public String f27592b;

    /* renamed from: c  reason: collision with root package name */
    public String f27593c;

    /* renamed from: d  reason: collision with root package name */
    public String f27594d;

    public t(List<q> list, String str, String str2, String str3) {
        this.f27591a = list;
        this.f27592b = str;
        this.f27593c = str2;
        this.f27594d = str3;
    }

    public void a() {
        if (!"_default_config_tag".equals(this.f27593c)) {
            a(this.f27591a, this.f27593c, this.f27592b);
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (q qVar : this.f27591a) {
            String c10 = qVar.c();
            if (TextUtils.isEmpty(c10) || "oper".equals(c10)) {
                arrayList4.add(qVar);
            } else if ("maint".equals(c10)) {
                arrayList.add(qVar);
            } else if ("preins".equals(c10)) {
                arrayList2.add(qVar);
            } else if ("diffprivacy".equals(c10)) {
                arrayList3.add(qVar);
            }
        }
        a(arrayList4, "oper", "_default_config_tag");
        a(arrayList, "maint", "_default_config_tag");
        a(arrayList2, "preins", "_default_config_tag");
        a(arrayList3, "diffprivacy", "_default_config_tag");
    }

    public final void a(List<q> list, String str, String str2) {
        if (list.isEmpty()) {
            return;
        }
        int size = (list.size() / 500) + 1;
        for (int i9 = 0; i9 < size; i9++) {
            int i10 = i9 * 500;
            List<q> subList = list.subList(i10, Math.min(list.size(), i10 + 500));
            String replace = UUID.randomUUID().toString().replace("-", "");
            long currentTimeMillis = System.currentTimeMillis();
            long b10 = c.b(str2, str) * 86400000;
            ArrayList arrayList = new ArrayList();
            for (q qVar : subList) {
                if (!q0.a(qVar.b(), currentTimeMillis, b10)) {
                    arrayList.add(qVar);
                }
            }
            if (arrayList.size() > 0) {
                new u(str2, str, this.f27594d, arrayList, replace).a();
            } else {
                y.e("hmsSdk", "No data to report handler");
            }
        }
    }
}
