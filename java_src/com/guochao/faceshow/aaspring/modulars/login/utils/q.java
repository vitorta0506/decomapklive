package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.os.CountDownTimer;
import android.util.SparseArray;
/* loaded from: classes3.dex */
public class q {

    /* renamed from: e  reason: collision with root package name */
    private static q f20587e;

    /* renamed from: a  reason: collision with root package name */
    private b f20588a;

    /* renamed from: b  reason: collision with root package name */
    private CountDownTimer f20589b;

    /* renamed from: c  reason: collision with root package name */
    private SparseArray<Long> f20590c = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    private int f20591d = 60000;

    /* loaded from: classes3.dex */
    class a extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f20592a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(long j10, long j11, int i9) {
            super(j10, j11);
            this.f20592a = i9;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (q.this.f20588a != null) {
                q.this.f20588a.onFinish();
            }
            q.this.f20590c.put(this.f20592a, null);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            if (q.this.f20588a != null) {
                q.this.f20588a.N((int) (j10 / 1000));
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void N(int i9);

        void onFinish();
    }

    private q() {
        e();
    }

    private void c() {
        CountDownTimer countDownTimer = this.f20589b;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    public static q d() {
        q qVar;
        synchronized (q.class) {
            if (f20587e == null) {
                synchronized (q.class) {
                    f20587e = new q();
                }
            }
            qVar = f20587e;
        }
        return qVar;
    }

    private void e() {
    }

    public boolean f(int i9) {
        Long l10 = this.f20590c.get(i9);
        return (l10 == null || l10.longValue() == 0 || System.currentTimeMillis() - l10.longValue() >= ((long) this.f20591d)) ? false : true;
    }

    public void g(int i9) {
        long j10;
        c();
        Long l10 = this.f20590c.get(i9);
        if (l10 != null && l10.longValue() != 0) {
            j10 = this.f20591d - (System.currentTimeMillis() - l10.longValue());
        } else {
            j10 = this.f20591d;
            this.f20590c.put(i9, Long.valueOf(System.currentTimeMillis()));
        }
        a aVar = new a(j10, 1000L, i9);
        this.f20589b = aVar;
        aVar.start();
    }

    public void h() {
        c();
    }

    public void setOnCountDownListener(b bVar) {
        this.f20588a = bVar;
    }
}
