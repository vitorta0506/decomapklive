package v2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.k1;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class o0 implements com.google.android.exoplayer2.h {

    /* renamed from: f  reason: collision with root package name */
    public static final h.a<o0> f58911f = new h.a() { // from class: v2.n0
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            o0 e10;
            e10 = o0.e(bundle);
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f58912a;

    /* renamed from: b  reason: collision with root package name */
    public final String f58913b;

    /* renamed from: c  reason: collision with root package name */
    public final int f58914c;

    /* renamed from: d  reason: collision with root package name */
    private final k1[] f58915d;

    /* renamed from: e  reason: collision with root package name */
    private int f58916e;

    public o0(String str, k1... k1VarArr) {
        com.google.android.exoplayer2.util.a.a(k1VarArr.length > 0);
        this.f58913b = str;
        this.f58915d = k1VarArr;
        this.f58912a = k1VarArr.length;
        int i9 = com.google.android.exoplayer2.util.v.i(k1VarArr[0].f6111l);
        this.f58914c = i9 == -1 ? com.google.android.exoplayer2.util.v.i(k1VarArr[0].f6110k) : i9;
        i();
    }

    private static String d(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o0 e(Bundle bundle) {
        ImmutableList b10;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        if (parcelableArrayList == null) {
            b10 = ImmutableList.of();
        } else {
            b10 = com.google.android.exoplayer2.util.c.b(k1.H, parcelableArrayList);
        }
        return new o0(bundle.getString(d(1), ""), (k1[]) b10.toArray(new k1[0]));
    }

    private static void f(String str, @Nullable String str2, @Nullable String str3, int i9) {
        com.google.android.exoplayer2.util.r.d("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i9 + ")"));
    }

    private static String g(@Nullable String str) {
        return (str == null || str.equals("und")) ? "" : str;
    }

    private static int h(int i9) {
        return i9 | 16384;
    }

    private void i() {
        String g10 = g(this.f58915d[0].f6102c);
        int h10 = h(this.f58915d[0].f6104e);
        int i9 = 1;
        while (true) {
            k1[] k1VarArr = this.f58915d;
            if (i9 >= k1VarArr.length) {
                return;
            }
            if (!g10.equals(g(k1VarArr[i9].f6102c))) {
                k1[] k1VarArr2 = this.f58915d;
                f("languages", k1VarArr2[0].f6102c, k1VarArr2[i9].f6102c, i9);
                return;
            } else if (h10 != h(this.f58915d[i9].f6104e)) {
                f("role flags", Integer.toBinaryString(this.f58915d[0].f6104e), Integer.toBinaryString(this.f58915d[i9].f6104e), i9);
                return;
            } else {
                i9++;
            }
        }
    }

    public k1 b(int i9) {
        return this.f58915d[i9];
    }

    public int c(k1 k1Var) {
        int i9 = 0;
        while (true) {
            k1[] k1VarArr = this.f58915d;
            if (i9 >= k1VarArr.length) {
                return -1;
            }
            if (k1Var == k1VarArr[i9]) {
                return i9;
            }
            i9++;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o0.class != obj.getClass()) {
            return false;
        }
        o0 o0Var = (o0) obj;
        return this.f58913b.equals(o0Var.f58913b) && Arrays.equals(this.f58915d, o0Var.f58915d);
    }

    public int hashCode() {
        if (this.f58916e == 0) {
            this.f58916e = ((527 + this.f58913b.hashCode()) * 31) + Arrays.hashCode(this.f58915d);
        }
        return this.f58916e;
    }
}
