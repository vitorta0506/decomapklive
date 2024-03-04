package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public final class n {

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List f7758a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f7759b;

        /* synthetic */ a(Object obj, y0 y0Var) {
            p.j(obj);
            this.f7759b = obj;
            this.f7758a = new ArrayList();
        }

        @NonNull
        public a a(@NonNull String str, @Nullable Object obj) {
            List list = this.f7758a;
            p.j(str);
            String valueOf = String.valueOf(obj);
            list.add(str + ContainerUtils.KEY_VALUE_DELIMITER + valueOf);
            return this;
        }

        @NonNull
        public String toString() {
            StringBuilder sb2 = new StringBuilder(100);
            sb2.append(this.f7759b.getClass().getSimpleName());
            sb2.append('{');
            int size = this.f7758a.size();
            for (int i9 = 0; i9 < size; i9++) {
                sb2.append((String) this.f7758a.get(i9));
                if (i9 < size - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append('}');
            return sb2.toString();
        }
    }

    public static boolean a(@NonNull Bundle bundle, @NonNull Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return bundle == bundle2;
        } else if (bundle.size() != bundle2.size()) {
            return false;
        } else {
            Set<String> keySet = bundle.keySet();
            if (keySet.containsAll(bundle2.keySet())) {
                for (String str : keySet) {
                    if (!b(bundle.get(str), bundle2.get(str))) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
    }

    public static boolean b(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int c(@NonNull Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    @NonNull
    public static a d(@NonNull Object obj) {
        return new a(obj, null);
    }
}
