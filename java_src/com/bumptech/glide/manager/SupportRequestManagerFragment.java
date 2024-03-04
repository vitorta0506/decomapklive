package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class SupportRequestManagerFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.manager.a f4640a;

    /* renamed from: b  reason: collision with root package name */
    private final p0.h f4641b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<SupportRequestManagerFragment> f4642c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private SupportRequestManagerFragment f4643d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private com.bumptech.glide.h f4644e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Fragment f4645f;

    /* loaded from: classes.dex */
    private class a implements p0.h {
        a() {
        }

        @Override // p0.h
        @NonNull
        public Set<com.bumptech.glide.h> a() {
            Set<SupportRequestManagerFragment> Q1 = SupportRequestManagerFragment.this.Q1();
            HashSet hashSet = new HashSet(Q1.size());
            for (SupportRequestManagerFragment supportRequestManagerFragment : Q1) {
                if (supportRequestManagerFragment.T1() != null) {
                    hashSet.add(supportRequestManagerFragment.T1());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + SupportRequestManagerFragment.this + "}";
        }
    }

    public SupportRequestManagerFragment() {
        this(new com.bumptech.glide.manager.a());
    }

    private void P1(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.f4642c.add(supportRequestManagerFragment);
    }

    @Nullable
    private Fragment S1() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f4645f;
    }

    @Nullable
    private static FragmentManager V1(@NonNull Fragment fragment) {
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        return fragment.getFragmentManager();
    }

    private boolean W1(@NonNull Fragment fragment) {
        Fragment S1 = S1();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment == null) {
                return false;
            }
            if (parentFragment.equals(S1)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    private void X1(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        b2();
        SupportRequestManagerFragment s10 = com.bumptech.glide.c.c(context).k().s(fragmentManager);
        this.f4643d = s10;
        if (equals(s10)) {
            return;
        }
        this.f4643d.P1(this);
    }

    private void Y1(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.f4642c.remove(supportRequestManagerFragment);
    }

    private void b2() {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f4643d;
        if (supportRequestManagerFragment != null) {
            supportRequestManagerFragment.Y1(this);
            this.f4643d = null;
        }
    }

    @NonNull
    Set<SupportRequestManagerFragment> Q1() {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f4643d;
        if (supportRequestManagerFragment == null) {
            return Collections.emptySet();
        }
        if (equals(supportRequestManagerFragment)) {
            return Collections.unmodifiableSet(this.f4642c);
        }
        HashSet hashSet = new HashSet();
        for (SupportRequestManagerFragment supportRequestManagerFragment2 : this.f4643d.Q1()) {
            if (W1(supportRequestManagerFragment2.S1())) {
                hashSet.add(supportRequestManagerFragment2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public com.bumptech.glide.manager.a R1() {
        return this.f4640a;
    }

    @Nullable
    public com.bumptech.glide.h T1() {
        return this.f4644e;
    }

    @NonNull
    public p0.h U1() {
        return this.f4641b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Z1(@Nullable Fragment fragment) {
        FragmentManager V1;
        this.f4645f = fragment;
        if (fragment == null || fragment.getContext() == null || (V1 = V1(fragment)) == null) {
            return;
        }
        X1(fragment.getContext(), V1);
    }

    public void a2(@Nullable com.bumptech.glide.h hVar) {
        this.f4644e = hVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentManager V1 = V1(this);
        if (V1 == null) {
            if (Log.isLoggable("SupportRMFragment", 5)) {
                Log.w("SupportRMFragment", "Unable to register fragment with root, ancestor detached");
                return;
            }
            return;
        }
        try {
            X1(getContext(), V1);
        } catch (IllegalStateException e10) {
            if (Log.isLoggable("SupportRMFragment", 5)) {
                Log.w("SupportRMFragment", "Unable to register fragment with root", e10);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f4640a.c();
        b2();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f4645f = null;
        b2();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f4640a.d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f4640a.e();
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + S1() + "}";
    }

    @VisibleForTesting
    public SupportRequestManagerFragment(@NonNull com.bumptech.glide.manager.a aVar) {
        this.f4641b = new a();
        this.f4642c = new HashSet();
        this.f4640a = aVar;
    }
}
