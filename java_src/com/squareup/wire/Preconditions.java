package com.squareup.wire;

import java.util.Objects;
/* loaded from: classes4.dex */
final class Preconditions {
    private Preconditions() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkNotNull(Object obj, String str) {
        Objects.requireNonNull(obj, str);
    }
}
