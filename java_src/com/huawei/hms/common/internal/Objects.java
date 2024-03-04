package com.huawei.hms.common.internal;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4.dex */
public final class Objects {

    /* loaded from: classes4.dex */
    public static final class ToStringHelper {

        /* renamed from: a  reason: collision with root package name */
        public final List<String> f27280a;

        /* renamed from: b  reason: collision with root package name */
        public final Object f27281b;

        public final ToStringHelper add(String str, Object obj) {
            String str2 = (String) Preconditions.checkNotNull(str);
            String valueOf = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder(str2.length() + valueOf.length() + 1);
            sb2.append(str2);
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append(valueOf);
            this.f27280a.add(sb2.toString());
            return this;
        }

        public final String toString() {
            String simpleName = this.f27281b.getClass().getSimpleName();
            StringBuilder sb2 = new StringBuilder(100);
            sb2.append(simpleName);
            sb2.append('{');
            int size = this.f27280a.size();
            for (int i9 = 0; i9 < size; i9++) {
                sb2.append(this.f27280a.get(i9));
                if (i9 < size - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append('}');
            return sb2.toString();
        }

        public ToStringHelper(Object obj) {
            this.f27281b = Preconditions.checkNotNull(obj);
            this.f27280a = new ArrayList();
        }
    }

    public Objects() {
        throw new AssertionError("Uninstantiable");
    }

    public static boolean equal(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        return obj != null && obj.equals(obj2);
    }

    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(obj);
    }
}
