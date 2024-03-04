package com.xiaomi.push;
/* loaded from: classes5.dex */
public class m3 implements o3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f36995a;

    /* renamed from: b  reason: collision with root package name */
    private final String f36996b;

    public m3(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        this.f36995a = str;
        this.f36996b = str2;
    }

    @Override // com.xiaomi.push.o3
    public String a() {
        return this.f36995a;
    }

    @Override // com.xiaomi.push.o3
    public String b() {
        return this.f36996b;
    }
}
