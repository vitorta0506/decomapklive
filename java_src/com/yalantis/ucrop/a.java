package com.yalantis.ucrop;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Intent f37649a = new Intent();

    /* renamed from: b  reason: collision with root package name */
    private Bundle f37650b;

    /* renamed from: com.yalantis.ucrop.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0372a {

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f37651a = new Bundle();

        @NonNull
        public Bundle a() {
            return this.f37651a;
        }

        public void b(@IntRange(from = 0) int i9) {
            this.f37651a.putInt("com.yalantis.ucrop.CompressionQuality", i9);
        }

        public void c(boolean z10) {
            this.f37651a.putBoolean("com.yalantis.ucrop.FreeStyleCrop", z10);
        }

        public void d(boolean z10) {
            this.f37651a.putBoolean("com.yalantis.ucrop.HideBottomControls", z10);
        }
    }

    private a(@NonNull Uri uri, @NonNull Uri uri2) {
        Bundle bundle = new Bundle();
        this.f37650b = bundle;
        bundle.putParcelable("com.yalantis.ucrop.InputUri", uri);
        this.f37650b.putParcelable("com.yalantis.ucrop.OutputUri", uri2);
    }

    @Nullable
    public static Uri b(@NonNull Intent intent) {
        return (Uri) intent.getParcelableExtra("com.yalantis.ucrop.OutputUri");
    }

    public static a c(@NonNull Uri uri, @NonNull Uri uri2) {
        return new a(uri, uri2);
    }

    public Intent a(@NonNull Context context) {
        this.f37649a.setClass(context, UCropActivity.class);
        this.f37649a.putExtras(this.f37650b);
        return this.f37649a;
    }

    public void d(@NonNull Activity activity) {
        e(activity, 69);
    }

    public void e(@NonNull Activity activity, int i9) {
        activity.startActivityForResult(a(activity), i9);
    }

    public void f(@NonNull Context context, @NonNull Fragment fragment) {
        g(context, fragment, 69);
    }

    public void g(@NonNull Context context, @NonNull Fragment fragment, int i9) {
        fragment.startActivityForResult(a(context), i9);
    }

    public a h(float f10, float f11) {
        this.f37650b.putFloat("com.yalantis.ucrop.AspectRatioX", f10);
        this.f37650b.putFloat("com.yalantis.ucrop.AspectRatioY", f11);
        return this;
    }

    public a i(@NonNull C0372a c0372a) {
        this.f37650b.putAll(c0372a.a());
        return this;
    }
}
