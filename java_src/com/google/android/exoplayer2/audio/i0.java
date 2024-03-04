package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
public final class i0 {
    public static int a(int i9, int i10) {
        if (i9 != 1) {
            if (i9 == 3) {
                return i10 == 32 ? 4 : 0;
            } else if (i9 != 65534) {
                return 0;
            }
        }
        return l0.W(i10);
    }
}
