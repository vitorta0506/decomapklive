package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
public final class a3 extends u8 implements aa {
    private a3() {
        super(b3.z());
    }

    public final int r() {
        return ((b3) this.f8366b).w();
    }

    public final a3 s(String str) {
        if (this.f8367c) {
            q();
            this.f8367c = false;
        }
        b3.E((b3) this.f8366b, str);
        return this;
    }

    public final a3 t(int i9, d3 d3Var) {
        if (this.f8367c) {
            q();
            this.f8367c = false;
        }
        b3.F((b3) this.f8366b, i9, d3Var);
        return this;
    }

    public final d3 u(int i9) {
        return ((b3) this.f8366b).A(i9);
    }

    public final String v() {
        return ((b3) this.f8366b).C();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ a3(x2 x2Var) {
        super(b3.z());
    }
}
