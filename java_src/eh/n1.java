package eh;

import com.google.common.collect.ImmutableList;
import eh.l1;
import java.util.Collection;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class n1 {
    private static n1 a(long j10, String str, List<l2> list, List<l1.c> list2) {
        return new s(j10, str, list == null ? null : ImmutableList.copyOf((Collection) list), list2 == null ? null : ImmutableList.copyOf((Collection) list2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n1 b(long j10, String str, List<l1.c> list) {
        com.google.common.base.o.t(str, "rdsName");
        return a(j10, str, null, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n1 c(long j10, List<l2> list, List<l1.c> list2) {
        com.google.common.base.o.t(list, "virtualHosts");
        return a(j10, null, list, list2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ImmutableList<l1.c> d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long e();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String f();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ImmutableList<l2> g();
}
