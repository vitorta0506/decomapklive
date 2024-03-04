package cn.jpush.android.f;

import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private String f3070a;

    /* renamed from: b  reason: collision with root package name */
    private long f3071b;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f3072c;

    public d(String str, long j10, JSONObject jSONObject) {
        this.f3070a = str;
        this.f3071b = j10;
        this.f3072c = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c.a(this.f3070a, this.f3071b, this.f3072c);
    }
}
