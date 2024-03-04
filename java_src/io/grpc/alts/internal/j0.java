package io.grpc.alts.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class j0 {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<?>> f41899a;

    /* loaded from: classes5.dex */
    public static abstract class a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f41900a;

        /* renamed from: b  reason: collision with root package name */
        private final T f41901b;

        protected a(String str, T t10) {
            this.f41900a = str;
            this.f41901b = t10;
        }

        public String toString() {
            return String.format("%s=%s", this.f41900a, this.f41901b);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends a<String> {
        public b(String str, String str2) {
            super(str, str2);
        }
    }

    public j0(List<a<?>> list) {
        this.f41899a = Collections.unmodifiableList(list);
    }

    public String toString() {
        return new ArrayList(this.f41899a).toString();
    }
}
