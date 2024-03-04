package com.tencent.thumbplayer.api;

import android.util.SparseArray;
import com.tencent.thumbplayer.adapter.a.c;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes4.dex */
public class TPPlayerState {
    public static final int COMPLETE = 7;
    public static final int ERROR = 10;
    public static final int IDLE = 1;
    public static final int INDEX = 0;
    public static final int INITIALIZED = 2;
    private static final SparseArray<String> NS_STATES;
    public static final int PAUSE = 6;
    public static final int PREPARED = 4;
    public static final int PREPARING = 3;
    public static final int RELEASED = 11;
    public static final int START = 5;
    public static final int STOPPED = 9;
    public static final int STOPPING = 8;
    private c.k mStateChangeListener;
    private int mCurState = 1;
    private int mPreState = 1;
    private int mLastState = 1;
    private int mInnerPlayState = 1;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface STATE {
    }

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        NS_STATES = sparseArray;
        sparseArray.put(1, "IDLE");
        sparseArray.put(2, "INITIALIZED");
        sparseArray.put(3, "PREPARING");
        sparseArray.put(4, "PREPARED");
        sparseArray.put(5, "START");
        sparseArray.put(6, "PAUSE");
        sparseArray.put(7, "COMPLETE");
        sparseArray.put(8, "STOPPING");
        sparseArray.put(9, "STOPPED");
        sparseArray.put(10, "ERROR");
        sparseArray.put(11, "RELEASED");
    }

    public synchronized void changeState(int i9) {
        int i10 = this.mCurState;
        if (i10 != i9) {
            this.mPreState = i10;
            this.mCurState = i9;
            c.k kVar = this.mStateChangeListener;
            if (kVar != null) {
                kVar.b(i10, i9);
            }
        }
    }

    public synchronized int innerPlayState() {
        return this.mInnerPlayState;
    }

    public synchronized boolean is(int i9) {
        return this.mCurState == i9;
    }

    public synchronized int lastState() {
        return this.mLastState;
    }

    public synchronized int preState() {
        return this.mPreState;
    }

    public synchronized void setInnerPlayStateState(int i9) {
        if (this.mInnerPlayState != i9) {
            this.mInnerPlayState = i9;
        }
    }

    public synchronized void setLastState(int i9) {
        if (this.mLastState != i9) {
            this.mLastState = i9;
        }
    }

    public void setOnPlayerStateChangeListener(c.k kVar) {
        this.mStateChangeListener = kVar;
    }

    public synchronized int state() {
        return this.mCurState;
    }

    public synchronized String toString() {
        SparseArray<String> sparseArray;
        sparseArray = NS_STATES;
        return "state[ cur : " + sparseArray.get(this.mCurState) + " , pre : " + sparseArray.get(this.mPreState) + " , last : " + sparseArray.get(this.mLastState) + " , inner play : " + sparseArray.get(this.mInnerPlayState) + " ]";
    }
}
