package com.squareup.okhttp;

import com.squareup.okhttp.internal.d;
import com.squareup.okhttp.internal.h;
import com.squareup.okhttp.internal.i;
import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import qe.o;
import re.a;
/* loaded from: classes4.dex */
public final class ConnectionPool {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long DEFAULT_KEEP_ALIVE_DURATION_MS = 300000;
    private static final ConnectionPool systemDefault;
    private Runnable cleanupRunnable;
    private final Deque<a> connections;
    private final Executor executor;
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;
    final h routeDatabase;

    static {
        String property = System.getProperty("http.keepAlive");
        String property2 = System.getProperty("http.keepAliveDuration");
        String property3 = System.getProperty("http.maxConnections");
        long parseLong = property2 != null ? Long.parseLong(property2) : DEFAULT_KEEP_ALIVE_DURATION_MS;
        if (property != null && !Boolean.parseBoolean(property)) {
            systemDefault = new ConnectionPool(0, parseLong);
        } else if (property3 != null) {
            systemDefault = new ConnectionPool(Integer.parseInt(property3), parseLong);
        } else {
            systemDefault = new ConnectionPool(5, parseLong);
        }
    }

    public ConnectionPool(int i9, long j10) {
        this(i9, j10, TimeUnit.MILLISECONDS);
    }

    public static ConnectionPool getDefault() {
        return systemDefault;
    }

    private int pruneAndGetAllocationCount(a aVar, long j10) {
        List<Reference<o>> list = aVar.f57464j;
        int i9 = 0;
        while (i9 < list.size()) {
            if (list.get(i9).get() != null) {
                i9++;
            } else {
                Logger logger = d.logger;
                logger.warning("A connection to " + aVar.getRoute().getAddress().url() + " was leaked. Did you forget to close a response body?");
                list.remove(i9);
                aVar.f57465k = true;
                if (list.isEmpty()) {
                    aVar.f57466l = j10 - this.keepAliveDurationNs;
                    return 0;
                }
            }
        }
        return list.size();
    }

    long cleanup(long j10) {
        synchronized (this) {
            int i9 = 0;
            long j11 = Long.MIN_VALUE;
            a aVar = null;
            int i10 = 0;
            for (a aVar2 : this.connections) {
                if (pruneAndGetAllocationCount(aVar2, j10) > 0) {
                    i10++;
                } else {
                    i9++;
                    long j12 = j10 - aVar2.f57466l;
                    if (j12 > j11) {
                        aVar = aVar2;
                        j11 = j12;
                    }
                }
            }
            long j13 = this.keepAliveDurationNs;
            if (j11 < j13 && i9 <= this.maxIdleConnections) {
                if (i9 > 0) {
                    return j13 - j11;
                } else if (i10 > 0) {
                    return j13;
                } else {
                    return -1L;
                }
            }
            this.connections.remove(aVar);
            i.d(aVar.getSocket());
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean connectionBecameIdle(a aVar) {
        if (!aVar.f57465k && this.maxIdleConnections != 0) {
            notifyAll();
            return false;
        }
        this.connections.remove(aVar);
        return true;
    }

    public void evictAll() {
        ArrayList<a> arrayList = new ArrayList();
        synchronized (this) {
            Iterator<a> it = this.connections.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.f57464j.isEmpty()) {
                    next.f57465k = true;
                    arrayList.add(next);
                    it.remove();
                }
            }
        }
        for (a aVar : arrayList) {
            i.d(aVar.getSocket());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a get(Address address, o oVar) {
        for (a aVar : this.connections) {
            if (aVar.f57464j.size() < aVar.a() && address.equals(aVar.getRoute().address) && !aVar.f57465k) {
                oVar.a(aVar);
                return aVar;
            }
        }
        return null;
    }

    public synchronized int getConnectionCount() {
        return this.connections.size();
    }

    public synchronized int getHttpConnectionCount() {
        return this.connections.size() - getMultiplexedConnectionCount();
    }

    public synchronized int getIdleConnectionCount() {
        int i9;
        i9 = 0;
        for (a aVar : this.connections) {
            if (aVar.f57464j.isEmpty()) {
                i9++;
            }
        }
        return i9;
    }

    public synchronized int getMultiplexedConnectionCount() {
        int i9;
        i9 = 0;
        for (a aVar : this.connections) {
            if (aVar.i()) {
                i9++;
            }
        }
        return i9;
    }

    @Deprecated
    public synchronized int getSpdyConnectionCount() {
        return getMultiplexedConnectionCount();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void put(a aVar) {
        if (this.connections.isEmpty()) {
            this.executor.execute(this.cleanupRunnable);
        }
        this.connections.add(aVar);
    }

    void setCleanupRunnableForTest(Runnable runnable) {
        this.cleanupRunnable = runnable;
    }

    public ConnectionPool(int i9, long j10, TimeUnit timeUnit) {
        this.executor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), i.s("OkHttp ConnectionPool", true));
        this.cleanupRunnable = new Runnable() { // from class: com.squareup.okhttp.ConnectionPool.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long cleanup = ConnectionPool.this.cleanup(System.nanoTime());
                    if (cleanup == -1) {
                        return;
                    }
                    if (cleanup > 0) {
                        long j11 = cleanup / 1000000;
                        long j12 = cleanup - (1000000 * j11);
                        synchronized (ConnectionPool.this) {
                            try {
                                ConnectionPool.this.wait(j11, (int) j12);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
            }
        };
        this.connections = new ArrayDeque();
        this.routeDatabase = new h();
        this.maxIdleConnections = i9;
        this.keepAliveDurationNs = timeUnit.toNanos(j10);
        if (j10 > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j10);
    }
}
