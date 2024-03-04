package cn.jpush.android.r;

import android.os.CountDownTimer;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private CountDownTimer f3193a;

    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    public void a() {
        CountDownTimer countDownTimer = this.f3193a;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f3193a = null;
        }
    }

    public void a(final a aVar, long j10, long j11) {
        this.f3193a = new CountDownTimer(j10, j11) { // from class: cn.jpush.android.r.b.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a();
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j12) {
            }
        }.start();
    }
}
