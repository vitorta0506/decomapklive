package com.google.firebase;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.p;
/* loaded from: classes2.dex */
public class FirebaseException extends Exception {
    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public FirebaseException() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(@NonNull String str) {
        super(str);
        p.g(str, "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(@NonNull String str, @NonNull Throwable th2) {
        super(str, th2);
        p.g(str, "Detail message must not be empty");
    }
}
