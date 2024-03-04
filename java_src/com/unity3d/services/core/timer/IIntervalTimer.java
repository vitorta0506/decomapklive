package com.unity3d.services.core.timer;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public interface IIntervalTimer {
    void kill();

    void onNextInterval();

    void start(ScheduledExecutorService scheduledExecutorService);
}
