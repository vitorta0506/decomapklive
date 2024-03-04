package e2;

import com.google.android.exoplayer2.util.b0;
/* loaded from: classes.dex */
final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    public final int f38337a;

    /* renamed from: b  reason: collision with root package name */
    public final int f38338b;

    /* renamed from: c  reason: collision with root package name */
    public final int f38339c;

    /* renamed from: d  reason: collision with root package name */
    public final int f38340d;

    private c(int i9, int i10, int i11, int i12) {
        this.f38337a = i9;
        this.f38338b = i10;
        this.f38339c = i11;
        this.f38340d = i12;
    }

    public static c b(b0 b0Var) {
        int q10 = b0Var.q();
        b0Var.Q(8);
        int q11 = b0Var.q();
        int q12 = b0Var.q();
        b0Var.Q(4);
        int q13 = b0Var.q();
        b0Var.Q(12);
        return new c(q10, q11, q12, q13);
    }

    public boolean a() {
        return (this.f38338b & 16) == 16;
    }

    @Override // e2.a
    public int getType() {
        return 1751742049;
    }
}
