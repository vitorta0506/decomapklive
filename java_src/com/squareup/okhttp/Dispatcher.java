package com.squareup.okhttp;

import com.squareup.okhttp.Call;
import com.squareup.okhttp.internal.i;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import qe.g;
/* loaded from: classes4.dex */
public final class Dispatcher {
    private ExecutorService executorService;
    private int maxRequests = 64;
    private int maxRequestsPerHost = 5;
    private final Deque<Call.AsyncCall> readyCalls = new ArrayDeque();
    private final Deque<Call.AsyncCall> runningCalls = new ArrayDeque();
    private final Deque<Call> executedCalls = new ArrayDeque();

    public Dispatcher(ExecutorService executorService) {
        this.executorService = executorService;
    }

    private void promoteCalls() {
        if (this.runningCalls.size() < this.maxRequests && !this.readyCalls.isEmpty()) {
            Iterator<Call.AsyncCall> it = this.readyCalls.iterator();
            while (it.hasNext()) {
                Call.AsyncCall next = it.next();
                if (runningCallsForHost(next) < this.maxRequestsPerHost) {
                    it.remove();
                    this.runningCalls.add(next);
                    getExecutorService().execute(next);
                }
                if (this.runningCalls.size() >= this.maxRequests) {
                    return;
                }
            }
        }
    }

    private int runningCallsForHost(Call.AsyncCall asyncCall) {
        int i9 = 0;
        for (Call.AsyncCall asyncCall2 : this.runningCalls) {
            if (asyncCall2.host().equals(asyncCall.host())) {
                i9++;
            }
        }
        return i9;
    }

    public synchronized void cancel(Object obj) {
        for (Call.AsyncCall asyncCall : this.readyCalls) {
            if (i.h(obj, asyncCall.tag())) {
                asyncCall.cancel();
            }
        }
        for (Call.AsyncCall asyncCall2 : this.runningCalls) {
            if (i.h(obj, asyncCall2.tag())) {
                asyncCall2.get().canceled = true;
                g gVar = asyncCall2.get().engine;
                if (gVar != null) {
                    gVar.e();
                }
            }
        }
        for (Call call : this.executedCalls) {
            if (i.h(obj, call.tag())) {
                call.cancel();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void enqueue(Call.AsyncCall asyncCall) {
        if (this.runningCalls.size() < this.maxRequests && runningCallsForHost(asyncCall) < this.maxRequestsPerHost) {
            this.runningCalls.add(asyncCall);
            getExecutorService().execute(asyncCall);
        } else {
            this.readyCalls.add(asyncCall);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void executed(Call call) {
        this.executedCalls.add(call);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void finished(Call.AsyncCall asyncCall) {
        if (this.runningCalls.remove(asyncCall)) {
            promoteCalls();
        } else {
            throw new AssertionError("AsyncCall wasn't running!");
        }
    }

    public synchronized ExecutorService getExecutorService() {
        if (this.executorService == null) {
            this.executorService = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), i.s("OkHttp Dispatcher", false));
        }
        return this.executorService;
    }

    public synchronized int getMaxRequests() {
        return this.maxRequests;
    }

    public synchronized int getMaxRequestsPerHost() {
        return this.maxRequestsPerHost;
    }

    public synchronized int getQueuedCallCount() {
        return this.readyCalls.size();
    }

    public synchronized int getRunningCallCount() {
        return this.runningCalls.size();
    }

    public synchronized void setMaxRequests(int i9) {
        if (i9 >= 1) {
            this.maxRequests = i9;
            promoteCalls();
        } else {
            throw new IllegalArgumentException("max < 1: " + i9);
        }
    }

    public synchronized void setMaxRequestsPerHost(int i9) {
        if (i9 >= 1) {
            this.maxRequestsPerHost = i9;
            promoteCalls();
        } else {
            throw new IllegalArgumentException("max < 1: " + i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void finished(Call call) {
        if (!this.executedCalls.remove(call)) {
            throw new AssertionError("Call wasn't in-flight!");
        }
    }

    public Dispatcher() {
    }
}
