package com.google.android.exoplayer2.util;

import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class i<E> implements Iterable<E> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f6973a = new Object();
    @GuardedBy("lock")

    /* renamed from: b  reason: collision with root package name */
    private final Map<E, Integer> f6974b = new HashMap();
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private Set<E> f6975c = Collections.emptySet();
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private List<E> f6976d = Collections.emptyList();

    public void c(E e10) {
        synchronized (this.f6973a) {
            ArrayList arrayList = new ArrayList(this.f6976d);
            arrayList.add(e10);
            this.f6976d = Collections.unmodifiableList(arrayList);
            Integer num = this.f6974b.get(e10);
            if (num == null) {
                HashSet hashSet = new HashSet(this.f6975c);
                hashSet.add(e10);
                this.f6975c = Collections.unmodifiableSet(hashSet);
            }
            this.f6974b.put(e10, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
        }
    }

    public int count(E e10) {
        int intValue;
        synchronized (this.f6973a) {
            intValue = this.f6974b.containsKey(e10) ? this.f6974b.get(e10).intValue() : 0;
        }
        return intValue;
    }

    public void d(E e10) {
        synchronized (this.f6973a) {
            Integer num = this.f6974b.get(e10);
            if (num == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f6976d);
            arrayList.remove(e10);
            this.f6976d = Collections.unmodifiableList(arrayList);
            if (num.intValue() == 1) {
                this.f6974b.remove(e10);
                HashSet hashSet = new HashSet(this.f6975c);
                hashSet.remove(e10);
                this.f6975c = Collections.unmodifiableSet(hashSet);
            } else {
                this.f6974b.put(e10, Integer.valueOf(num.intValue() - 1));
            }
        }
    }

    public Set<E> elementSet() {
        Set<E> set;
        synchronized (this.f6973a) {
            set = this.f6975c;
        }
        return set;
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        Iterator<E> it;
        synchronized (this.f6973a) {
            it = this.f6976d.iterator();
        }
        return it;
    }
}
