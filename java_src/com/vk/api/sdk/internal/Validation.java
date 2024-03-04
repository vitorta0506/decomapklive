package com.vk.api.sdk.internal;

import android.content.Context;
import android.text.TextUtils;
import com.vk.api.sdk.exceptions.VKApiCodes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u000f\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u0006¨\u0006\u0011"}, d2 = {"Lcom/vk/api/sdk/internal/Validation;", "", "()V", "assertAccessTokenValid", "", "accessToken", "", "assertCallsPerSecondLimitValid", "limit", "", "assertContextValid", "context", "Landroid/content/Context;", "assertHttpHostValid", "host", "assertLangValid", VKApiCodes.PARAM_LANG, "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Validation {
    @NotNull
    public static final Validation INSTANCE = new Validation();

    private Validation() {
    }

    public final void assertAccessTokenValid(@Nullable String str) {
        if (str == null) {
            throw new IllegalArgumentException("Illegal accessToken value");
        }
    }

    public final void assertCallsPerSecondLimitValid(int i9) {
        if (i9 <= 0) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Illegal callsPerSecondLimit value: ", Integer.valueOf(i9)));
        }
    }

    public final void assertContextValid(@Nullable Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context is null");
        }
    }

    public final void assertHttpHostValid(@Nullable String str) {
        if (str == null || str.length() == 0) {
            Intrinsics.checkNotNull(str);
            throw new IllegalArgumentException(Intrinsics.stringPlus("Illegal host value: ", str));
        }
    }

    public final void assertLangValid(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            Intrinsics.checkNotNull(str);
            throw new IllegalArgumentException(Intrinsics.stringPlus("Illegal lang value: ", str));
        }
    }
}
