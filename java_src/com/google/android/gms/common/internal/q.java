package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class q {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static q f7769b;

    /* renamed from: c  reason: collision with root package name */
    private static final RootTelemetryConfiguration f7770c = new RootTelemetryConfiguration(0, false, false, 0, 0);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private RootTelemetryConfiguration f7771a;

    private q() {
    }

    @NonNull
    public static synchronized q b() {
        q qVar;
        synchronized (q.class) {
            if (f7769b == null) {
                f7769b = new q();
            }
            qVar = f7769b;
        }
        return qVar;
    }

    @Nullable
    public RootTelemetryConfiguration a() {
        return this.f7771a;
    }

    public final synchronized void c(@Nullable RootTelemetryConfiguration rootTelemetryConfiguration) {
        if (rootTelemetryConfiguration == null) {
            this.f7771a = f7770c;
            return;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration2 = this.f7771a;
        if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.getVersion() < rootTelemetryConfiguration.getVersion()) {
            this.f7771a = rootTelemetryConfiguration;
        }
    }
}
