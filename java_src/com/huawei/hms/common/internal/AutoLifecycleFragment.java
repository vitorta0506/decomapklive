package com.huawei.hms.common.internal;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.util.SparseArray;
import com.huawei.hms.api.HuaweiApiClient;
/* loaded from: classes4.dex */
public class AutoLifecycleFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<a> f27277a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private boolean f27278b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final HuaweiApiClient f27279a;

        public a(int i9, HuaweiApiClient huaweiApiClient) {
            this.f27279a = huaweiApiClient;
        }

        public void a() {
            this.f27279a.disconnect();
        }
    }

    public static AutoLifecycleFragment getInstance(Activity activity) {
        Preconditions.checkMainThread("Must be called on the main thread");
        try {
            AutoLifecycleFragment autoLifecycleFragment = (AutoLifecycleFragment) activity.getFragmentManager().findFragmentByTag("HmsAutoLifecycleFrag");
            FragmentManager fragmentManager = activity.getFragmentManager();
            if (autoLifecycleFragment == null) {
                AutoLifecycleFragment autoLifecycleFragment2 = new AutoLifecycleFragment();
                fragmentManager.beginTransaction().add(autoLifecycleFragment2, "HmsAutoLifecycleFrag").commitAllowingStateLoss();
                fragmentManager.executePendingTransactions();
                return autoLifecycleFragment2;
            }
            return autoLifecycleFragment;
        } catch (ClassCastException e10) {
            throw new IllegalStateException("Fragment with tag HmsAutoLifecycleFrag is not a AutoLifecycleFragment", e10);
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f27278b = true;
        for (int i9 = 0; i9 < this.f27277a.size(); i9++) {
            this.f27277a.valueAt(i9).f27279a.connect((Activity) null);
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f27278b = false;
        for (int i9 = 0; i9 < this.f27277a.size(); i9++) {
            this.f27277a.valueAt(i9).f27279a.disconnect();
        }
    }

    public void startAutoMange(int i9, HuaweiApiClient huaweiApiClient) {
        Preconditions.checkNotNull(huaweiApiClient, "HuaweiApiClient instance cannot be null");
        boolean z10 = this.f27277a.indexOfKey(i9) < 0;
        Preconditions.checkState(z10, "Already managing a HuaweiApiClient with this clientId: " + i9);
        this.f27277a.put(i9, new a(i9, huaweiApiClient));
        if (this.f27278b) {
            huaweiApiClient.connect((Activity) null);
        }
    }

    public void stopAutoManage(int i9) {
        a aVar = this.f27277a.get(i9);
        this.f27277a.remove(i9);
        if (aVar != null) {
            aVar.a();
        }
    }
}
