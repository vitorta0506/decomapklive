package com.xiaomi.push;

import com.facebook.internal.security.CertificateUtil;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
class r implements Comparable<r> {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedList<h> f37054a;

    /* renamed from: b  reason: collision with root package name */
    String f37055b;

    /* renamed from: c  reason: collision with root package name */
    private long f37056c;

    /* renamed from: d  reason: collision with root package name */
    protected int f37057d;

    public r() {
        this(null, 0);
    }

    public r(String str) {
        this(str, 0);
    }

    public r(String str, int i9) {
        this.f37054a = new LinkedList<>();
        this.f37056c = 0L;
        this.f37055b = str;
        this.f37057d = i9;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(r rVar) {
        if (rVar == null) {
            return 1;
        }
        return rVar.f37057d - this.f37057d;
    }

    public synchronized r b(JSONObject jSONObject) {
        this.f37056c = jSONObject.getLong(PushConstants.PUSH_NOTIFICATION_CREATE_TIMES_TAMP);
        this.f37057d = jSONObject.getInt("wt");
        this.f37055b = jSONObject.getString("host");
        JSONArray jSONArray = jSONObject.getJSONArray("ah");
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            this.f37054a.add(new h().b(jSONArray.getJSONObject(i9)));
        }
        return this;
    }

    public synchronized JSONObject c() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        jSONObject.put(PushConstants.PUSH_NOTIFICATION_CREATE_TIMES_TAMP, this.f37056c);
        jSONObject.put("wt", this.f37057d);
        jSONObject.put("host", this.f37055b);
        JSONArray jSONArray = new JSONArray();
        Iterator<h> it = this.f37054a.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().c());
        }
        jSONObject.put("ah", jSONArray);
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void d(h hVar) {
        if (hVar != null) {
            this.f37054a.add(hVar);
            int a10 = hVar.a();
            if (a10 > 0) {
                this.f37057d += hVar.a();
            } else {
                int i9 = 0;
                for (int size = this.f37054a.size() - 1; size >= 0 && this.f37054a.get(size).a() < 0; size--) {
                    i9++;
                }
                this.f37057d += a10 * i9;
            }
            if (this.f37054a.size() > 30) {
                this.f37057d -= this.f37054a.remove().a();
            }
        }
    }

    public String toString() {
        return this.f37055b + CertificateUtil.DELIMITER + this.f37057d;
    }
}
