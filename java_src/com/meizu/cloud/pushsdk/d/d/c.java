package com.meizu.cloud.pushsdk.d.d;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes4.dex */
public class c implements d {

    /* renamed from: a  reason: collision with root package name */
    private final int f28611a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicLong f28612b = new AtomicLong(0);

    /* renamed from: c  reason: collision with root package name */
    private final Map<Long, byte[]> f28613c = new ConcurrentHashMap();

    /* renamed from: d  reason: collision with root package name */
    private final List<Long> f28614d = new CopyOnWriteArrayList();

    public c(int i9) {
        this.f28611a = i9;
    }

    @Override // com.meizu.cloud.pushsdk.d.d.d
    public void a(com.meizu.cloud.pushsdk.d.a.a aVar) {
        b(aVar);
    }

    @Override // com.meizu.cloud.pushsdk.d.d.d
    public boolean a() {
        return true;
    }

    @Override // com.meizu.cloud.pushsdk.d.d.d
    public boolean a(long j10) {
        return this.f28614d.remove(Long.valueOf(j10)) && this.f28613c.remove(Long.valueOf(j10)) != null;
    }

    public long b(com.meizu.cloud.pushsdk.d.a.a aVar) {
        byte[] a10 = a.a(aVar.a());
        long andIncrement = this.f28612b.getAndIncrement();
        this.f28614d.add(Long.valueOf(andIncrement));
        this.f28613c.put(Long.valueOf(andIncrement), a10);
        return andIncrement;
    }

    @Override // com.meizu.cloud.pushsdk.d.d.d
    public long c() {
        return this.f28614d.size();
    }

    @Override // com.meizu.cloud.pushsdk.d.d.d
    public com.meizu.cloud.pushsdk.d.b.c d() {
        LinkedList linkedList = new LinkedList();
        ArrayList arrayList = new ArrayList();
        int c10 = (int) c();
        int i9 = this.f28611a;
        if (c10 > i9) {
            c10 = i9;
        }
        for (int i10 = 0; i10 < c10; i10++) {
            Long l10 = this.f28614d.get(i10);
            if (l10 != null) {
                com.meizu.cloud.pushsdk.d.a.c cVar = new com.meizu.cloud.pushsdk.d.a.c();
                cVar.a(a.a(this.f28613c.get(l10)));
                com.meizu.cloud.pushsdk.d.f.c.c("MemoryStore", " current key " + l10 + " payload " + cVar, new Object[0]);
                linkedList.add(l10);
                arrayList.add(cVar);
            }
        }
        return new com.meizu.cloud.pushsdk.d.b.c(arrayList, linkedList);
    }
}
