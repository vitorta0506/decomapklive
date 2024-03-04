package com.vk.api.sdk.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vk/api/sdk/exceptions/VKAuthException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "webViewError", "", "authError", "", "(ILjava/lang/String;)V", "getAuthError", "()Ljava/lang/String;", "isCanceled", "", "()Z", "getWebViewError", "()I", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKAuthException extends Exception {
    @Nullable
    private final String authError;
    private final int webViewError;

    public VKAuthException() {
        this(0, null, 3, null);
    }

    public /* synthetic */ VKAuthException(int i9, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i9, (i10 & 2) != 0 ? null : str);
    }

    @Nullable
    public final String getAuthError() {
        return this.authError;
    }

    public final int getWebViewError() {
        return this.webViewError;
    }

    public final boolean isCanceled() {
        if (this.webViewError == 0) {
            String str = this.authError;
            if (str == null || str.length() == 0) {
                return true;
            }
        }
        return false;
    }

    public VKAuthException(int i9, @Nullable String str) {
        super("Auth canceled");
        this.webViewError = i9;
        this.authError = str;
    }
}
