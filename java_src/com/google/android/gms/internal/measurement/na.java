package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class na extends ya {
    /* JADX INFO: Access modifiers changed from: package-private */
    public na(int i9) {
        super(i9, null);
    }

    @Override // com.google.android.gms.internal.measurement.ya
    public final void a() {
        if (!j()) {
            for (int i9 = 0; i9 < b(); i9++) {
                Map.Entry g10 = g(i9);
                if (((o8) g10.getKey()).E()) {
                    g10.setValue(Collections.unmodifiableList((List) g10.getValue()));
                }
            }
            for (Map.Entry entry : c()) {
                if (((o8) entry.getKey()).E()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.a();
    }
}
