package eh;

import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class z0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static z0 a(List<y0> list, int i9, int i10) {
        com.google.common.base.o.e(i9 > 0, "localityWeight must be greater than 0");
        return new j(ImmutableList.copyOf((Collection) list), i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ImmutableList<y0> b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int d();
}
