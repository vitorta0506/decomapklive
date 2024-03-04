package v2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class q0 implements com.google.android.exoplayer2.h {

    /* renamed from: d  reason: collision with root package name */
    public static final q0 f58918d = new q0(new o0[0]);

    /* renamed from: e  reason: collision with root package name */
    public static final h.a<q0> f58919e = new h.a() { // from class: v2.p0
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            q0 e10;
            e10 = q0.e(bundle);
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f58920a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<o0> f58921b;

    /* renamed from: c  reason: collision with root package name */
    private int f58922c;

    public q0(o0... o0VarArr) {
        this.f58921b = ImmutableList.copyOf(o0VarArr);
        this.f58920a = o0VarArr.length;
        f();
    }

    private static String d(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ q0 e(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        if (parcelableArrayList == null) {
            return new q0(new o0[0]);
        }
        return new q0((o0[]) com.google.android.exoplayer2.util.c.b(o0.f58911f, parcelableArrayList).toArray(new o0[0]));
    }

    private void f() {
        int i9 = 0;
        while (i9 < this.f58921b.size()) {
            int i10 = i9 + 1;
            for (int i11 = i10; i11 < this.f58921b.size(); i11++) {
                if (this.f58921b.get(i9).equals(this.f58921b.get(i11))) {
                    com.google.android.exoplayer2.util.r.d("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i9 = i10;
        }
    }

    public o0 b(int i9) {
        return this.f58921b.get(i9);
    }

    public int c(o0 o0Var) {
        int indexOf = this.f58921b.indexOf(o0Var);
        if (indexOf >= 0) {
            return indexOf;
        }
        return -1;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q0.class != obj.getClass()) {
            return false;
        }
        q0 q0Var = (q0) obj;
        return this.f58920a == q0Var.f58920a && this.f58921b.equals(q0Var.f58921b);
    }

    public int hashCode() {
        if (this.f58922c == 0) {
            this.f58922c = this.f58921b.hashCode();
        }
        return this.f58922c;
    }
}
