package com.huawei.hms.hatool;
/* loaded from: classes4.dex */
public class x {

    /* renamed from: b  reason: collision with root package name */
    public static x f27604b = new x();

    /* renamed from: a  reason: collision with root package name */
    public a f27605a = new a();

    /* loaded from: classes4.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public String f27606a;

        /* renamed from: b  reason: collision with root package name */
        public String f27607b;

        /* renamed from: c  reason: collision with root package name */
        public long f27608c = 0;

        public a() {
        }

        public void a(long j10) {
            x.this.f27605a.f27608c = j10;
        }

        public void a(String str) {
            x.this.f27605a.f27607b = str;
        }

        public void b(String str) {
            x.this.f27605a.f27606a = str;
        }
    }

    public static x d() {
        return f27604b;
    }

    public String a() {
        return this.f27605a.f27607b;
    }

    public void a(String str, String str2) {
        long b10 = b();
        String b11 = r0.b(str, str2);
        if (b11 == null || b11.isEmpty()) {
            y.e("WorkKeyHandler", "get rsa pubkey config error");
            return;
        }
        if (b10 == 0) {
            b10 = System.currentTimeMillis();
        } else if (System.currentTimeMillis() - b10 <= 43200000) {
            return;
        }
        String d10 = bc.b.d(16);
        String a10 = e.a(b11, d10);
        this.f27605a.a(b10);
        this.f27605a.b(d10);
        this.f27605a.a(a10);
    }

    public long b() {
        return this.f27605a.f27608c;
    }

    public String c() {
        return this.f27605a.f27606a;
    }
}
