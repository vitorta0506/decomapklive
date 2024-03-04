package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.h;
/* loaded from: classes.dex */
public abstract class s2 implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final h.a<s2> f6546a = new h.a() { // from class: com.google.android.exoplayer2.r2
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            s2 b10;
            b10 = s2.b(bundle);
            return b10;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static s2 b(Bundle bundle) {
        int i9 = bundle.getInt(c(0), -1);
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 3) {
                        return g3.f5935d.a(bundle);
                    }
                    throw new IllegalArgumentException("Unknown RatingType: " + i9);
                }
                return c3.f5681d.a(bundle);
            }
            return g2.f5933c.a(bundle);
        }
        return o1.f6369d.a(bundle);
    }

    private static String c(int i9) {
        return Integer.toString(i9, 36);
    }
}
