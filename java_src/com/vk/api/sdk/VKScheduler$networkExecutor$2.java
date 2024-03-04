package com.vk.api.sdk;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n"}, d2 = {"Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes4.dex */
final class VKScheduler$networkExecutor$2 extends Lambda implements Function0<ExecutorService> {
    public static final VKScheduler$networkExecutor$2 INSTANCE = new VKScheduler$networkExecutor$2();

    VKScheduler$networkExecutor$2() {
        super(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-0  reason: not valid java name */
    public static final Thread m835invoke$lambda0(Runnable runnable) {
        AtomicInteger atomicInteger;
        atomicInteger = VKScheduler.counter;
        return new Thread(runnable, Intrinsics.stringPlus("vk-api-network-thread-", Integer.valueOf(atomicInteger.getAndIncrement())));
    }

    @Override // kotlin.jvm.functions.Function0
    public final ExecutorService invoke() {
        return Executors.newFixedThreadPool(32, new ThreadFactory() { // from class: com.vk.api.sdk.f
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread m835invoke$lambda0;
                m835invoke$lambda0 = VKScheduler$networkExecutor$2.m835invoke$lambda0(runnable);
                return m835invoke$lambda0;
            }
        });
    }
}
