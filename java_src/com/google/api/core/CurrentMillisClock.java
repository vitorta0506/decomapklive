package com.google.api.core;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.concurrent.TimeUnit;
import k5.a;
/* loaded from: classes2.dex */
public final class CurrentMillisClock implements a, Serializable {
    private static final a DEFAULT_CLOCK = new CurrentMillisClock();
    private static final long serialVersionUID = -6019259882852183285L;

    private CurrentMillisClock() {
    }

    public static a getDefaultClock() {
        return DEFAULT_CLOCK;
    }

    private Object readResolve() throws ObjectStreamException {
        return DEFAULT_CLOCK;
    }

    @Override // k5.a
    public long millisTime() {
        return System.currentTimeMillis();
    }

    public long nanoTime() {
        return TimeUnit.NANOSECONDS.convert(millisTime(), TimeUnit.MILLISECONDS);
    }
}
