package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NavigableSet;
import java.util.Set;
import java.util.Timer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes.dex */
public final class AFc1mSDK implements Runnable {
    final ExecutorService AFInAppEventType;
    public Executor valueOf = Executors.newSingleThreadExecutor();
    private Timer afRDLog = new Timer(true);
    public final List<AFc1oSDK> AFInAppEventParameterName = new CopyOnWriteArrayList();
    final Set<AFc1lSDK> values = new CopyOnWriteArraySet();
    final Set<AFc1lSDK> AFKeystoreWrapper = Collections.newSetFromMap(new ConcurrentHashMap());
    final NavigableSet<AFc1nSDK<?>> afDebugLog = new ConcurrentSkipListSet();
    final NavigableSet<AFc1nSDK<?>> afInfoLog = new ConcurrentSkipListSet();
    final List<AFc1nSDK<?>> afErrorLog = new ArrayList();
    final Set<AFc1nSDK<?>> AFLogger = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: com.appsflyer.internal.AFc1mSDK$5  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass5 implements Runnable {
        private /* synthetic */ AFc1nSDK AFKeystoreWrapper;

        public AnonymousClass5(AFc1nSDK aFc1nSDK) {
            this.AFKeystoreWrapper = aFc1nSDK;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean add;
            synchronized (AFc1mSDK.this.afDebugLog) {
                if (AFc1mSDK.this.AFLogger.contains(this.AFKeystoreWrapper)) {
                    StringBuilder sb2 = new StringBuilder("QUEUE: tried to add already running task: ");
                    sb2.append(this.AFKeystoreWrapper);
                    AFLogger.afDebugLog(sb2.toString());
                    return;
                }
                if (!AFc1mSDK.this.afDebugLog.contains(this.AFKeystoreWrapper) && !AFc1mSDK.this.afInfoLog.contains(this.AFKeystoreWrapper)) {
                    AFc1mSDK.valueOf(AFc1mSDK.this, this.AFKeystoreWrapper);
                    if (AFc1mSDK.this.values(this.AFKeystoreWrapper)) {
                        add = AFc1mSDK.this.afDebugLog.add(this.AFKeystoreWrapper);
                    } else {
                        add = AFc1mSDK.this.afInfoLog.add(this.AFKeystoreWrapper);
                        if (add) {
                            StringBuilder sb3 = new StringBuilder("QUEUE: new task was blocked: ");
                            sb3.append(this.AFKeystoreWrapper);
                            AFLogger.afDebugLog(sb3.toString());
                            this.AFKeystoreWrapper.valueOf();
                        }
                    }
                    if (add) {
                        AFc1mSDK aFc1mSDK = AFc1mSDK.this;
                        aFc1mSDK.afDebugLog.addAll(aFc1mSDK.afErrorLog);
                        AFc1mSDK.this.afErrorLog.clear();
                    } else {
                        StringBuilder sb4 = new StringBuilder("QUEUE: task not added, it's already in the queue: ");
                        sb4.append(this.AFKeystoreWrapper);
                        AFLogger.afDebugLog(sb4.toString());
                    }
                    if (add) {
                        AFc1mSDK.this.AFKeystoreWrapper.add(this.AFKeystoreWrapper.AFInAppEventParameterName);
                        StringBuilder sb5 = new StringBuilder("QUEUE: new task added: ");
                        sb5.append(this.AFKeystoreWrapper);
                        AFLogger.afDebugLog(sb5.toString());
                        Iterator<AFc1oSDK> it = AFc1mSDK.this.AFInAppEventParameterName.iterator();
                        while (it.hasNext()) {
                            it.next();
                        }
                        AFc1mSDK aFc1mSDK2 = AFc1mSDK.this;
                        aFc1mSDK2.AFInAppEventType.submit(aFc1mSDK2);
                        AFc1mSDK.AFInAppEventType(AFc1mSDK.this);
                        return;
                    }
                    StringBuilder sb6 = new StringBuilder("QUEUE: tried to add already pending task: ");
                    sb6.append(this.AFKeystoreWrapper);
                    AFLogger.afWarnLog(sb6.toString());
                    return;
                }
                StringBuilder sb7 = new StringBuilder("QUEUE: tried to add already scheduled task: ");
                sb7.append(this.AFKeystoreWrapper);
                AFLogger.afDebugLog(sb7.toString());
            }
        }
    }

    public AFc1mSDK(ExecutorService executorService) {
        this.AFInAppEventType = executorService;
    }

