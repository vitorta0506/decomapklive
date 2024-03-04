package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.login.LoginLogger;
import t4.g;
/* loaded from: classes2.dex */
public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, @Nullable Throwable th2) {
        super(str, th2);
    }

    @NonNull
    public static IllegalStateException of(@NonNull g<?> gVar) {
        String str;
        if (!gVar.n()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception j10 = gVar.j();
        if (j10 != null) {
            str = LoginLogger.EVENT_EXTRAS_FAILURE;
        } else if (gVar.o()) {
            str = "result ".concat(String.valueOf(gVar.k()));
        } else {
            str = gVar.m() ? "cancellation" : "unknown issue";
        }
        return new DuplicateTaskCompletionException("Complete with: ".concat(str), j10);
    }
}
