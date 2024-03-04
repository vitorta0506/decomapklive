package mh;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes7.dex */
public abstract class n {

    /* loaded from: classes7.dex */
    public static final class b {

        /* renamed from: c  reason: collision with root package name */
        private static final n f55131c = n.c(Collections.emptyList());

        /* renamed from: a  reason: collision with root package name */
        private final n f55132a;

        /* renamed from: b  reason: collision with root package name */
        private ArrayList<Object> f55133b;

        public n b() {
            ArrayList<Object> arrayList = this.f55133b;
            if (arrayList == null) {
                return this.f55132a;
            }
            return n.c(arrayList);
        }

        private b(n nVar) {
            lh.b.b(nVar, "parent");
            this.f55132a = nVar;
            this.f55133b = null;
        }
    }

    public static b b() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static n c(List<Object> list) {
        lh.b.c(list.size() <= 32, "Invalid size");
        return new e(Collections.unmodifiableList(list));
    }

    public abstract List<Object> d();
}
