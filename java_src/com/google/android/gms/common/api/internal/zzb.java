package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class zzb extends Fragment implements v3.e {

    /* renamed from: d  reason: collision with root package name */
    private static final WeakHashMap f7614d = new WeakHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final Map f7615a = Collections.synchronizedMap(new ArrayMap());

    /* renamed from: b  reason: collision with root package name */
    private int f7616b = 0;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Bundle f7617c;

    public static zzb c(Activity activity) {
        zzb zzbVar;
        WeakHashMap weakHashMap = f7614d;
        WeakReference weakReference = (WeakReference) weakHashMap.get(activity);
        if (weakReference == null || (zzbVar = (zzb) weakReference.get()) == null) {
            try {
                zzb zzbVar2 = (zzb) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
                if (zzbVar2 == null || zzbVar2.isRemoving()) {
                    zzbVar2 = new zzb();
                    activity.getFragmentManager().beginTransaction().add(zzbVar2, "LifecycleFragmentImpl").commitAllowingStateLoss();
                }
                weakHashMap.put(activity, new WeakReference(zzbVar2));
                return zzbVar2;
            } catch (ClassCastException e10) {
                throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e10);
            }
        }
        return zzbVar;
    }

    @Override // v3.e
    @Nullable
    public final <T extends LifecycleCallback> T N(String str, Class<T> cls) {
        return cls.cast(this.f7615a.get(str));
    }

    @Override // v3.e
    @Nullable
    public final Activity W0() {
        return getActivity();
    }

    @Override // android.app.Fragment
    public final void dump(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f7615a.values()) {
            lifecycleCallback.a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // v3.e
    public final void i(String str, @NonNull LifecycleCallback lifecycleCallback) {
        if (!this.f7615a.containsKey(str)) {
            this.f7615a.put(str, lifecycleCallback);
            if (this.f7616b > 0) {
                new com.google.android.gms.internal.common.n(Looper.getMainLooper()).post(new h0(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("LifecycleCallback with tag " + str + " already added to this fragment.");
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        for (LifecycleCallback lifecycleCallback : this.f7615a.values()) {
            lifecycleCallback.e(i9, i10, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f7616b = 1;
        this.f7617c = bundle;
        for (Map.Entry entry : this.f7615a.entrySet()) {
            ((LifecycleCallback) entry.getValue()).f(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f7616b = 5;
        for (LifecycleCallback lifecycleCallback : this.f7615a.values()) {
            lifecycleCallback.g();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f7616b = 3;
        for (LifecycleCallback lifecycleCallback : this.f7615a.values()) {
            lifecycleCallback.h();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.f7615a.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((LifecycleCallback) entry.getValue()).i(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f7616b = 2;
        for (LifecycleCallback lifecycleCallback : this.f7615a.values()) {
            lifecycleCallback.j();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f7616b = 4;
        for (LifecycleCallback lifecycleCallback : this.f7615a.values()) {
            lifecycleCallback.k();
        }
    }
}
