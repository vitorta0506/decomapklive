package de;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public final class m implements eg.c<ScheduledExecutorService> {

    /* renamed from: a  reason: collision with root package name */
    private static final m f38081a = new m();

    public static eg.c<ScheduledExecutorService> a() {
        return f38081a;
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (ScheduledExecutorService) eg.d.b(Executors.newSingleThreadScheduledExecutor(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
