package com.tencent.ugc;

import java.util.Deque;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes4.dex */
public class UGCFrameQueue<T> {
    private final Deque<T> mDeque = new LinkedList();
    private UGCFrameQueueListener mListener;

    /* loaded from: classes4.dex */
    public interface UGCFrameQueueListener {
        void onFrameDequeued();
    }

    private void notifyFrameBeenDequeued() {
        UGCFrameQueueListener uGCFrameQueueListener = this.mListener;
        if (uGCFrameQueueListener != null) {
            uGCFrameQueueListener.onFrameDequeued();
        }
    }

    public void clear() {
        synchronized (this.mDeque) {
            this.mDeque.clear();
        }
    }

    public T dequeue(long j10) {
        T pollFirst;
        synchronized (this.mDeque) {
            try {
                if (this.mDeque.isEmpty()) {
                    this.mDeque.wait(j10);
                }
                pollFirst = this.mDeque.pollFirst();
            } catch (InterruptedException unused) {
                return null;
            }
        }
        if (pollFirst != null) {
            notifyFrameBeenDequeued();
        }
        return pollFirst;
    }

    public List<T> dequeueAll() {
        LinkedList linkedList = new LinkedList();
        synchronized (this.mDeque) {
            while (!this.mDeque.isEmpty()) {
                linkedList.add(this.mDeque.pollFirst());
            }
        }
        return linkedList;
    }

    public T peekLast() {
        T peekLast;
        synchronized (this.mDeque) {
            peekLast = this.mDeque.peekLast();
        }
        return peekLast;
    }

    public void queue(T t10) {
        synchronized (this.mDeque) {
            this.mDeque.addLast(t10);
            this.mDeque.notify();
        }
    }

    public void setUGCFrameQueueListener(UGCFrameQueueListener uGCFrameQueueListener) {
        synchronized (this) {
            this.mListener = uGCFrameQueueListener;
        }
    }

    public int size() {
        int size;
        synchronized (this.mDeque) {
            size = this.mDeque.size();
        }
        return size;
    }

    public T dequeue() {
        return dequeue(0L);
    }
}
