package org.light.service;
/* loaded from: classes7.dex */
public class SingleLock {
    public synchronized void acquire() throws InterruptedException {
        wait();
    }

    public synchronized void release() {
        notifyAll();
    }
}
