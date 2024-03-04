package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
@Deprecated
/* loaded from: classes.dex */
public class RequestManagerFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.manager.a f4633a;

    /* renamed from: b  reason: collision with root package name */
    private final p0.h f4634b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<RequestManagerFragment> f4635c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.bumptech.glide.h f4636d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private RequestManagerFragment f4637e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Fragment f4638f;

    /* loaded from: classes.dex */
    private class a implements p0.h {
        a() {
        }

        @Override // p0.h
        @NonNull
        public Set<com.bumptech.glide.h> a() {
            Set<RequestManagerFragment> b10 = RequestManagerFragment.this.b();
            HashSet hashSet = new HashSet(b10.size());
            for (RequestManagerFragment requestManagerFragment : b10) {
                if (requestManagerFragment.e() != null) {
                    hashSet.add(requestManagerFragment.e());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + RequestManagerFragment.this + "}";
        }
    }

    public RequestManagerFragment() {
        this(new com.bumptech.glide.manager.a());
    }

    private void a(RequestManagerFragment requestManagerFragment) {
        this.f4635c.add(requestManagerFragment);
    }

    @Nullable
    private Fragment d() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f4638f;
    }

    private boolean g(@NonNull Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 == null) {
                return false;
            }
            if (parentFragment2.equals(parentFragment)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    private void h(@NonNull Activity activity) {
        l();
        RequestManagerFragment q10 = com.bumptech.glide.c.c(activity).k().q(activity);
        this.f4637e = q10;
        if (equals(q10)) {
            return;
        }
        this.f4637e.a(this);
    }

    private void i(RequestManagerFragment requestManagerFragment) {
        this.f4635c.remove(requestManagerFragment);
    }

    private void l() {
        RequestManagerFragment requestManagerFragment = this.f4637e;
        if (requestManagerFragment != null) {
            requestManagerFragment.i(this);
            this.f4637e = null;
        }
    }

    @NonNull
    Set<RequestManagerFragment> b() {
        if (equals(this.f4637e)) {
            return Collections.unmodifiableSet(this.f4635c);
        }
        if (this.f4637e != null) {
            HashSet hashSet = new HashSet();
            for (RequestManagerFragment requestManagerFragment : this.f4637e.b()) {
                if (g(requestManagerFragment.getParentFragment())) {
                    hashSet.add(requestManagerFragment);
                }
            }
            return Collections.unmodifiableSet(hashSet);
        }
        return Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public com.bumptech.glide.manager.a c() {
        return this.f4633a;
    }

    @Nullable
    public com.bumptech.glide.h e() {
        return this.f4636d;
    }

    @NonNull
    public p0.h f() {
        return this.f4634b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(@Nullable Fragment fragment) {
        this.f4638f = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        h(fragment.getActivity());
    }

    public void k(@Nullable com.bumptech.glide.h hVar) {
        this.f4636d = hVar;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            h(activity);
        } catch (IllegalStateException e10) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e10);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f4633a.c();
        l();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        l();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f4633a.d();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f4633a.e();
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + d() + "}";
    }

    @VisibleForTesting
    RequestManagerFragment(@NonNull com.bumptech.glide.manager.a aVar) {
        this.f4634b = new a();
        this.f4635c = new HashSet();
        this.f4633a = aVar;
    }
}
