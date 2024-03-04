package h3;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import v2.o0;
/* loaded from: classes2.dex */
public final class x implements com.google.android.exoplayer2.h {

    /* renamed from: c  reason: collision with root package name */
    public static final h.a<x> f40487c = new h.a() { // from class: h3.w
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            x d10;
            d10 = x.d(bundle);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final o0 f40488a;

    /* renamed from: b  reason: collision with root package name */
    public final ImmutableList<Integer> f40489b;

    public x(o0 o0Var, List<Integer> list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= o0Var.f58912a)) {
            throw new IndexOutOfBoundsException();
        }
        this.f40488a = o0Var;
        this.f40489b = ImmutableList.copyOf((Collection) list);
    }

    private static String c(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ x d(Bundle bundle) {
        return new x(o0.f58911f.a((Bundle) com.google.android.exoplayer2.util.a.e(bundle.getBundle(c(0)))), com.google.common.primitives.f.c((int[]) com.google.android.exoplayer2.util.a.e(bundle.getIntArray(c(1)))));
    }

    public int b() {
        return this.f40488a.f58914c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || x.class != obj.getClass()) {
            return false;
        }
        x xVar = (x) obj;
        return this.f40488a.equals(xVar.f40488a) && this.f40489b.equals(xVar.f40489b);
    }

    public int hashCode() {
        return this.f40488a.hashCode() + (this.f40489b.hashCode() * 31);
    }
}
