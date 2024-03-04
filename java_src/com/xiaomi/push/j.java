package com.xiaomi.push;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import org.light.utils.IOUtils;
/* loaded from: classes5.dex */
class j {

    /* renamed from: a  reason: collision with root package name */
    private String f36928a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<i> f36929b = new ArrayList<>();

    public j() {
    }

    public j(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the host is empty");
        }
        this.f36928a = str;
    }

    public synchronized i a() {
        for (int size = this.f36929b.size() - 1; size >= 0; size--) {
            i iVar = this.f36929b.get(size);
            if (iVar.p()) {
                m.c().l(iVar.b());
                return iVar;
            }
        }
        return null;
    }

    public synchronized j b(JSONObject jSONObject) {
        this.f36928a = jSONObject.getString("host");
        JSONArray jSONArray = jSONObject.getJSONArray("fbs");
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            this.f36929b.add(new i(this.f36928a).a(jSONArray.getJSONObject(i9)));
        }
        return this;
    }

    public String c() {
        return this.f36928a;
    }

    public ArrayList<i> d() {
        return this.f36929b;
    }

    public synchronized JSONObject e() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        jSONObject.put("host", this.f36928a);
        JSONArray jSONArray = new JSONArray();
        Iterator<i> it = this.f36929b.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().f());
        }
        jSONObject.put("fbs", jSONArray);
        return jSONObject;
    }

    public synchronized void f(i iVar) {
        int i9 = 0;
        while (true) {
            if (i9 >= this.f36929b.size()) {
                break;
            } else if (this.f36929b.get(i9).q(iVar)) {
                this.f36929b.set(i9, iVar);
                break;
            } else {
                i9++;
            }
        }
        if (i9 >= this.f36929b.size()) {
            this.f36929b.add(iVar);
        }
    }

    public synchronized void g(boolean z10) {
        ArrayList<i> arrayList;
        for (int size = this.f36929b.size() - 1; size >= 0; size--) {
            i iVar = this.f36929b.get(size);
            if (z10) {
                if (iVar.w()) {
                    arrayList = this.f36929b;
                    arrayList.remove(size);
                }
            } else if (!iVar.u()) {
                arrayList = this.f36929b;
                arrayList.remove(size);
            }
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f36928a);
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        Iterator<i> it = this.f36929b.iterator();
        while (it.hasNext()) {
            sb2.append(it.next());
        }
        return sb2.toString();
    }
}
