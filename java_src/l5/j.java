package l5;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public final class j implements h {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f54208a;

    private j(ScheduledExecutorService scheduledExecutorService) {
        this.f54208a = scheduledExecutorService;
    }

    public static j c(ScheduledExecutorService scheduledExecutorService) {
        return new j(scheduledExecutorService);
    }

    @Override // l5.h
    public boolean a() {
        return false;
    }

    @Override // l5.h
    public ScheduledExecutorService b() {
        return this.f54208a;
    }
}
