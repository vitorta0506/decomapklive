package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.d;
import com.bumptech.glide.load.resource.bitmap.r;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import v0.j;
import v0.k;
/* loaded from: classes.dex */
public class h implements Handler.Callback {

    /* renamed from: j  reason: collision with root package name */
    private static final b f4650j = new a();

    /* renamed from: a  reason: collision with root package name */
    private volatile com.bumptech.glide.h f4651a;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f4654d;

    /* renamed from: e  reason: collision with root package name */
    private final b f4655e;

    /* renamed from: i  reason: collision with root package name */
    private final g f4659i;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final Map<FragmentManager, RequestManagerFragment> f4652b = new HashMap();
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final Map<androidx.fragment.app.FragmentManager, SupportRequestManagerFragment> f4653c = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private final ArrayMap<View, Fragment> f4656f = new ArrayMap<>();

    /* renamed from: g  reason: collision with root package name */
    private final ArrayMap<View, android.app.Fragment> f4657g = new ArrayMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final Bundle f4658h = new Bundle();

    /* loaded from: classes.dex */
    class a implements b {
        a() {
        }

        @Override // com.bumptech.glide.manager.h.b
        @NonNull
        public com.bumptech.glide.h a(@NonNull com.bumptech.glide.c cVar, @NonNull p0.e eVar, @NonNull p0.h hVar, @NonNull Context context) {
            return new com.bumptech.glide.h(cVar, eVar, hVar, context);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        @NonNull
        com.bumptech.glide.h a(@NonNull com.bumptech.glide.c cVar, @NonNull p0.e eVar, @NonNull p0.h hVar, @NonNull Context context);
    }

    public h(@Nullable b bVar, com.bumptech.glide.f fVar) {
        this.f4655e = bVar == null ? f4650j : bVar;
        this.f4654d = new Handler(Looper.getMainLooper(), this);
        this.f4659i = b(fVar);
    }

