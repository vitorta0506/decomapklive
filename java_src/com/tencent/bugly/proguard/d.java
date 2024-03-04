package com.tencent.bugly.proguard;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class d extends c {

    /* renamed from: f  reason: collision with root package name */
    private static HashMap<String, byte[]> f30560f;

    /* renamed from: g  reason: collision with root package name */
    private static HashMap<String, HashMap<String, byte[]>> f30561g;

    /* renamed from: e  reason: collision with root package name */
    private f f30562e;

    public d() {
        f fVar = new f();
        this.f30562e = fVar;
        fVar.f30567a = (short) 2;
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final <T> void a(String str, T t10) {
        if (!str.startsWith(".")) {
            super.a(str, (String) t10);
            return;
        }
        throw new IllegalArgumentException("put name can not startwith . , now is " + str);
    }

    public final void b(String str) {
        this.f30562e.f30569c = str;
    }

    @Override // com.tencent.bugly.proguard.c
    public final void c() {
        super.c();
        this.f30562e.f30567a = (short) 3;
    }

    public final void c(String str) {
        this.f30562e.f30570d = str;
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final byte[] a() {
        f fVar = this.f30562e;
        if (fVar.f30567a == 2) {
            if (!fVar.f30569c.equals("")) {
                if (this.f30562e.f30570d.equals("")) {
                    throw new IllegalArgumentException("funcName can not is null");
                }
            } else {
                throw new IllegalArgumentException("servantName can not is null");
            }
        } else {
            if (fVar.f30569c == null) {
                fVar.f30569c = "";
            }
            if (fVar.f30570d == null) {
                fVar.f30570d = "";
            }
        }
        j jVar = new j(0);
        jVar.a(this.f30434b);
        if (this.f30562e.f30567a == 2) {
            jVar.a((Map) this.f30433a, 0);
        } else {
            jVar.a((Map) ((c) this).f30557d, 0);
        }
        this.f30562e.f30571e = l.a(jVar.a());
        j jVar2 = new j(0);
        jVar2.a(this.f30434b);
        this.f30562e.a(jVar2);
        byte[] a10 = l.a(jVar2.a());
        int length = a10.length + 4;
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length).put(a10).flip();
        return allocate.array();
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final void a(byte[] bArr) {
        if (bArr.length >= 4) {
            try {
                i iVar = new i(bArr, 4);
                iVar.a(this.f30434b);
                this.f30562e.a(iVar);
                f fVar = this.f30562e;
                if (fVar.f30567a == 3) {
                    i iVar2 = new i(fVar.f30571e);
                    iVar2.a(this.f30434b);
                    if (f30560f == null) {
                        HashMap<String, byte[]> hashMap = new HashMap<>();
                        f30560f = hashMap;
                        hashMap.put("", new byte[0]);
                    }
                    ((c) this).f30557d = iVar2.a((Map) f30560f, 0, false);
                    return;
                }
                i iVar3 = new i(fVar.f30571e);
                iVar3.a(this.f30434b);
                if (f30561g == null) {
                    f30561g = new HashMap<>();
                    HashMap<String, byte[]> hashMap2 = new HashMap<>();
                    hashMap2.put("", new byte[0]);
                    f30561g.put("", hashMap2);
                }
                this.f30433a = iVar3.a((Map) f30561g, 0, false);
                new HashMap();
                return;
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
        throw new IllegalArgumentException("decode package must include size head");
    }

    public final void a(int i9) {
        this.f30562e.f30568b = 1;
    }
}
