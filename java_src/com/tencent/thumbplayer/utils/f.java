package com.tencent.thumbplayer.utils;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static CopyOnWriteArrayList<a> f34462a = new CopyOnWriteArrayList<>();

    /* loaded from: classes4.dex */
    public interface a {
        void a(int i9, int i10, int i11, Object obj);
    }

    public static synchronized void a(int i9, int i10, int i11, Object obj) {
        synchronized (f.class) {
            Iterator<a> it = f34462a.iterator();
            while (it.hasNext()) {
                it.next().a(i9, i10, i11, obj);
            }
        }
    }

    public static synchronized void a(a aVar) {
        synchronized (f.class) {
            CopyOnWriteArrayList<a> copyOnWriteArrayList = f34462a;
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.contains(aVar)) {
                f34462a.add(aVar);
                TPLogUtil.i("TPGlobalEventNofication", "add onNetStatus change listener: " + aVar + ", mListeners: " + f34462a.size());
            }
        }
    }

    public static synchronized void b(a aVar) {
        synchronized (f.class) {
            CopyOnWriteArrayList<a> copyOnWriteArrayList = f34462a;
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.remove(aVar);
                TPLogUtil.i("TPGlobalEventNofication", "remove netStatusChangeListener, listener: " + aVar + ", mListeners: " + f34462a.size());
            }
        }
    }
}
