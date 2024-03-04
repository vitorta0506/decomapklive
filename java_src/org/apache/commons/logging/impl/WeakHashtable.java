package org.apache.commons.logging.impl;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
/* loaded from: classes7.dex */
public final class WeakHashtable extends Hashtable {
    private static final int MAX_CHANGES_BEFORE_PURGE = 100;
    private static final int PARTIAL_PURGE_COUNT = 10;
    private static final long serialVersionUID = -1546036869799732453L;
    private final ReferenceQueue queue = new ReferenceQueue();
    private int changeCount = 0;

    /* loaded from: classes7.dex */
    private static final class a implements Map.Entry {

        /* renamed from: a  reason: collision with root package name */
        private final Object f55865a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f55866b;

        /* synthetic */ a(Object obj, Object obj2, org.apache.commons.logging.impl.b bVar) {
            this(obj, obj2);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (getKey() == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!getKey().equals(entry.getKey())) {
                return false;
            }
            if (getValue() == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!getValue().equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f55865a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f55866b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return (getKey() == null ? 0 : getKey().hashCode()) ^ (getValue() != null ? getValue().hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException("Entry.setValue is not supported.");
        }

        private a(Object obj, Object obj2) {
            this.f55865a = obj;
            this.f55866b = obj2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference f55867a;

        /* renamed from: b  reason: collision with root package name */
        private final int f55868b;

        /* synthetic */ b(Object obj, ReferenceQueue referenceQueue, org.apache.commons.logging.impl.b bVar) {
            this(obj, referenceQueue);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Object b() {
            return this.f55867a.get();
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                Object b10 = b();
                Object b11 = bVar.b();
                if (b10 == null) {
                    return (b11 == null) && hashCode() == bVar.hashCode();
                }
                return b10.equals(b11);
            }
            return false;
        }

        public int hashCode() {
            return this.f55868b;
        }

        /* synthetic */ b(Object obj, org.apache.commons.logging.impl.b bVar) {
            this(obj);
        }

        private b(Object obj) {
            this.f55867a = new WeakReference(obj);
            this.f55868b = obj.hashCode();
        }

        private b(Object obj, ReferenceQueue referenceQueue) {
            this.f55867a = new c(obj, referenceQueue, this, null);
            this.f55868b = obj.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class c extends WeakReference {

        /* renamed from: a  reason: collision with root package name */
        private final b f55869a;

        /* synthetic */ c(Object obj, ReferenceQueue referenceQueue, b bVar, org.apache.commons.logging.impl.b bVar2) {
            this(obj, referenceQueue, bVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public b b() {
            return this.f55869a;
        }

        private c(Object obj, ReferenceQueue referenceQueue, b bVar) {
            super(obj, referenceQueue);
            this.f55869a = bVar;
        }
    }

    private void purge() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.queue) {
            while (true) {
                c cVar = (c) this.queue.poll();
                if (cVar == null) {
                    break;
                }
                arrayList.add(cVar.b());
            }
        }
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            super.remove(arrayList.get(i9));
        }
    }

    private void purgeOne() {
        synchronized (this.queue) {
            c cVar = (c) this.queue.poll();
            if (cVar != null) {
                super.remove(cVar.b());
            }
        }
    }

    @Override // java.util.Hashtable, java.util.Map
    public boolean containsKey(Object obj) {
        return super.containsKey(new b(obj, (org.apache.commons.logging.impl.b) null));
    }

    @Override // java.util.Hashtable, java.util.Dictionary
    public Enumeration elements() {
        purge();
        return super.elements();
    }

    @Override // java.util.Hashtable, java.util.Map
    public Set entrySet() {
        purge();
        Set<Map.Entry> entrySet = super.entrySet();
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : entrySet) {
            Object b10 = ((b) entry.getKey()).b();
            Object value = entry.getValue();
            if (b10 != null) {
                hashSet.add(new a(b10, value, null));
            }
        }
        return hashSet;
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public Object get(Object obj) {
        return super.get(new b(obj, (org.apache.commons.logging.impl.b) null));
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public boolean isEmpty() {
        purge();
        return super.isEmpty();
    }

    @Override // java.util.Hashtable, java.util.Map
    public Set keySet() {
        purge();
        Set<b> keySet = super.keySet();
        HashSet hashSet = new HashSet();
        for (b bVar : keySet) {
            Object b10 = bVar.b();
            if (b10 != null) {
                hashSet.add(b10);
            }
        }
        return hashSet;
    }

    @Override // java.util.Hashtable, java.util.Dictionary
    public Enumeration keys() {
        purge();
        return new org.apache.commons.logging.impl.b(this, super.keys());
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public synchronized Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("Null keys are not allowed");
        }
        if (obj2 != null) {
            int i9 = this.changeCount;
            int i10 = i9 + 1;
            this.changeCount = i10;
            if (i9 > 100) {
                purge();
                this.changeCount = 0;
            } else if (i10 % 10 == 0) {
                purgeOne();
            }
        } else {
            throw new NullPointerException("Null values are not allowed");
        }
        return super.put(new b(obj, this.queue, null), obj2);
    }

    @Override // java.util.Hashtable, java.util.Map
    public void putAll(Map map) {
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    @Override // java.util.Hashtable
    protected void rehash() {
        purge();
        super.rehash();
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public synchronized Object remove(Object obj) {
        int i9 = this.changeCount;
        int i10 = i9 + 1;
        this.changeCount = i10;
        if (i9 > 100) {
            purge();
            this.changeCount = 0;
        } else if (i10 % 10 == 0) {
            purgeOne();
        }
        return super.remove(new b(obj, (org.apache.commons.logging.impl.b) null));
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public int size() {
        purge();
        return super.size();
    }

    @Override // java.util.Hashtable
    public String toString() {
        purge();
        return super.toString();
    }

    @Override // java.util.Hashtable, java.util.Map
    public Collection values() {
        purge();
        return super.values();
    }
}
