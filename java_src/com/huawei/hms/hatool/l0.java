package com.huawei.hms.hatool;

import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class l0 implements n0 {

    /* renamed from: a  reason: collision with root package name */
    public String f27539a;

    /* renamed from: b  reason: collision with root package name */
    public String f27540b;

    /* renamed from: c  reason: collision with root package name */
    public String f27541c;

    /* renamed from: d  reason: collision with root package name */
    public List<q> f27542d;

    public l0(List<q> list, String str, String str2, String str3) {
        this.f27539a = str;
        this.f27540b = str2;
        this.f27541c = str3;
        this.f27542d = list;
    }

    public final void a() {
        g0.a(b.i(), "backup_event", u0.a(this.f27539a, this.f27541c, this.f27540b));
    }

    @Override // java.lang.Runnable
    public void run() {
        List<q> list = this.f27542d;
        if (list == null || list.size() == 0) {
            y.d("hmsSdk", "failed events is empty");
            return;
        }
        if (q0.a(b.i(), "cached_v2_1", b.k() * 1048576)) {
            y.e("hmsSdk", "The cacheFile is full,Can not writing data! reqID:" + this.f27540b);
            return;
        }
        String a10 = u0.a(this.f27539a, this.f27541c);
        List<q> list2 = w.b(b.i(), "cached_v2_1", a10).get(a10);
        if (list2 != null && list2.size() != 0) {
            this.f27542d.addAll(list2);
        }
        JSONArray jSONArray = new JSONArray();
        for (q qVar : this.f27542d) {
            try {
                jSONArray.put(qVar.d());
            } catch (JSONException unused) {
                y.e("hmsSdk", "event to json error");
            }
        }
        String jSONArray2 = jSONArray.toString();
        if (jSONArray2.length() > b.h() * 1048576) {
            y.e("hmsSdk", "this failed data is too long,can not writing it");
            this.f27542d = null;
            return;
        }
        y.d("hmsSdk", "data send failed, write to cache file...reqID:" + this.f27540b);
        g0.b(b.i(), "cached_v2_1", a10, jSONArray2);
        a();
    }
}
