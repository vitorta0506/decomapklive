package com.tencent.bugly.proguard;

import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class f extends k {

    /* renamed from: e  reason: collision with root package name */
    public byte[] f30571e;

    /* renamed from: i  reason: collision with root package name */
    private Map<String, String> f30575i;

    /* renamed from: j  reason: collision with root package name */
    private Map<String, String> f30576j;

    /* renamed from: m  reason: collision with root package name */
    private static /* synthetic */ boolean f30566m = true;

    /* renamed from: k  reason: collision with root package name */
    private static byte[] f30564k = null;

    /* renamed from: l  reason: collision with root package name */
    private static Map<String, String> f30565l = null;

    /* renamed from: a  reason: collision with root package name */
    public short f30567a = 0;

    /* renamed from: f  reason: collision with root package name */
    private byte f30572f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f30573g = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f30568b = 0;

    /* renamed from: c  reason: collision with root package name */
    public String f30569c = null;

    /* renamed from: d  reason: collision with root package name */
    public String f30570d = null;

    /* renamed from: h  reason: collision with root package name */
    private int f30574h = 0;

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f30567a, 1);
        jVar.a(this.f30572f, 2);
        jVar.a(this.f30573g, 3);
        jVar.a(this.f30568b, 4);
        jVar.a(this.f30569c, 5);
        jVar.a(this.f30570d, 6);
        jVar.a(this.f30571e, 7);
        jVar.a(this.f30574h, 8);
        jVar.a((Map) this.f30575i, 9);
        jVar.a((Map) this.f30576j, 10);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (f30566m) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        f fVar = (f) obj;
        return l.a(1, (int) fVar.f30567a) && l.a(1, (int) fVar.f30572f) && l.a(1, fVar.f30573g) && l.a(1, fVar.f30568b) && l.a((Object) 1, (Object) fVar.f30569c) && l.a((Object) 1, (Object) fVar.f30570d) && l.a((Object) 1, (Object) fVar.f30571e) && l.a(1, fVar.f30574h) && l.a((Object) 1, (Object) fVar.f30575i) && l.a((Object) 1, (Object) fVar.f30576j);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        try {
            this.f30567a = iVar.a(this.f30567a, 1, true);
            this.f30572f = iVar.a(this.f30572f, 2, true);
            this.f30573g = iVar.a(this.f30573g, 3, true);
            this.f30568b = iVar.a(this.f30568b, 4, true);
            this.f30569c = iVar.b(5, true);
            this.f30570d = iVar.b(6, true);
            if (f30564k == null) {
                f30564k = new byte[]{0};
            }
            this.f30571e = iVar.c(7, true);
            this.f30574h = iVar.a(this.f30574h, 8, true);
            if (f30565l == null) {
                HashMap hashMap = new HashMap();
                f30565l = hashMap;
                hashMap.put("", "");
            }
            this.f30575i = (Map) iVar.a((i) f30565l, 9, true);
            if (f30565l == null) {
                HashMap hashMap2 = new HashMap();
                f30565l = hashMap2;
                hashMap2.put("", "");
            }
            this.f30576j = (Map) iVar.a((i) f30565l, 10, true);
        } catch (Exception e10) {
            e10.printStackTrace();
            PrintStream printStream = System.out;
            printStream.println("RequestPacket decode error " + e.a(this.f30571e));
            throw new RuntimeException(e10);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb2, int i9) {
        h hVar = new h(sb2, i9);
        hVar.a(this.f30567a, "iVersion");
        hVar.a(this.f30572f, "cPacketType");
        hVar.a(this.f30573g, "iMessageType");
        hVar.a(this.f30568b, "iRequestId");
        hVar.a(this.f30569c, "sServantName");
        hVar.a(this.f30570d, "sFuncName");
        hVar.a(this.f30571e, "sBuffer");
        hVar.a(this.f30574h, "iTimeout");
        hVar.a((Map) this.f30575i, "context");
        hVar.a((Map) this.f30576j, "status");
    }
}
