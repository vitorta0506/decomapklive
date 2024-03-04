package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4.dex */
public class c extends a {

    /* renamed from: d  reason: collision with root package name */
    protected HashMap<String, byte[]> f30557d = null;

    /* renamed from: e  reason: collision with root package name */
    private HashMap<String, Object> f30558e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private i f30559f = new i();

    @Override // com.tencent.bugly.proguard.a
    public final /* bridge */ /* synthetic */ void a(String str) {
        super.a(str);
    }

    public final <T> T b(String str, T t10) throws b {
        HashMap<String, byte[]> hashMap = this.f30557d;
        if (hashMap != null) {
            if (hashMap.containsKey(str)) {
                if (this.f30558e.containsKey(str)) {
                    return (T) this.f30558e.get(str);
                }
                try {
                    this.f30559f.a(this.f30557d.get(str));
                    this.f30559f.a(this.f30434b);
                    T t11 = (T) this.f30559f.a((i) t10, 0, true);
                    if (t11 != null) {
                        this.f30558e.put(str, t11);
                    }
                    return t11;
                } catch (Exception e10) {
                    throw new b(e10);
                }
            }
            return null;
        } else if (this.f30433a.containsKey(str)) {
            if (this.f30558e.containsKey(str)) {
                return (T) this.f30558e.get(str);
            }
            byte[] bArr = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it = this.f30433a.get(str).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<String, byte[]> next = it.next();
                next.getKey();
                bArr = next.getValue();
            }
            try {
                this.f30559f.a(bArr);
                this.f30559f.a(this.f30434b);
                T t12 = (T) this.f30559f.a((i) t10, 0, true);
                this.f30558e.put(str, t12);
                return t12;
            } catch (Exception e11) {
                throw new b(e11);
            }
        } else {
            return null;
        }
    }

    public void c() {
        this.f30557d = new HashMap<>();
    }

    @Override // com.tencent.bugly.proguard.a
    public <T> void a(String str, T t10) {
        if (this.f30557d == null) {
            super.a(str, (String) t10);
        } else if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        } else {
            if (t10 != null) {
                if (!(t10 instanceof Set)) {
                    j jVar = new j();
                    jVar.a(this.f30434b);
                    jVar.a(t10, 0);
                    this.f30557d.put(str, l.a(jVar.a()));
                    return;
                }
                throw new IllegalArgumentException("can not support Set");
            }
            throw new IllegalArgumentException("put value can not is null");
        }
    }

    @Override // com.tencent.bugly.proguard.a
    public byte[] a() {
        if (this.f30557d != null) {
            j jVar = new j(0);
            jVar.a(this.f30434b);
            jVar.a((Map) this.f30557d, 0);
            return l.a(jVar.a());
        }
        return super.a();
    }

    @Override // com.tencent.bugly.proguard.a
    public void a(byte[] bArr) {
        try {
            super.a(bArr);
        } catch (Exception unused) {
            this.f30559f.a(bArr);
            this.f30559f.a(this.f30434b);
            HashMap hashMap = new HashMap(1);
            hashMap.put("", new byte[0]);
            this.f30557d = this.f30559f.a((Map) hashMap, 0, false);
        }
    }
}
