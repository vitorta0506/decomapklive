package com.tencent.liteav.videobase.utils;

import java.util.LinkedList;
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedList<Runnable> f31888a = new LinkedList<>();

    public final void a(Runnable runnable) {
        synchronized (this.f31888a) {
            this.f31888a.add(runnable);
        }
    }

    public final void a() {
        LinkedList linkedList;
        synchronized (this.f31888a) {
            if (this.f31888a.isEmpty()) {
                linkedList = null;
            } else {
                linkedList = new LinkedList(this.f31888a);
                this.f31888a.clear();
            }
        }
        while (linkedList != null && !linkedList.isEmpty()) {
            ((Runnable) linkedList.removeFirst()).run();
        }
    }
}
