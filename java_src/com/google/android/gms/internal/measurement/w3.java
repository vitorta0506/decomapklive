package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class w3 extends u8 implements aa {
    private w3() {
        super(x3.B());
    }

    public final int r() {
        return ((x3) this.f8366b).x();
    }

    public final v3 s(int i9) {
        return ((x3) this.f8366b).z(i9);
    }

    public final w3 t() {
        if (this.f8367c) {
            q();
            this.f8367c = false;
        }
        x3.K((x3) this.f8366b);
        return this;
    }

    public final w3 u(int i9, u3 u3Var) {
        if (this.f8367c) {
            q();
            this.f8367c = false;
        }
        x3.J((x3) this.f8366b, i9, (v3) u3Var.o());
        return this;
    }

    public final String v() {
        return ((x3) this.f8366b).E();
    }

    public final List w() {
        return Collections.unmodifiableList(((x3) this.f8366b).F());
    }

    public final List x() {
        return Collections.unmodifiableList(((x3) this.f8366b).G());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ w3(q3 q3Var) {
        super(x3.B());
    }
}
