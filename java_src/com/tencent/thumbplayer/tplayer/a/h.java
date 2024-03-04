package com.tencent.thumbplayer.tplayer.a;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Integer, String> f34293a;

    /* renamed from: b  reason: collision with root package name */
    private int f34294b = 1;

    static {
        HashMap hashMap = new HashMap();
        f34293a = hashMap;
        hashMap.put(1, "IDLE");
        hashMap.put(2, "PREPARING");
        hashMap.put(3, "PREPARED");
    }

    public synchronized void a(int i9) {
        this.f34294b = i9;
    }

    public synchronized boolean b(int i9) {
        return this.f34294b == i9;
    }

    public synchronized String toString() {
        return "state[ cur : " + f34293a.get(Integer.valueOf(this.f34294b)) + " ]";
    }
}
