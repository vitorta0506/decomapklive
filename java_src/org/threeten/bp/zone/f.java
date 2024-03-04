package org.threeten.bp.zone;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes7.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private static final CopyOnWriteArrayList<f> f56688a = new CopyOnWriteArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private static final ConcurrentMap<String, f> f56689b = new ConcurrentHashMap(512, 0.75f, 2);

    static {
        e.a();
    }

    public static Set<String> a() {
        return Collections.unmodifiableSet(f56689b.keySet());
    }

    private static f b(String str) {
        ConcurrentMap<String, f> concurrentMap = f56689b;
        f fVar = concurrentMap.get(str);
        if (fVar == null) {
            if (concurrentMap.isEmpty()) {
                throw new ZoneRulesException("No time-zone data files registered");
            }
            throw new ZoneRulesException("Unknown time-zone ID: " + str);
        }
        return fVar;
    }

    public static d c(String str, boolean z10) {
        jl.d.i(str, "zoneId");
        return b(str).d(str, z10);
    }

    public static void f(f fVar) {
        jl.d.i(fVar, "provider");
        g(fVar);
        f56688a.add(fVar);
    }

    private static void g(f fVar) {
        for (String str : fVar.e()) {
            jl.d.i(str, "zoneId");
            if (f56689b.putIfAbsent(str, fVar) != null) {
                throw new ZoneRulesException("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + fVar);
            }
        }
    }

    protected abstract d d(String str, boolean z10);

    protected abstract Set<String> e();
}
