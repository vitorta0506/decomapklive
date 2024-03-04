package k3;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class c implements com.google.android.exoplayer2.h {

    /* renamed from: f  reason: collision with root package name */
    public static final h.a<c> f53523f = new h.a() { // from class: k3.b
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            c e10;
            e10 = c.e(bundle);
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f53524a;

    /* renamed from: b  reason: collision with root package name */
    public final int f53525b;

    /* renamed from: c  reason: collision with root package name */
    public final int f53526c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f53527d;

    /* renamed from: e  reason: collision with root package name */
    private int f53528e;

    public c(int i9, int i10, int i11, @Nullable byte[] bArr) {
        this.f53524a = i9;
        this.f53525b = i10;
        this.f53526c = i11;
        this.f53527d = bArr;
    }

    public static int b(int i9) {
        if (i9 != 1) {
            if (i9 != 9) {
                return (i9 == 4 || i9 == 5 || i9 == 6 || i9 == 7) ? 2 : -1;
            }
            return 6;
        }
        return 1;
    }

    public static int c(int i9) {
        if (i9 != 1) {
            if (i9 != 16) {
                if (i9 != 18) {
                    return (i9 == 6 || i9 == 7) ? 3 : -1;
                }
                return 7;
            }
            return 6;
        }
        return 3;
    }

    private static String d(int i9) {
        return Integer.toString(i9, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c e(Bundle bundle) {
        return new c(bundle.getInt(d(0), -1), bundle.getInt(d(1), -1), bundle.getInt(d(2), -1), bundle.getByteArray(d(3)));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f53524a == cVar.f53524a && this.f53525b == cVar.f53525b && this.f53526c == cVar.f53526c && Arrays.equals(this.f53527d, cVar.f53527d);
    }

    public Bundle f() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), this.f53524a);
        bundle.putInt(d(1), this.f53525b);
        bundle.putInt(d(2), this.f53526c);
        bundle.putByteArray(d(3), this.f53527d);
        return bundle;
    }

    public int hashCode() {
        if (this.f53528e == 0) {
            this.f53528e = ((((((527 + this.f53524a) * 31) + this.f53525b) * 31) + this.f53526c) * 31) + Arrays.hashCode(this.f53527d);
        }
        return this.f53528e;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ColorInfo(");
        sb2.append(this.f53524a);
        sb2.append(", ");
        sb2.append(this.f53525b);
        sb2.append(", ");
        sb2.append(this.f53526c);
        sb2.append(", ");
        sb2.append(this.f53527d != null);
        sb2.append(")");
        return sb2.toString();
    }
}
