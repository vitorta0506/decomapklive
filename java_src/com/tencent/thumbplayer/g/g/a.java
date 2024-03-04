package com.tencent.thumbplayer.g.g;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private long f34097b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f34098c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f34099d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f34100e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f34102g;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Long> f34096a = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private String f34101f = "";

    public a(boolean z10) {
        this.f34102g = z10;
    }

    private final void c(boolean z10) {
        this.f34098c = z10;
        this.f34100e = true;
    }

    private final void d(boolean z10) {
        this.f34099d = z10;
    }

    public final void a() {
        this.f34101f = "";
        this.f34096a.clear();
        this.f34097b = System.currentTimeMillis();
    }

    public final void a(boolean z10) {
        d(z10);
        this.f34097b = System.currentTimeMillis();
    }

    public final void b() {
        this.f34096a.put("createCodec", Long.valueOf(System.currentTimeMillis() - this.f34097b));
    }

    public final void b(boolean z10) {
        c(z10);
        this.f34096a.put("configCodec", Long.valueOf(System.currentTimeMillis() - this.f34097b));
    }

    public final void c() {
        this.f34097b = System.currentTimeMillis();
    }

    public final void d() {
        this.f34096a.put("startCodec", Long.valueOf(System.currentTimeMillis() - this.f34097b));
    }

    @NonNull
    public final String e() {
        if (TextUtils.isEmpty(this.f34101f)) {
            StringBuilder sb2 = new StringBuilder("{");
            sb2.append("\"isVideo\":");
            sb2.append(this.f34102g + " ,");
            if (this.f34100e) {
                sb2.append("\"isReuse\":");
                sb2.append(this.f34098c + " ,");
            }
            sb2.append("\"reuseEnable\":");
            sb2.append(this.f34099d + " ,");
            long j10 = 0;
            for (Map.Entry<String, Long> entry : this.f34096a.entrySet()) {
                if (entry != null) {
                    j10 += entry.getValue().longValue();
                }
                sb2.append("\"" + ((Object) entry.getKey()) + "\":");
                sb2.append(entry.getValue().longValue() + " ,");
            }
            sb2.append("\"totalCodec\":");
            sb2.append(j10);
            sb2.append("}");
            this.f34101f = sb2.toString();
        }
        return this.f34101f;
    }
}
