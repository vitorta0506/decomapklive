package com.tencent.liteav.videobase.utils;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import java.util.ArrayList;
import java.util.Deque;
import java.util.LinkedList;
/* loaded from: classes4.dex */
public final class j implements h {

    /* renamed from: a  reason: collision with root package name */
    private final Deque<PixelFrame> f31902a = new LinkedList();

    /* renamed from: b  reason: collision with root package name */
    private int f31903b;

    public j(int i9) {
        this.f31903b = i9;
    }

    @Override // com.tencent.liteav.videobase.utils.h
    public final PixelFrame a() {
        PixelFrame pollFirst;
        synchronized (this) {
            pollFirst = this.f31902a.pollFirst();
        }
        return pollFirst;
    }

    @Override // com.tencent.liteav.videobase.utils.h
    public final void b() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f31902a);
            this.f31902a.clear();
        }
        LiteavLog.i("RingFrameQueue", "evictAll pixelFrame.");
        PixelFrame.releasePixelFrames(arrayList);
    }

    public final int c() {
        int size;
        synchronized (this) {
            size = this.f31902a.size();
        }
        return size;
    }

    @Override // com.tencent.liteav.videobase.utils.h
    public final void a(PixelFrame pixelFrame) {
        PixelFrame removeFirst;
        pixelFrame.retain();
        synchronized (this) {
            removeFirst = this.f31902a.size() >= this.f31903b ? this.f31902a.removeFirst() : null;
            this.f31902a.addLast(pixelFrame);
        }
        if (removeFirst != null) {
            removeFirst.release();
        }
    }

    public final boolean b(PixelFrame pixelFrame) {
        boolean removeFirstOccurrence;
        if (pixelFrame == null) {
            return false;
        }
        synchronized (this) {
            removeFirstOccurrence = this.f31902a.size() > 0 ? this.f31902a.removeFirstOccurrence(pixelFrame) : false;
        }
        if (removeFirstOccurrence) {
            pixelFrame.release();
        }
        return removeFirstOccurrence;
    }
}