    private static void a(@NonNull Activity activity) {
        if (activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    private static g b(com.bumptech.glide.f fVar) {
        if (r.f4542h && r.f4541g) {
            if (fVar.a(d.e.class)) {
                return new e();
            }
            return new f();
        }
        return new c();
    }

    @Nullable
    private static Activity c(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return c(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @Deprecated
    private void d(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        if (Build.VERSION.SDK_INT >= 26) {
            for (android.app.Fragment fragment : fragmentManager.getFragments()) {
                if (fragment.getView() != null) {
                    arrayMap.put(fragment.getView(), fragment);
                    d(fragment.getChildFragmentManager(), arrayMap);
                }
            }
            return;
        }
        e(fragmentManager, arrayMap);
    }

    @Deprecated
    private void e(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        int i9 = 0;
        while (true) {
            int i10 = i9 + 1;
            this.f4658h.putInt("key", i9);
            android.app.Fragment fragment = null;
            try {
                fragment = fragmentManager.getFragment(this.f4658h, "key");
            } catch (Exception unused) {
            }
            if (fragment == null) {
                return;
            }
            if (fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                d(fragment.getChildFragmentManager(), arrayMap);
            }
            i9 = i10;
        }
    }

    private static void f(@Nullable Collection<Fragment> collection, @NonNull Map<View, Fragment> map) {
        if (collection == null) {
            return;
        }
        for (Fragment fragment : collection) {
            if (fragment != null && fragment.getView() != null) {
                map.put(fragment.getView(), fragment);
                f(fragment.getChildFragmentManager().getFragments(), map);
            }
        }
    }

    @Nullable
    @Deprecated
    private android.app.Fragment g(@NonNull View view, @NonNull Activity activity) {
        this.f4657g.clear();
        d(activity.getFragmentManager(), this.f4657g);
        View findViewById = activity.findViewById(16908290);
        android.app.Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f4657g.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f4657g.clear();
        return fragment;
    }

    @Nullable
    private Fragment h(@NonNull View view, @NonNull FragmentActivity fragmentActivity) {
        this.f4656f.clear();
        f(fragmentActivity.getSupportFragmentManager().getFragments(), this.f4656f);
        View findViewById = fragmentActivity.findViewById(16908290);
        Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f4656f.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f4656f.clear();
        return fragment;
    }

    @NonNull
    @Deprecated
    private com.bumptech.glide.h i(@NonNull Context context, @NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z10) {
        RequestManagerFragment r10 = r(fragmentManager, fragment);
        com.bumptech.glide.h e10 = r10.e();
        if (e10 == null) {
            e10 = this.f4655e.a(com.bumptech.glide.c.c(context), r10.c(), r10.f(), context);
            if (z10) {
                e10.onStart();
            }
            r10.k(e10);
        }
        return e10;
    }

    @NonNull
    private com.bumptech.glide.h p(@NonNull Context context) {
        if (this.f4651a == null) {
            synchronized (this) {
                if (this.f4651a == null) {
                    this.f4651a = this.f4655e.a(com.bumptech.glide.c.c(context.getApplicationContext()), new com.bumptech.glide.manager.b(), new d(), context.getApplicationContext());
                }
            }
        }
        return this.f4651a;
    }

    @NonNull
    private RequestManagerFragment r(@NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment) {
        RequestManagerFragment requestManagerFragment = this.f4652b.get(fragmentManager);
        if (requestManagerFragment == null) {
            RequestManagerFragment requestManagerFragment2 = (RequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
            if (requestManagerFragment2 == null) {
                requestManagerFragment2 = new RequestManagerFragment();
                requestManagerFragment2.j(fragment);
                this.f4652b.put(fragmentManager, requestManagerFragment2);
                fragmentManager.beginTransaction().add(requestManagerFragment2, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f4654d.obtainMessage(1, fragmentManager).sendToTarget();
            }
            return requestManagerFragment2;
        }
        return requestManagerFragment;
    }

    @NonNull
    private SupportRequestManagerFragment t(@NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment) {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f4653c.get(fragmentManager);
        if (supportRequestManagerFragment == null) {
            SupportRequestManagerFragment supportRequestManagerFragment2 = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
            if (supportRequestManagerFragment2 == null) {
                supportRequestManagerFragment2 = new SupportRequestManagerFragment();
                supportRequestManagerFragment2.Z1(fragment);
                this.f4653c.put(fragmentManager, supportRequestManagerFragment2);
                fragmentManager.beginTransaction().add(supportRequestManagerFragment2, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f4654d.obtainMessage(2, fragmentManager).sendToTarget();
            }
            return supportRequestManagerFragment2;
        }
        return supportRequestManagerFragment;
    }

    private static boolean u(Context context) {
        Activity c10 = c(context);
        return c10 == null || !c10.isFinishing();
    }

    @NonNull
    private com.bumptech.glide.h v(@NonNull Context context, @NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z10) {
        SupportRequestManagerFragment t10 = t(fragmentManager, fragment);
        com.bumptech.glide.h T1 = t10.T1();
        if (T1 == null) {
            T1 = this.f4655e.a(com.bumptech.glide.c.c(context), t10.R1(), t10.U1(), context);
            if (z10) {
                T1.onStart();
            }
            t10.a2(T1);
        }
        return T1;
    }

    private boolean w(FragmentManager fragmentManager, boolean z10) {
        RequestManagerFragment requestManagerFragment = this.f4652b.get(fragmentManager);
        RequestManagerFragment requestManagerFragment2 = (RequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (requestManagerFragment2 == requestManagerFragment) {
            return true;
        }
        if (requestManagerFragment2 != null && requestManagerFragment2.e() != null) {
            throw new IllegalStateException("We've added two fragments with requests! Old: " + requestManagerFragment2 + " New: " + requestManagerFragment);
        } else if (!z10 && !fragmentManager.isDestroyed()) {
            FragmentTransaction add = fragmentManager.beginTransaction().add(requestManagerFragment, "com.bumptech.glide.manager");
            if (requestManagerFragment2 != null) {
                add.remove(requestManagerFragment2);
            }
            add.commitAllowingStateLoss();
            this.f4654d.obtainMessage(1, 1, 0, fragmentManager).sendToTarget();
            if (Log.isLoggable("RMRetriever", 3)) {
                Log.d("RMRetriever", "We failed to add our Fragment the first time around, trying again...");
            }
            return false;
        } else {
            if (Log.isLoggable("RMRetriever", 5)) {
                if (fragmentManager.isDestroyed()) {
                    Log.w("RMRetriever", "Parent was destroyed before our Fragment could be added");
                } else {
                    Log.w("RMRetriever", "Tried adding Fragment twice and failed twice, giving up!");
                }
            }
            requestManagerFragment.c().c();
            return true;
        }
    }

    private boolean x(androidx.fragment.app.FragmentManager fragmentManager, boolean z10) {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f4653c.get(fragmentManager);
        SupportRequestManagerFragment supportRequestManagerFragment2 = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (supportRequestManagerFragment2 == supportRequestManagerFragment) {
            return true;
        }
        if (supportRequestManagerFragment2 != null && supportRequestManagerFragment2.T1() != null) {
            throw new IllegalStateException("We've added two fragments with requests! Old: " + supportRequestManagerFragment2 + " New: " + supportRequestManagerFragment);
        } else if (!z10 && !fragmentManager.isDestroyed()) {
            androidx.fragment.app.FragmentTransaction add = fragmentManager.beginTransaction().add(supportRequestManagerFragment, "com.bumptech.glide.manager");
            if (supportRequestManagerFragment2 != null) {
                add.remove(supportRequestManagerFragment2);
            }
            add.commitNowAllowingStateLoss();
            this.f4654d.obtainMessage(2, 1, 0, fragmentManager).sendToTarget();
            if (Log.isLoggable("RMRetriever", 3)) {
                Log.d("RMRetriever", "We failed to add our Fragment the first time around, trying again...");
            }
            return false;
        } else {
            if (fragmentManager.isDestroyed()) {
                if (Log.isLoggable("RMRetriever", 5)) {
                    Log.w("RMRetriever", "Parent was destroyed before our Fragment could be added, all requests for the destroyed parent are cancelled");
                }
            } else if (Log.isLoggable("RMRetriever", 6)) {
                Log.e("RMRetriever", "ERROR: Tried adding Fragment twice and failed twice, giving up and cancelling all associated requests! This probably means you're starting loads in a unit test with an Activity that you haven't created and never create. If you're using Robolectric, create the Activity as part of your test setup");
            }
            supportRequestManagerFragment.R1().c();
            return true;
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        FragmentManager fragmentManager;
        FragmentManager fragmentManager2;
        boolean z10 = false;
        boolean z11 = true;
        boolean z12 = message.arg1 == 1;
        int i9 = message.what;
        Object obj = null;
        if (i9 == 1) {
            FragmentManager fragmentManager3 = (FragmentManager) message.obj;
            if (w(fragmentManager3, z12)) {
                obj = this.f4652b.remove(fragmentManager3);
                fragmentManager2 = fragmentManager3;
                z10 = true;
                fragmentManager = fragmentManager2;
            }
            fragmentManager = null;
        } else if (i9 != 2) {
            fragmentManager = null;
            z11 = false;
        } else {
            androidx.fragment.app.FragmentManager fragmentManager4 = (androidx.fragment.app.FragmentManager) message.obj;
            if (x(fragmentManager4, z12)) {
                obj = this.f4653c.remove(fragmentManager4);
                fragmentManager2 = fragmentManager4;
                z10 = true;
                fragmentManager = fragmentManager2;
            }
            fragmentManager = null;
        }
        if (Log.isLoggable("RMRetriever", 5) && z10 && obj == null) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + fragmentManager);
        }
        return z11;
    }

    @NonNull
    public com.bumptech.glide.h j(@NonNull Activity activity) {
        if (k.r()) {
            return l(activity.getApplicationContext());
        }
        if (activity instanceof FragmentActivity) {
            return o((FragmentActivity) activity);
        }
        a(activity);
        this.f4659i.a(activity);
        return i(activity, activity.getFragmentManager(), null, u(activity));
    }

    @NonNull
    @Deprecated
    public com.bumptech.glide.h k(@NonNull android.app.Fragment fragment) {
        if (fragment.getActivity() != null) {
            if (!k.r()) {
                if (fragment.getActivity() != null) {
                    this.f4659i.a(fragment.getActivity());
                }
                return i(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
            }
            return l(fragment.getActivity().getApplicationContext());
        }
        throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
    }

    @NonNull
    public com.bumptech.glide.h l(@NonNull Context context) {
        if (context != null) {
            if (k.s() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return o((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return j((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return l(contextWrapper.getBaseContext());
                    }
                }
            }
            return p(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    @NonNull
    public com.bumptech.glide.h m(@NonNull View view) {
        if (k.r()) {
            return l(view.getContext().getApplicationContext());
        }
        j.d(view);
        j.e(view.getContext(), "Unable to obtain a request manager for a view without a Context");
        Activity c10 = c(view.getContext());
        if (c10 == null) {
            return l(view.getContext().getApplicationContext());
        }
        if (c10 instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) c10;
            Fragment h10 = h(view, fragmentActivity);
            return h10 != null ? n(h10) : o(fragmentActivity);
        }
        android.app.Fragment g10 = g(view, c10);
        if (g10 == null) {
            return j(c10);
        }
        return k(g10);
    }

    @NonNull
    public com.bumptech.glide.h n(@NonNull Fragment fragment) {
        j.e(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (k.r()) {
            return l(fragment.getContext().getApplicationContext());
        }
        if (fragment.getActivity() != null) {
            this.f4659i.a(fragment.getActivity());
        }
        return v(fragment.getContext(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    public com.bumptech.glide.h o(@NonNull FragmentActivity fragmentActivity) {
        if (k.r()) {
            return l(fragmentActivity.getApplicationContext());
        }
        a(fragmentActivity);
        this.f4659i.a(fragmentActivity);
        return v(fragmentActivity, fragmentActivity.getSupportFragmentManager(), null, u(fragmentActivity));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @Deprecated
    public RequestManagerFragment q(Activity activity) {
        return r(activity.getFragmentManager(), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public SupportRequestManagerFragment s(androidx.fragment.app.FragmentManager fragmentManager) {
        return t(fragmentManager, null);
    }
}
