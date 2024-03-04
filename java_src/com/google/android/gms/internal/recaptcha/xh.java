package com.google.android.gms.internal.recaptcha;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class xh extends ei {
    /* JADX INFO: Access modifiers changed from: package-private */
    public xh(int i9) {
        super(i9, null);
    }

    @Override // com.google.android.gms.internal.recaptcha.ei
    public final void a() {
        if (!j()) {
            for (int i9 = 0; i9 < b(); i9++) {
                Map.Entry g10 = g(i9);
                if (((tf) g10.getKey()).E()) {
                    g10.setValue(Collections.unmodifiableList((List) g10.getValue()));
                }
            }
            for (Map.Entry entry : c()) {
                if (((tf) entry.getKey()).E()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.a();
    }
}
