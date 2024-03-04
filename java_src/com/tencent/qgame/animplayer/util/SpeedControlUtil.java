package com.tencent.qgame.animplayer.util;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;", "", "()V", "ONE_MILLION", "", "fixedFrameDurationUsec", "loopReset", "", "prevMonoUsec", "prevPresentUsec", "preRender", "", "presentationTimeUsec", "reset", "setFixedPlaybackRate", "fps", "", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class SpeedControlUtil {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.SpeedControlUtil";
    private long fixedFrameDurationUsec;
    private long prevMonoUsec;
    private long prevPresentUsec;
    private final long ONE_MILLION = 1000000;
    private boolean loopReset = true;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/util/SpeedControlUtil$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void preRender(long j10) {
        long j11 = this.prevMonoUsec;
        long j12 = 0;
        if (j11 == 0) {
            this.prevMonoUsec = System.nanoTime() / 1000;
            this.prevPresentUsec = j10;
            return;
        }
        if (this.loopReset) {
            this.prevPresentUsec = j10 - (this.ONE_MILLION / 30);
            this.loopReset = false;
        }
        long j13 = this.fixedFrameDurationUsec;
        if (j13 == 0) {
            j13 = j10 - this.prevPresentUsec;
        }
        if (j13 >= 0) {
            long j14 = this.ONE_MILLION;
            j12 = j13 > ((long) 10) * j14 ? j14 * 5 : j13;
        }
        long j15 = j11 + j12;
        long nanoTime = System.nanoTime();
        long j16 = 1000;
        while (true) {
            long j17 = nanoTime / j16;
            if (j17 < j15 - 100) {
                long j18 = j15 - j17;
                if (j18 > 500000) {
                    j18 = 500000;
                }
                try {
                    Thread.sleep(j18 / j16, ((int) (j18 % j16)) * 1000);
                } catch (InterruptedException e10) {
                    ALog.INSTANCE.e(TAG, "e=" + e10, e10);
                }
                nanoTime = System.nanoTime();
            } else {
                this.prevMonoUsec += j12;
                this.prevPresentUsec += j12;
                return;
            }
        }
    }

    public final void reset() {
        this.prevPresentUsec = 0L;
        this.prevMonoUsec = 0L;
    }

    public final void setFixedPlaybackRate(int i9) {
        if (i9 <= 0) {
            return;
        }
        this.fixedFrameDurationUsec = this.ONE_MILLION / i9;
    }
}
