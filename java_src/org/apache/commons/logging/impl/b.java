package org.apache.commons.logging.impl;

import java.util.Enumeration;
import org.apache.commons.logging.impl.WeakHashtable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class b implements Enumeration {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Enumeration f55871a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ WeakHashtable f55872b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(WeakHashtable weakHashtable, Enumeration enumeration) {
        this.f55872b = weakHashtable;
        this.f55871a = enumeration;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.f55871a.hasMoreElements();
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        return ((WeakHashtable.b) this.f55871a.nextElement()).b();
    }
}