    private void AFInAppEventType(NavigableSet<AFc1nSDK<?>> navigableSet) {
        AFc1nSDK<?> pollFirst = navigableSet.pollFirst();
        this.values.add(pollFirst.AFInAppEventParameterName);
        for (AFc1oSDK aFc1oSDK : this.AFInAppEventParameterName) {
            aFc1oSDK.AFKeystoreWrapper(pollFirst);
        }
    }

    static /* synthetic */ void valueOf(AFc1mSDK aFc1mSDK, AFc1nSDK aFc1nSDK) {
        for (AFc1lSDK aFc1lSDK : aFc1nSDK.valueOf) {
            if (aFc1mSDK.AFKeystoreWrapper.contains(aFc1lSDK)) {
                aFc1nSDK.AFKeystoreWrapper.add(aFc1lSDK);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean values(AFc1nSDK<?> aFc1nSDK) {
        return this.values.containsAll(aFc1nSDK.AFKeystoreWrapper);
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.afDebugLog) {
            final AFc1nSDK<?> pollFirst = this.afDebugLog.pollFirst();
            if (pollFirst == null) {
                return;
            }
            this.AFLogger.add(pollFirst);
            long values = pollFirst.values();
            AFc1iSDK aFc1iSDK = new AFc1iSDK(Thread.currentThread());
            if (values > 0) {
                this.afRDLog.schedule(aFc1iSDK, values);
            }
            this.valueOf.execute(new Runnable() { // from class: com.appsflyer.internal.AFc1mSDK.3
                @Override // java.lang.Runnable
                public final void run() {
                    for (AFc1oSDK aFc1oSDK : AFc1mSDK.this.AFInAppEventParameterName) {
                        aFc1oSDK.AFInAppEventParameterName(pollFirst);
                    }
                }
            });
            if (!this.afDebugLog.isEmpty()) {
                this.AFInAppEventType.submit(this);
            }
            try {
                AFLogger.afDebugLog("QUEUE: starting task execution: ".concat(String.valueOf(pollFirst)));
                final AFc1qSDK call = pollFirst.call();
                aFc1iSDK.cancel();
                this.valueOf.execute(new Runnable() { // from class: com.appsflyer.internal.AFc1mSDK.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        StringBuilder sb2 = new StringBuilder("QUEUE: execution finished for ");
                        sb2.append(pollFirst);
                        sb2.append(", result: ");
                        sb2.append(call);
                        AFLogger.afDebugLog(sb2.toString());
                        AFc1mSDK.this.AFLogger.remove(pollFirst);
                        for (AFc1oSDK aFc1oSDK : AFc1mSDK.this.AFInAppEventParameterName) {
                            aFc1oSDK.valueOf(pollFirst, call);
                        }
                        if (call == AFc1qSDK.SUCCESS) {
                            AFc1mSDK.this.values.add(pollFirst.AFInAppEventParameterName);
                            AFc1mSDK.AFKeystoreWrapper(AFc1mSDK.this);
                        } else if (pollFirst.AFInAppEventType()) {
                            synchronized (AFc1mSDK.this.afDebugLog) {
                                AFc1mSDK.this.afErrorLog.add(pollFirst);
                                Iterator<AFc1oSDK> it = AFc1mSDK.this.AFInAppEventParameterName.iterator();
                                while (it.hasNext()) {
                                    it.next();
                                }
                            }
                        } else {
                            AFc1mSDK.this.values.add(pollFirst.AFInAppEventParameterName);
                            AFc1mSDK.AFKeystoreWrapper(AFc1mSDK.this);
                        }
                    }
                });
            } catch (InterruptedIOException | InterruptedException unused) {
                AFLogger.afDebugLog("QUEUE: task was interrupted: ".concat(String.valueOf(pollFirst)));
                final AFc1qSDK aFc1qSDK = AFc1qSDK.TIMEOUT;
                pollFirst.values = aFc1qSDK;
                this.valueOf.execute(new Runnable() { // from class: com.appsflyer.internal.AFc1mSDK.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        StringBuilder sb2 = new StringBuilder("QUEUE: execution finished for ");
                        sb2.append(pollFirst);
                        sb2.append(", result: ");
                        sb2.append(aFc1qSDK);
                        AFLogger.afDebugLog(sb2.toString());
                        AFc1mSDK.this.AFLogger.remove(pollFirst);
                        for (AFc1oSDK aFc1oSDK : AFc1mSDK.this.AFInAppEventParameterName) {
                            aFc1oSDK.valueOf(pollFirst, aFc1qSDK);
                        }
                        if (aFc1qSDK == AFc1qSDK.SUCCESS) {
                            AFc1mSDK.this.values.add(pollFirst.AFInAppEventParameterName);
                            AFc1mSDK.AFKeystoreWrapper(AFc1mSDK.this);
                        } else if (pollFirst.AFInAppEventType()) {
                            synchronized (AFc1mSDK.this.afDebugLog) {
                                AFc1mSDK.this.afErrorLog.add(pollFirst);
                                Iterator<AFc1oSDK> it = AFc1mSDK.this.AFInAppEventParameterName.iterator();
                                while (it.hasNext()) {
                                    it.next();
                                }
                            }
                        } else {
                            AFc1mSDK.this.values.add(pollFirst.AFInAppEventParameterName);
                            AFc1mSDK.AFKeystoreWrapper(AFc1mSDK.this);
                        }
                    }
                });
            } catch (Throwable unused2) {
                aFc1iSDK.cancel();
                final AFc1qSDK aFc1qSDK2 = AFc1qSDK.FAILURE;
                this.valueOf.execute(new Runnable() { // from class: com.appsflyer.internal.AFc1mSDK.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        StringBuilder sb2 = new StringBuilder("QUEUE: execution finished for ");
                        sb2.append(pollFirst);
                        sb2.append(", result: ");
                        sb2.append(aFc1qSDK2);
                        AFLogger.afDebugLog(sb2.toString());
                        AFc1mSDK.this.AFLogger.remove(pollFirst);
                        for (AFc1oSDK aFc1oSDK : AFc1mSDK.this.AFInAppEventParameterName) {
                            aFc1oSDK.valueOf(pollFirst, aFc1qSDK2);
                        }
                        if (aFc1qSDK2 == AFc1qSDK.SUCCESS) {
                            AFc1mSDK.this.values.add(pollFirst.AFInAppEventParameterName);
                            AFc1mSDK.AFKeystoreWrapper(AFc1mSDK.this);
                        } else if (pollFirst.AFInAppEventType()) {
                            synchronized (AFc1mSDK.this.afDebugLog) {
                                AFc1mSDK.this.afErrorLog.add(pollFirst);
                                Iterator<AFc1oSDK> it = AFc1mSDK.this.AFInAppEventParameterName.iterator();
                                while (it.hasNext()) {
                                    it.next();
                                }
                            }
                        } else {
                            AFc1mSDK.this.values.add(pollFirst.AFInAppEventParameterName);
                            AFc1mSDK.AFKeystoreWrapper(AFc1mSDK.this);
                        }
                    }
                });
            }
        }
    }

    static /* synthetic */ void AFKeystoreWrapper(AFc1mSDK aFc1mSDK) {
        synchronized (aFc1mSDK.afDebugLog) {
            Iterator<AFc1nSDK<?>> it = aFc1mSDK.afInfoLog.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                AFc1nSDK<?> next = it.next();
                if (aFc1mSDK.values(next)) {
                    it.remove();
                    aFc1mSDK.afDebugLog.add(next);
                    z10 = true;
                }
            }
            if (z10) {
                aFc1mSDK.AFInAppEventType.submit(aFc1mSDK);
            }
        }
    }

    static /* synthetic */ void AFInAppEventType(AFc1mSDK aFc1mSDK) {
        synchronized (aFc1mSDK.afDebugLog) {
            for (int size = (aFc1mSDK.afDebugLog.size() + aFc1mSDK.afInfoLog.size()) - 40; size > 0; size--) {
                boolean z10 = !aFc1mSDK.afInfoLog.isEmpty();
                boolean isEmpty = true ^ aFc1mSDK.afDebugLog.isEmpty();
                if (isEmpty && z10) {
                    if (aFc1mSDK.afDebugLog.first().compareTo(aFc1mSDK.afInfoLog.first()) > 0) {
                        aFc1mSDK.AFInAppEventType(aFc1mSDK.afDebugLog);
                    } else {
                        aFc1mSDK.AFInAppEventType(aFc1mSDK.afInfoLog);
                    }
                } else if (isEmpty) {
                    aFc1mSDK.AFInAppEventType(aFc1mSDK.afDebugLog);
                } else if (z10) {
                    aFc1mSDK.AFInAppEventType(aFc1mSDK.afInfoLog);
                }
            }
        }
    }
}
