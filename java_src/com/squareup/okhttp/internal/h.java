package com.squareup.okhttp.internal;

import com.squareup.okhttp.Route;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Route> f29844a = new LinkedHashSet();

    public synchronized void a(Route route) {
        this.f29844a.remove(route);
    }

    public synchronized void b(Route route) {
        this.f29844a.add(route);
    }

    public synchronized boolean c(Route route) {
        return this.f29844a.contains(route);
    }
}
