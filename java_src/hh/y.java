package hh;

import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class y implements x {
    public static y b(List<? extends x> list) {
        com.google.common.base.o.t(list, "matchers");
        for (x xVar : list) {
            com.google.common.base.o.t(xVar, "matcher");
        }
        return new j(ImmutableList.copyOf((Collection) list));
    }

    public abstract ImmutableList<? extends x> a();
}
