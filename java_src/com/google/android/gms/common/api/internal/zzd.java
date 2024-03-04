package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class zzd extends Fragment implements v3.e {

    /* renamed from: d  reason: collision with root package name */
    private static final WeakHashMap f7618d = new WeakHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final Map f7619a = Collections.synchronizedMap(new ArrayMap());

    /* renamed from: b  reason: collision with root package name */
    private int f7620b = 0;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Bundle f7621c;

    public static zzd R1(FragmentActivity fragmentActivity) {
        zzd zzdVar;
        WeakHashMap weakHashMap = f7618d;
        WeakReference weakReference = (WeakReference) weakHashMap.get(fragmentActivity);
        if (weakReference == null || (zzdVar = (zzd) weakReference.get()) == null) {
            try {
                zzd zzdVar2 = (zzd) fragmentActivity.getSupportFragmentManager().findFragmentByTag("SupportLifecycleFragmentImpl");
                if (zzdVar2 == null || zzdVar2.isRemoving()) {
                    zzdVar2 = new zzd();
                    fragmentActivity.getSupportFragmentManager().beginTransaction().add(zzdVar2, "SupportLifecycleFragmentImpl").commitAllowingStateLoss();
                }
                weakHashMap.put(fragmentActivity, new WeakReference(zzdVar2));
                return zzdVar2;
            } catch (ClassCastException e10) {
                throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e10);
            }
        }
        return zzdVar;
    }

    @Override // v3.e
    @Nullable
    public final <T extends LifecycleCallback> T N(String str, Class<T> cls) {
        return cls.cast(this.f7619a.get(str));
    }

    @Override // v3.e
    @Nullable
    public final /* synthetic */ Activity W0() {
        return getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    public final void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f7619a.values()) {
            lifecycleCallback.a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // v3.e
    public final void i(String str, @NonNull LifecycleCallback lifecycleCallback) {
        if (!this.f7619a.containsKey(str)) {
            this.f7619a.put(str, lifecycleCallback);
            if (this.f7620b > 0) {
                new com.google.android.gms.internal.common.n(Looper.getMainLooper()).post(new i0(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("LifecycleCallback with tag " + str + " already added to this fragment.");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        for (LifecycleCallback lifecycleCallback : this.f7619a.values()) {
            lifecycleCallback.e(i9, i10, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f7620b = 1;
        this.f7621c = bundle;
        for (Map.Entry entry : this.f7619a.entrySet()) {
            ((LifecycleCallback) entry.getValue()).f(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f7620b = 5;
        for (LifecycleCallback lifecycleCallback : this.f7619a.values()) {
            lifecycleCallback.g();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f7620b = 3;
        for (LifecycleCallback lifecycleCallback : this.f7619a.values()) {
            lifecycleCallback.h();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.f7619a.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((LifecycleCallback) entry.getValue()).i(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f7620b = 2;
        for (LifecycleCallback lifecycleCallback : this.f7619a.values()) {
            lifecycleCallback.j();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f7620b = 4;
        for (LifecycleCallback lifecycleCallback : this.f7619a.values()) {
            lifecycleCallback.k();
        }
    }
}
