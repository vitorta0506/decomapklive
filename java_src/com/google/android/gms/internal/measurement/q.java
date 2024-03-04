package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public interface q {
    public static final q U = new v();
    public static final q V = new o();
    public static final q W = new h("continue");
    public static final q X = new h("break");
    public static final q Y = new h("return");
    public static final q Z = new g(Boolean.TRUE);

    /* renamed from: a0  reason: collision with root package name */
    public static final q f8268a0 = new g(Boolean.FALSE);

    /* renamed from: b0  reason: collision with root package name */
    public static final q f8269b0 = new u("");

    Double a();

    q c();

    String d();

    Boolean f();

    Iterator g();

    q u(String str, t4 t4Var, List list);
}
