package a6;

import java.util.Set;
/* loaded from: classes2.dex */
abstract class a implements e {
    @Override // a6.e
    public <T> T i(Class<T> cls) {
        k6.b<T> l10 = l(cls);
        if (l10 == null) {
            return null;
        }
        return l10.get();
    }

    @Override // a6.e
    public <T> Set<T> k(Class<T> cls) {
        return j(cls).get();
    }
}
