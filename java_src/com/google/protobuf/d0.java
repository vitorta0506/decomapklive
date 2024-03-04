package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Extension;
import com.google.protobuf.GeneratedMessage;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class d0 extends f0 {

    /* renamed from: j  reason: collision with root package name */
    static final d0 f14914j = new d0(true);

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, c> f14915f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, c> f14916g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<b, c> f14917h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<b, c> f14918i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14919a;

        static {
            int[] iArr = new int[Extension.ExtensionType.values().length];
            f14919a = iArr;
            try {
                iArr[Extension.ExtensionType.IMMUTABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14919a[Extension.ExtensionType.MUTABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Descriptors.b f14920a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14921b;

        b(Descriptors.b bVar, int i9) {
            this.f14920a = bVar;
            this.f14921b = i9;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.f14920a == bVar.f14920a && this.f14921b == bVar.f14921b;
            }
            return false;
        }

        public int hashCode() {
            return (this.f14920a.hashCode() * 65535) + this.f14921b;
        }
    }

    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final Descriptors.FieldDescriptor f14922a;

        /* renamed from: b  reason: collision with root package name */
        public final l1 f14923b;

        /* synthetic */ c(Descriptors.FieldDescriptor fieldDescriptor, l1 l1Var, a aVar) {
            this(fieldDescriptor, l1Var);
        }

        private c(Descriptors.FieldDescriptor fieldDescriptor, l1 l1Var) {
            this.f14922a = fieldDescriptor;
            this.f14923b = l1Var;
        }
    }

    private d0() {
        this.f14915f = new HashMap();
        this.f14916g = new HashMap();
        this.f14917h = new HashMap();
        this.f14918i = new HashMap();
    }

    private void e(c cVar, Extension.ExtensionType extensionType) {
        Map<String, c> map;
        Map<b, c> map2;
        if (cVar.f14922a.z()) {
            int i9 = a.f14919a[extensionType.ordinal()];
            if (i9 == 1) {
                map = this.f14915f;
                map2 = this.f14917h;
            } else if (i9 != 2) {
                return;
            } else {
                map = this.f14916g;
                map2 = this.f14918i;
            }
            map.put(cVar.f14922a.c(), cVar);
            map2.put(new b(cVar.f14922a.o(), cVar.f14922a.getNumber()), cVar);
            Descriptors.FieldDescriptor fieldDescriptor = cVar.f14922a;
            if (fieldDescriptor.o().q().getMessageSetWireFormat() && fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.MESSAGE && fieldDescriptor.B() && fieldDescriptor.r() == fieldDescriptor.v()) {
                map.put(fieldDescriptor.v().c(), cVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field.");
    }

    public static d0 i() {
        return f14914j;
    }

    static c j(Extension<?, ?> extension) {
        if (extension.c().t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            if (extension.e() != null) {
                return new c(extension.c(), extension.e(), null);
            }
            throw new IllegalStateException("Registered message-type extension had null default instance: " + extension.c().c());
        }
        return new c(extension.c(), null, null);
    }

    public static d0 k() {
        return new d0();
    }

    public void d(Extension<?, ?> extension) {
        if (extension.d() == Extension.ExtensionType.IMMUTABLE || extension.d() == Extension.ExtensionType.MUTABLE) {
            e(j(extension), extension.d());
        }
    }

    public void f(GeneratedMessage.l<?, ?> lVar) {
        d(lVar);
    }

    @Deprecated
    public c g(Descriptors.b bVar, int i9) {
        return h(bVar, i9);
    }

    public c h(Descriptors.b bVar, int i9) {
        return this.f14917h.get(new b(bVar, i9));
    }

    d0(boolean z10) {
        super(f0.f14951e);
        this.f14915f = Collections.emptyMap();
        this.f14916g = Collections.emptyMap();
        this.f14917h = Collections.emptyMap();
        this.f14918i = Collections.emptyMap();
    }
}
