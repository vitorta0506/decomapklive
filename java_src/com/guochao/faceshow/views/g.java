package com.guochao.faceshow.views;

import android.os.Handler;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes4.dex */
public abstract class g {
    private boolean isRunning;
    private long mCountdownInterval;
    private long mCurrentTime;
    private Handler mHandler = new Handler();
    private long mMillisInFuture;
    private long mStopTime;
    Timer mTimer;
    TimerTask mTimerTask;

    /* loaded from: classes4.dex */
    class a extends TimerTask {

        /* renamed from: com.guochao.faceshow.views.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0270a implements Runnable {
            RunnableC0270a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.onFinish();
                g.this.isRunning = false;
            }
        }

        /* loaded from: classes4.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ long f27012a;

            b(long j10) {
                this.f27012a = j10;
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.onTick(this.f27012a);
                g.this.isRunning = true;
            }
        }

        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            long currentTimeMillis = g.this.mStopTime - System.currentTimeMillis();
            if (currentTimeMillis <= 0) {
                cancel();
                g.this.mHandler.post(new RunnableC0270a());
                return;
            }
            g.this.mHandler.post(new b(currentTimeMillis));
        }
    }

    public g(long j10, long j11) {
        this.mMillisInFuture = j10;
        this.mCountdownInterval = j11;
    }

    public void addTime(long j10) {
        this.mStopTime += j10;
        this.mMillisInFuture += j10;
    }

    public final void cancel() {
        this.isRunning = false;
        Timer timer = this.mTimer;
        if (timer != null) {
            timer.cancel();
        }
        TimerTask timerTask = this.mTimerTask;
        if (timerTask != null) {
            timerTask.cancel();
        }
    }

    public long getLeaveTime() {
        return this.mStopTime - System.currentTimeMillis();
    }

    public boolean isCancel() {
        return !this.isRunning;
    }

    public abstract void onFinish();

    public abstract void onTick(long j10);

    public final void setCountdownInterval(long j10) {
        this.mCountdownInterval = j10;
    }

    public final void setMillisInFuture(long j10) {
        this.mMillisInFuture = j10;
    }

    public final synchronized g start() {
        if (this.mMillisInFuture <= 0) {
            this.isRunning = false;
            onFinish();
            return this;
        }
        cancel();
        this.mTimer = new Timer();
        this.mTimerTask = new a();
        long currentTimeMillis = System.currentTimeMillis();
        this.mCurrentTime = currentTimeMillis;
        this.mStopTime = currentTimeMillis + this.mMillisInFuture;
        this.mTimer.schedule(this.mTimerTask, 0L, this.mCountdownInterval);
        return this;
    }
}
