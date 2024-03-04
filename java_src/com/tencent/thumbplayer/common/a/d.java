package com.tencent.thumbplayer.common.a;

import com.facebook.devicerequests.internal.DeviceRequestsHelper;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private b f33874a = new b();

    /* renamed from: b  reason: collision with root package name */
    private a f33875b = new a();

    /* renamed from: c  reason: collision with root package name */
    private e f33876c = new e();

    /* renamed from: d  reason: collision with root package name */
    private c f33877d = new c();

    /* renamed from: e  reason: collision with root package name */
    private C0344d f33878e = new C0344d();

    /* loaded from: classes4.dex */
    class a {

        /* renamed from: a  reason: collision with root package name */
        public int f33879a;

        /* renamed from: b  reason: collision with root package name */
        public int f33880b;

        public a() {
            a();
        }

        public void a() {
            this.f33879a = -1;
            this.f33880b = -1;
        }

        public void a(com.tencent.thumbplayer.common.a.a aVar) {
            aVar.a("av1hwdecoderprofile", this.f33879a);
            aVar.a("av1hwdecoderlevel", this.f33880b);
        }
    }

    /* loaded from: classes4.dex */
    class b {

        /* renamed from: a  reason: collision with root package name */
        public String f33882a;

        /* renamed from: b  reason: collision with root package name */
        public int f33883b;

        /* renamed from: c  reason: collision with root package name */
        public int f33884c;

        /* renamed from: d  reason: collision with root package name */
        public String f33885d;

        /* renamed from: e  reason: collision with root package name */
        public String f33886e;

        /* renamed from: f  reason: collision with root package name */
        public String f33887f;

        /* renamed from: g  reason: collision with root package name */
        public String f33888g;

        public b() {
            a();
        }

        public void a() {
            this.f33882a = "";
            this.f33883b = -1;
            this.f33884c = -1;
            this.f33885d = "";
            this.f33886e = "";
            this.f33887f = "";
            this.f33888g = "";
        }

        public void a(com.tencent.thumbplayer.common.a.a aVar) {
            aVar.a("flowid", this.f33882a);
            aVar.a("appplatform", this.f33883b);
            aVar.a("apilevel", this.f33884c);
            aVar.a("osver", this.f33885d);
            aVar.a(DeviceRequestsHelper.DEVICE_INFO_MODEL, this.f33886e);
            aVar.a("serialno", this.f33887f);
            aVar.a("cpuname", this.f33888g);
        }
    }

    /* loaded from: classes4.dex */
    class c {

        /* renamed from: a  reason: collision with root package name */
        public int f33890a;

        /* renamed from: b  reason: collision with root package name */
        public int f33891b;

        public c() {
            a();
        }

        public void a() {
            this.f33890a = -1;
            this.f33891b = -1;
        }

        public void a(com.tencent.thumbplayer.common.a.a aVar) {
            aVar.a("hevchwdecoderprofile", this.f33890a);
            aVar.a("hevchwdecoderlevel", this.f33891b);
        }
    }

    /* renamed from: com.tencent.thumbplayer.common.a.d$d  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0344d {

        /* renamed from: a  reason: collision with root package name */
        public int f33893a;

        /* renamed from: b  reason: collision with root package name */
        public int f33894b;

        public C0344d() {
            a();
        }

        public void a() {
            this.f33893a = -1;
            this.f33894b = -1;
        }

        public void a(com.tencent.thumbplayer.common.a.a aVar) {
            aVar.a("vp8hwdecoderprofile", this.f33893a);
            aVar.a("vp8hwdecoderlevel", this.f33894b);
        }
    }

    /* loaded from: classes4.dex */
    class e {

        /* renamed from: a  reason: collision with root package name */
        public int f33896a;

        /* renamed from: b  reason: collision with root package name */
        public int f33897b;

        public e() {
            a();
        }

        public void a() {
            this.f33896a = -1;
            this.f33897b = -1;
        }

        public void a(com.tencent.thumbplayer.common.a.a aVar) {
            aVar.a("vp9hwdecoderprofile", this.f33896a);
            aVar.a("vp9hwdecoderlevel", this.f33897b);
        }
    }

    public b a() {
        return this.f33874a;
    }

    public a b() {
        return this.f33875b;
    }

    public e c() {
        return this.f33876c;
    }

    public C0344d d() {
        return this.f33878e;
    }

    public c e() {
        return this.f33877d;
    }
}
