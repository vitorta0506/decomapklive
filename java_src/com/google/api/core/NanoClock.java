package com.google.api.core;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.concurrent.TimeUnit;
import k5.a;
/* loaded from: classes2.dex */
public final class NanoClock implements a, Serializable {
    private static final a DEFAULT_CLOCK = new NanoClock();
    private static final long serialVersionUID = 5541462688633944865L;

    private NanoClock() {
    }

    public static a getDefaultClock() {
        return DEFAULT_CLOCK;
    }

    private Object readResolve() throws ObjectStreamException {
        return DEFAULT_CLOCK;
    }

    @Override // k5.a
    public final long millisTime() {
        return TimeUnit.MILLISECONDS.convert(nanoTime(), TimeUnit.NANOSECONDS);
    }

    public final long nanoTime() {
        return System.nanoTime();
    }
}
