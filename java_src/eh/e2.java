package eh;

import eh.s2;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
final class e2 implements s2.a {

    /* renamed from: a  reason: collision with root package name */
    private final ReferenceQueue<AtomicLong> f38736a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Map<String, b>> f38737b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b extends WeakReference<AtomicLong> {

        /* renamed from: a  reason: collision with root package name */
        private final String f38738a;

        /* renamed from: b  reason: collision with root package name */
        private final String f38739b;

        b(AtomicLong atomicLong, ReferenceQueue<AtomicLong> referenceQueue, String str, String str2) {
            super(atomicLong, referenceQueue);
            this.f38738a = str;
            this.f38739b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private static final e2 f38740a = new e2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e2 c() {
        return c.f38740a;
    }

    @Override // eh.s2.a
    public synchronized AtomicLong a(String str, String str2) {
        AtomicLong atomicLong;
        Map<String, b> map = this.f38737b.get(str);
        if (map == null) {
            map = new HashMap<>();
            this.f38737b.put(str, map);
        }
        b bVar = map.get(str2);
        atomicLong = null;
        if (bVar != null && (atomicLong = bVar.get()) == null) {
            bVar.enqueue();
        }
        if (atomicLong == null) {
            atomicLong = new AtomicLong();
            map.put(str2, new b(atomicLong, this.f38736a, str, str2));
        }
        b();
        return atomicLong;
    }

    void b() {
        while (true) {
            b bVar = (b) this.f38736a.poll();
            if (bVar == null) {
                return;
            }
            Map<String, b> map = this.f38737b.get(bVar.f38738a);
            if (map.get(bVar.f38739b) == bVar) {
                map.remove(bVar.f38739b);
                if (map.isEmpty()) {
                    this.f38737b.remove(bVar.f38738a);
                }
            }
        }
    }

    private e2() {
        this(new HashMap());
    }

    e2(Map<String, Map<String, b>> map) {
        this.f38736a = new ReferenceQueue<>();
        this.f38737b = (Map) com.google.common.base.o.t(map, "counters");
    }
}
