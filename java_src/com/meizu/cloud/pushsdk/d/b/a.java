package com.meizu.cloud.pushsdk.d.b;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.meizu.cloud.pushsdk.c.c.i;
import com.meizu.cloud.pushsdk.c.c.j;
import com.meizu.cloud.pushsdk.c.c.k;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f28517a;

    /* renamed from: b  reason: collision with root package name */
    protected final f f28518b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f28519c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f28520d;

    /* renamed from: e  reason: collision with root package name */
    protected final int f28521e;

    /* renamed from: f  reason: collision with root package name */
    protected final TimeUnit f28522f;

    /* renamed from: g  reason: collision with root package name */
    protected final AtomicBoolean f28523g;

    /* renamed from: h  reason: collision with root package name */
    private final String f28524h;

    /* renamed from: i  reason: collision with root package name */
    private final com.meizu.cloud.pushsdk.c.c.g f28525i;

    /* renamed from: j  reason: collision with root package name */
    private Uri.Builder f28526j;

    /* renamed from: k  reason: collision with root package name */
    private d f28527k;

    /* renamed from: l  reason: collision with root package name */
    private b f28528l;

    /* renamed from: m  reason: collision with root package name */
    private h f28529m;

    /* renamed from: n  reason: collision with root package name */
    private final SSLSocketFactory f28530n;

    /* renamed from: o  reason: collision with root package name */
    private final HostnameVerifier f28531o;

    /* renamed from: p  reason: collision with root package name */
    private String f28532p;

    /* renamed from: q  reason: collision with root package name */
    private final long f28533q;

    /* renamed from: r  reason: collision with root package name */
    private final long f28534r;

    /* renamed from: s  reason: collision with root package name */
    private final com.meizu.cloud.pushsdk.c.c.a f28535s;

    /* renamed from: com.meizu.cloud.pushsdk.d.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0281a {

        /* renamed from: a  reason: collision with root package name */
        protected final String f28539a;

        /* renamed from: b  reason: collision with root package name */
        protected final Context f28540b;

        /* renamed from: m  reason: collision with root package name */
        protected SSLSocketFactory f28551m;

        /* renamed from: n  reason: collision with root package name */
        protected HostnameVerifier f28552n;

        /* renamed from: c  reason: collision with root package name */
        protected f f28541c = null;

        /* renamed from: d  reason: collision with root package name */
        protected d f28542d = d.POST;

        /* renamed from: e  reason: collision with root package name */
        protected b f28543e = b.Single;

        /* renamed from: f  reason: collision with root package name */
        protected h f28544f = h.HTTPS;

        /* renamed from: g  reason: collision with root package name */
        protected int f28545g = 5;

        /* renamed from: h  reason: collision with root package name */
        protected int f28546h = 250;

        /* renamed from: i  reason: collision with root package name */
        protected int f28547i = 5;

        /* renamed from: j  reason: collision with root package name */
        protected long f28548j = 40000;

        /* renamed from: k  reason: collision with root package name */
        protected long f28549k = 40000;

        /* renamed from: l  reason: collision with root package name */
        protected TimeUnit f28550l = TimeUnit.SECONDS;

        /* renamed from: o  reason: collision with root package name */
        protected com.meizu.cloud.pushsdk.c.c.a f28553o = new com.meizu.cloud.pushsdk.c.c.e();

        public C0281a(String str, Context context, Class<? extends a> cls) {
            this.f28539a = str;
            this.f28540b = context;
        }

        public C0281a a(int i9) {
            this.f28545g = i9;
            return this;
        }

        public C0281a a(com.meizu.cloud.pushsdk.c.c.a aVar) {
            if (aVar != null) {
                this.f28553o = aVar;
                String simpleName = C0281a.class.getSimpleName();
                com.meizu.cloud.pushsdk.d.f.c.c(simpleName, "set new call " + aVar, new Object[0]);
            }
            return this;
        }

        public C0281a a(b bVar) {
            this.f28543e = bVar;
            return this;
        }

        public C0281a a(f fVar) {
            this.f28541c = fVar;
            return this;
        }

        public C0281a b(int i9) {
            this.f28546h = i9;
            return this;
        }

        public C0281a c(int i9) {
            this.f28547i = i9;
            return this;
        }
    }

    public a(C0281a c0281a) {
        String simpleName = a.class.getSimpleName();
        this.f28524h = simpleName;
        this.f28525i = com.meizu.cloud.pushsdk.c.c.g.a("application/json; charset=utf-8");
        this.f28523g = new AtomicBoolean(false);
        this.f28527k = c0281a.f28542d;
        this.f28518b = c0281a.f28541c;
        this.f28517a = c0281a.f28540b;
        this.f28528l = c0281a.f28543e;
        this.f28529m = c0281a.f28544f;
        this.f28530n = c0281a.f28551m;
        this.f28531o = c0281a.f28552n;
        this.f28519c = c0281a.f28545g;
        this.f28520d = c0281a.f28547i;
        this.f28521e = c0281a.f28546h;
        this.f28533q = c0281a.f28548j;
        this.f28534r = c0281a.f28549k;
        this.f28532p = c0281a.f28539a;
        this.f28522f = c0281a.f28550l;
        this.f28535s = c0281a.f28553o;
        c();
        com.meizu.cloud.pushsdk.d.f.c.c(simpleName, "Emitter created successfully!", new Object[0]);
    }

    private i a(com.meizu.cloud.pushsdk.d.a.a aVar) {
        a(aVar, "");
        this.f28526j.clearQuery();
        HashMap hashMap = (HashMap) aVar.a();
        for (String str : hashMap.keySet()) {
            this.f28526j.appendQueryParameter(str, (String) hashMap.get(str));
        }
        return new i.a().a(this.f28526j.build().toString()).a().c();
    }

    private i a(ArrayList<com.meizu.cloud.pushsdk.d.a.a> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator<com.meizu.cloud.pushsdk.d.a.a> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(it.next().a());
        }
        com.meizu.cloud.pushsdk.d.a.b bVar = new com.meizu.cloud.pushsdk.d.a.b("push_group_data", arrayList2);
        String str = this.f28524h;
        com.meizu.cloud.pushsdk.d.f.c.b(str, "final SelfDescribingJson " + bVar, new Object[0]);
        String uri = this.f28526j.build().toString();
        return new i.a().a(uri).a(j.a(this.f28525i, bVar.toString())).c();
    }

    private void a(k kVar) {
        if (kVar != null) {
            try {
                if (kVar.b() != null) {
                    kVar.b().close();
                }
            } catch (Exception unused) {
                com.meizu.cloud.pushsdk.d.f.c.b(this.f28524h, "Unable to close source data", new Object[0]);
            }
        }
    }

    private void a(com.meizu.cloud.pushsdk.d.a.a aVar, String str) {
        if ("".equals(str)) {
            str = com.meizu.cloud.pushsdk.d.f.e.a();
        }
        aVar.a("stm", str);
    }

    private void c() {
        StringBuilder sb2;
        String str;
        String str2 = this.f28524h;
        com.meizu.cloud.pushsdk.d.f.c.a(str2, "security " + this.f28529m, new Object[0]);
        if (this.f28529m == h.HTTP) {
            sb2 = new StringBuilder();
            str = "http://";
        } else {
            sb2 = new StringBuilder();
            str = "https://";
        }
        sb2.append(str);
        sb2.append(this.f28532p);
        this.f28526j = Uri.parse(sb2.toString()).buildUpon();
        if (this.f28527k == d.GET) {
            this.f28526j.appendPath(com.huawei.hms.opendevice.i.TAG);
        } else {
            this.f28526j.appendEncodedPath("push_data_report/mobile");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(i iVar) {
        k kVar = null;
        try {
            com.meizu.cloud.pushsdk.d.f.c.b(this.f28524h, "Sending request: %s", iVar);
            kVar = this.f28535s.a(iVar);
            return kVar.a();
        } catch (IOException e10) {
            com.meizu.cloud.pushsdk.d.f.c.a(this.f28524h, "Request sending failed: %s", Log.getStackTraceString(e10));
            return -1;
        } finally {
            a(kVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LinkedList<e> a(c cVar) {
        int size = cVar.a().size();
        LinkedList<Long> b10 = cVar.b();
        LinkedList<e> linkedList = new LinkedList<>();
        long j10 = 22;
        if (this.f28527k == d.GET) {
            for (int i9 = 0; i9 < size; i9++) {
                LinkedList linkedList2 = new LinkedList();
                linkedList2.add(b10.get(i9));
                com.meizu.cloud.pushsdk.d.a.a aVar = cVar.a().get(i9);
                linkedList.add(new e(aVar.b() + 22 > this.f28533q, a(aVar), linkedList2));
            }
        } else {
            int i10 = 0;
            while (i10 < size) {
                LinkedList linkedList3 = new LinkedList();
                ArrayList<com.meizu.cloud.pushsdk.d.a.a> arrayList = new ArrayList<>();
                long j11 = 0;
                int i11 = i10;
                while (i11 < this.f28528l.a() + i10 && i11 < size) {
                    com.meizu.cloud.pushsdk.d.a.a aVar2 = cVar.a().get(i11);
                    long b11 = aVar2.b() + j10;
                    if (b11 + 88 > this.f28534r) {
                        ArrayList<com.meizu.cloud.pushsdk.d.a.a> arrayList2 = new ArrayList<>();
                        LinkedList linkedList4 = new LinkedList();
                        arrayList2.add(aVar2);
                        linkedList4.add(b10.get(i11));
                        linkedList.add(new e(true, a(arrayList2), linkedList4));
                    } else {
                        j11 += b11;
                        if (j11 + 88 + (arrayList.size() - 1) > this.f28534r) {
                            linkedList.add(new e(false, a(arrayList), linkedList3));
                            ArrayList<com.meizu.cloud.pushsdk.d.a.a> arrayList3 = new ArrayList<>();
                            LinkedList linkedList5 = new LinkedList();
                            arrayList3.add(aVar2);
                            linkedList5.add(b10.get(i11));
                            arrayList = arrayList3;
                            linkedList3 = linkedList5;
                            j11 = b11;
                        } else {
                            arrayList.add(aVar2);
                            linkedList3.add(b10.get(i11));
                        }
                    }
                    i11++;
                    j10 = 22;
                }
                if (!arrayList.isEmpty()) {
                    linkedList.add(new e(false, a(arrayList), linkedList3));
                }
                i10 += this.f28528l.a();
                j10 = 22;
            }
        }
        return linkedList;
    }

    public abstract void a();

    public abstract void a(com.meizu.cloud.pushsdk.d.a.a aVar, boolean z10);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(int i9) {
        return i9 >= 200 && i9 < 300;
    }

    public String b() {
        return this.f28526j.clearQuery().build().toString();
    }
}
