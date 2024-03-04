package com.linecorp.linesdk.auth;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.linecorp.linesdk.auth.LineAuthenticationConfig;
import com.linecorp.linesdk.auth.internal.LineAuthenticationActivity;
import vc.c;
/* loaded from: classes4.dex */
public class a {
    @NonNull
    public static Intent a(@NonNull Context context, @NonNull LineAuthenticationConfig lineAuthenticationConfig, @NonNull LineAuthenticationParams lineAuthenticationParams) {
        if (!lineAuthenticationConfig.e()) {
            c.c(context);
        }
        return LineAuthenticationActivity.b(context, lineAuthenticationConfig, lineAuthenticationParams);
    }

    @NonNull
    public static Intent b(@NonNull Context context, @NonNull String str, @NonNull LineAuthenticationParams lineAuthenticationParams) {
        return a(context, new LineAuthenticationConfig.b(str, context).g(), lineAuthenticationParams);
    }

    @NonNull
    public static Intent c(@NonNull Context context, @NonNull String str, @NonNull LineAuthenticationParams lineAuthenticationParams) {
        return a(context, new LineAuthenticationConfig.b(str, context).h().g(), lineAuthenticationParams);
    }

    @NonNull
    public static LineLoginResult d(@Nullable Intent intent) {
        if (intent == null) {
            return LineLoginResult.m("Callback intent is null");
        }
        return LineAuthenticationActivity.c(intent);
    }
}
