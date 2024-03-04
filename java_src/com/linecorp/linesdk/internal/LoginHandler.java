package com.linecorp.linesdk.internal;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import com.linecorp.linesdk.LoginListener;
import com.linecorp.linesdk.auth.LineAuthenticationParams;
import com.linecorp.linesdk.auth.a;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class LoginHandler {

    /* renamed from: b  reason: collision with root package name */
    private static int f28149b = 1;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<LoginListener> f28150a = new ArrayList<>();

    @NonNull
    private Intent b(@NonNull Activity activity, boolean z10, @NonNull String str, @NonNull LineAuthenticationParams lineAuthenticationParams) {
        if (z10) {
            return a.b(activity, str, lineAuthenticationParams);
        }
        return a.c(activity, str, lineAuthenticationParams);
    }

    public void a(@NonNull LoginListener loginListener) {
        this.f28150a.add(loginListener);
    }

    public void c(@NonNull Activity activity, @NonNull FragmentWrapper fragmentWrapper, boolean z10, @NonNull String str, @NonNull LineAuthenticationParams lineAuthenticationParams) {
        fragmentWrapper.a(b(activity, z10, str, lineAuthenticationParams), f28149b);
    }

    public void d(@NonNull Activity activity, boolean z10, @NonNull String str, @NonNull LineAuthenticationParams lineAuthenticationParams) {
        activity.startActivityForResult(b(activity, z10, str, lineAuthenticationParams), f28149b);
    }

    public void e(@NonNull LoginListener loginListener) {
        this.f28150a.remove(loginListener);
    }
}
