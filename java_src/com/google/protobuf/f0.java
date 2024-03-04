package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class f0 {

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f14948b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f14949c = true;

    /* renamed from: d  reason: collision with root package name */
    private static volatile f0 f14950d;

    /* renamed from: e  reason: collision with root package name */
    static final f0 f14951e = new f0(true);

    /* renamed from: a  reason: collision with root package name */
    private final Map<a, GeneratedMessageLite.d<?, ?>> f14952a;

    /* loaded from: classes3.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Object f14953a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14954b;

        a(Object obj, int i9) {
            this.f14953a = obj;
            this.f14954b = i9;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f14953a == aVar.f14953a && this.f14954b == aVar.f14954b;
            }
            return false;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f14953a) * 65535) + this.f14954b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0() {
        this.f14952a = new HashMap();
    }

    public static f0 b() {
        f0 f0Var = f14950d;
        if (f0Var == null) {
            synchronized (f0.class) {
                f0Var = f14950d;
                if (f0Var == null) {
                    f0Var = f14949c ? e0.a() : f14951e;
                    f14950d = f0Var;
                }
            }
        }
        return f0Var;
    }

    public static boolean c() {
        return f14948b;
    }

    public <ContainingType extends o1> GeneratedMessageLite.d<ContainingType, ?> a(ContainingType containingtype, int i9) {
        return (GeneratedMessageLite.d<ContainingType, ?>) this.f14952a.get(new a(containingtype, i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(f0 f0Var) {
        if (f0Var == f14951e) {
            this.f14952a = Collections.emptyMap();
        } else {
            this.f14952a = Collections.unmodifiableMap(f0Var.f14952a);
        }
    }

    f0(boolean z10) {
        this.f14952a = Collections.emptyMap();
    }
}
