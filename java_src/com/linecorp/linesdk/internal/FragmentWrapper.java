package com.linecorp.linesdk.internal;

import android.app.Fragment;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class FragmentWrapper {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Fragment f28147a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private androidx.fragment.app.Fragment f28148b;

    public FragmentWrapper(@NonNull Fragment fragment) {
        this.f28147a = fragment;
    }

    public void a(Intent intent, int i9) {
        Fragment fragment = this.f28147a;
        if (fragment != null) {
            fragment.startActivityForResult(intent, i9);
            return;
        }
        androidx.fragment.app.Fragment fragment2 = this.f28148b;
        if (fragment2 != null) {
            fragment2.startActivityForResult(intent, i9);
        }
    }

    public FragmentWrapper(@NonNull androidx.fragment.app.Fragment fragment) {
        this.f28148b = fragment;
    }
}
