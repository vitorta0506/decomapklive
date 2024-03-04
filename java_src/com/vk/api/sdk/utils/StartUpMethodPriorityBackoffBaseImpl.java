package com.vk.api.sdk.utils;

import com.vk.api.sdk.utils.log.Logger;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB)\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u000bH\u0016J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0012H\u0002J\u0018\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0004H\u0016J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0004H\u0016J\u0014\u0010\u001c\u001a\u00020\u0012*\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0004H\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/vk/api/sdk/utils/StartUpMethodPriorityBackoffBaseImpl;", "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "startUpPriorityMethods", "", "", "exceptionMethods", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "(Ljava/util/Collection;Ljava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;)V", "locks", "", "", "Ljava/util/concurrent/locks/Condition;", "operationsLock", "Ljava/util/concurrent/locks/ReentrantLock;", "startUpMethodsQueue", "Ljava/util/concurrent/CopyOnWriteArrayList;", "clear", "", "isActive", "", "newId", "notifyAwaiters", "methodName", "notifyLocks", "processMethod", "clientId", "shouldWait", "debug", "msg", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class StartUpMethodPriorityBackoffBaseImpl implements ApiMethodPriorityBackoff {
    public static final long METHOD_WAIT_TIMEOUT = 500;
    @NotNull
    private final Collection<String> exceptionMethods;
    @NotNull
    private final Map<Integer, Condition> locks;
    @NotNull
    private final Logger logger;
    @NotNull
    private final ReentrantLock operationsLock;
    @NotNull
    private final CopyOnWriteArrayList<String> startUpMethodsQueue;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final AtomicInteger idGenerator = new AtomicInteger();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/utils/StartUpMethodPriorityBackoffBaseImpl$Companion;", "", "()V", "METHOD_WAIT_TIMEOUT", "", "idGenerator", "Ljava/util/concurrent/atomic/AtomicInteger;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public StartUpMethodPriorityBackoffBaseImpl(@NotNull Collection<String> startUpPriorityMethods, @NotNull Collection<String> exceptionMethods, @NotNull Logger logger) {
        Intrinsics.checkNotNullParameter(startUpPriorityMethods, "startUpPriorityMethods");
        Intrinsics.checkNotNullParameter(exceptionMethods, "exceptionMethods");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.exceptionMethods = exceptionMethods;
        this.logger = logger;
        this.locks = new LinkedHashMap();
        this.operationsLock = new ReentrantLock();
        CopyOnWriteArrayList<String> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        copyOnWriteArrayList.addAll(startUpPriorityMethods);
        Unit unit = Unit.INSTANCE;
        this.startUpMethodsQueue = copyOnWriteArrayList;
    }

    private final void debug(Logger logger, String str) {
        Logger.DefaultImpls.log$default(this.logger, Logger.LogLevel.DEBUG, Intrinsics.stringPlus("StartUpMethodPriorityBackoffBaseImpl:", str), null, 4, null);
    }

    private final void notifyAwaiters(String str) {
        debug(this.logger, Intrinsics.stringPlus("notifyMethodCall:", str));
        if (this.startUpMethodsQueue.isEmpty()) {
            notifyLocks();
        } else if (this.startUpMethodsQueue.contains(str)) {
            this.startUpMethodsQueue.remove(str);
            debug(this.logger, Intrinsics.stringPlus("remove method from name ", str));
            notifyLocks();
        }
    }

    private final void notifyLocks() {
        for (Condition condition : this.locks.values()) {
            condition.signalAll();
        }
    }

    @Override // com.vk.api.sdk.utils.ApiMethodPriorityBackoff
    public void clear() {
        ReentrantLock reentrantLock = this.operationsLock;
        reentrantLock.lock();
        try {
            debug(this.logger, "clear startup method queue");
            this.startUpMethodsQueue.clear();
            notifyLocks();
            this.locks.clear();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // com.vk.api.sdk.utils.ApiMethodPriorityBackoff
    public boolean isActive() {
        return !this.startUpMethodsQueue.isEmpty();
    }

    @Override // com.vk.api.sdk.utils.ApiMethodPriorityBackoff
    public int newId() {
        int incrementAndGet = idGenerator.incrementAndGet();
        ReentrantLock reentrantLock = this.operationsLock;
        reentrantLock.lock();
        try {
            Map<Integer, Condition> map = this.locks;
            Integer valueOf = Integer.valueOf(incrementAndGet);
            Condition newCondition = this.operationsLock.newCondition();
            Intrinsics.checkNotNullExpressionValue(newCondition, "operationsLock.newCondition()");
            map.put(valueOf, newCondition);
            Unit unit = Unit.INSTANCE;
            return incrementAndGet;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // com.vk.api.sdk.utils.ApiMethodPriorityBackoff
    public void processMethod(int i9, @NotNull String methodName) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        ReentrantLock reentrantLock = this.operationsLock;
        reentrantLock.lock();
        try {
            Condition condition = this.locks.get(Integer.valueOf(i9));
            if (condition == null) {
                return;
            }
            if (shouldWait(methodName)) {
                Logger logger = this.logger;
                debug(logger, "should wait for " + methodName + " queue.size:" + this.startUpMethodsQueue.size());
                condition.await(500L, TimeUnit.MILLISECONDS);
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // com.vk.api.sdk.utils.ApiMethodPriorityBackoff
    public boolean shouldWait(@NotNull String methodName) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        ReentrantLock reentrantLock = this.operationsLock;
        reentrantLock.lock();
        try {
            boolean z10 = false;
            if (this.exceptionMethods.contains(methodName)) {
                notifyAwaiters(methodName);
                return false;
            }
            if ((!this.startUpMethodsQueue.isEmpty()) && !this.startUpMethodsQueue.contains(methodName)) {
                z10 = true;
            }
            if (!z10) {
                notifyAwaiters(methodName);
            }
            return z10;
        } finally {
            reentrantLock.unlock();
        }
    }
}
