package com.huawei.hms.hatool;

import java.util.Calendar;
import java.util.UUID;
/* loaded from: classes4.dex */
public class f0 {

    /* renamed from: a  reason: collision with root package name */
    public long f27454a = 1800000;

    /* renamed from: b  reason: collision with root package name */
    public volatile boolean f27455b = false;

    /* renamed from: c  reason: collision with root package name */
    public a f27456c = null;

    /* loaded from: classes4.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public String f27457a = UUID.randomUUID().toString().replace("-", "");

        /* renamed from: b  reason: collision with root package name */
        public boolean f27458b = true;

        /* renamed from: c  reason: collision with root package name */
        public long f27459c;

        public a(long j10) {
            this.f27457a += "_" + j10;
            this.f27459c = j10;
            f0.this.f27455b = false;
        }

        public void a(long j10) {
            if (f0.this.f27455b) {
                f0.this.f27455b = false;
                b(j10);
            } else if (b(this.f27459c, j10) || a(this.f27459c, j10)) {
                b(j10);
            } else {
                this.f27459c = j10;
                this.f27458b = false;
            }
        }

        public final boolean a(long j10, long j11) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j10);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j11);
            return (calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6)) ? false : true;
        }

        public final void b(long j10) {
            y.c("hmsSdk", "getNewSession() session is flush!");
            String uuid = UUID.randomUUID().toString();
            this.f27457a = uuid;
            this.f27457a = uuid.replace("-", "");
            this.f27457a += "_" + j10;
            this.f27459c = j10;
            this.f27458b = true;
        }

        public final boolean b(long j10, long j11) {
            return j11 - j10 >= f0.this.f27454a;
        }
    }

    public String a() {
        a aVar = this.f27456c;
        if (aVar == null) {
            y.f("hmsSdk", "getSessionName(): session not prepared. onEvent() must be called first.");
            return "";
        }
        return aVar.f27457a;
    }

    public void a(long j10) {
        a aVar = this.f27456c;
        if (aVar != null) {
            aVar.a(j10);
            return;
        }
        y.c("hmsSdk", "Session is first flush");
        this.f27456c = new a(j10);
    }

    public boolean b() {
        a aVar = this.f27456c;
        if (aVar == null) {
            y.f("hmsSdk", "isFirstEvent(): session not prepared. onEvent() must be called first.");
            return false;
        }
        return aVar.f27458b;
    }
}
