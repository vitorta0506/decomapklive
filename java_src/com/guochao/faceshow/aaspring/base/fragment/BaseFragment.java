package com.guochao.faceshow.aaspring.base.fragment;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.views.e;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public abstract class BaseFragment extends GCCoreFragment implements f7.a, i.InterfaceC0154i, com.guochao.faceshow.aaspring.base.http.callback.a {
    private boolean isDataLoaded = false;
    private e mFragmentConfig;
    protected Unbinder mUnbinder;
    private WeakReference<View> mView;

    private void enSureConfig() {
        if (this.mFragmentConfig == null) {
            this.mFragmentConfig = getFragmentConfig();
        }
    }

    private void tryLoadData() {
        if (this.isDataLoaded) {
            return;
        }
        enSureConfig();
        if (!this.mFragmentConfig.e() && getUserVisibleHint() && !isHidden() && getActivity() != null && isAdded()) {
            loadData();
            this.isDataLoaded = true;
        } else if (this.mFragmentConfig.e() && getUserVisibleHint() && !isHidden() && isVisible()) {
            loadData();
            this.isDataLoaded = true;
        }
    }

    public com.guochao.faceshow.views.e alert(CharSequence charSequence) {
        return alert(null, charSequence);
    }

    public r7.a getDataManager() {
        return z7.a.a();
    }

    public e getFragmentConfig() {
        return new e.a().e(true).a();
    }

    public abstract int getLayoutId();

    public abstract void initView(View view);

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(View view, @Nullable Bundle bundle) {
        initView(view);
    }

    protected abstract void loadData();

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        tryLoadData();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        enSureConfig();
        i.u().registerOnServerConfigChangedListener(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        WeakReference<View> weakReference;
        View view;
        int layoutId = getLayoutId();
        if (layoutId != 0) {
            if (reuseView() && (weakReference = this.mView) != null && (view = weakReference.get()) != null) {
                ViewParent parent = view.getParent();
                if (parent == null) {
                    this.mUnbinder = ButterKnife.c(this, view);
                    return view;
                } else if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                    this.mUnbinder = ButterKnife.c(this, view);
                    return view;
                }
            }
            View inflate = layoutInflater.inflate(layoutId, viewGroup, false);
            this.mView = new WeakReference<>(inflate);
            this.mUnbinder = ButterKnife.c(this, inflate);
            initView(inflate, bundle);
            tryLoadData();
            return inflate;
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        i.u().unregisterOnServerConfigChangedListener(this);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z10) {
        super.onHiddenChanged(z10);
        tryLoadData();
    }

    @Override // com.guochao.faceshow.aaspring.manager.i.InterfaceC0154i
    public void onServerConfigChanged(ServerConfig serverConfig, ServerConfig serverConfig2) {
    }

    public void print(String str, String str2) {
        com.guochao.faceshow.aaspring.debug.a.b().a(str, str2);
    }

    @Override // com.guochao.faceshow.aaspring.base.http.callback.a
    public void recordError(g7.a<?> aVar, String str) {
        if (getActivity() instanceof com.guochao.faceshow.aaspring.base.http.callback.a) {
            ((com.guochao.faceshow.aaspring.base.http.callback.a) getActivity()).recordError(aVar, str);
        }
    }

    public boolean reuseView() {
        return this.mFragmentConfig.h();
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z10) {
        super.setUserVisibleHint(z10);
        tryLoadData();
    }

    @Override // com.guochao.faceshow.aaspring.base.http.callback.a
    public void showError() {
        if (getActivity() instanceof com.guochao.faceshow.aaspring.base.http.callback.a) {
            ((com.guochao.faceshow.aaspring.base.http.callback.a) getActivity()).showError();
        }
    }

    public void startActivity(Class<? extends Activity> cls) {
        startActivity(new Intent(getActivity(), cls));
    }

    @Override // androidx.fragment.app.Fragment
    public void startActivityForResult(Intent intent, int i9, @Nullable Bundle bundle) {
        super.startActivityForResult(intent, i9, bundle);
        if (bundle != null) {
            if (Language.ARABIC.equals(q7.a.e().c())) {
                getActivity().overridePendingTransition(R.anim.fragment_enter_rtl, R.anim.fragment_exit_rtl);
            } else {
                getActivity().overridePendingTransition(R.anim.fragment_enter, R.anim.fragment_exit);
            }
        }
    }

    public com.guochao.faceshow.views.e alert(CharSequence charSequence, CharSequence charSequence2) {
        return alert(charSequence, charSequence2, null);
    }

    public UserBean getCurrentUser() {
        return b8.e.g().c();
    }

    @Override // androidx.fragment.app.Fragment
    public void startActivity(Intent intent, @Nullable Bundle bundle) {
        super.startActivity(intent, bundle);
        if (bundle != null) {
            if (Language.ARABIC.equals(q7.a.e().c())) {
                getActivity().overridePendingTransition(R.anim.fragment_enter_rtl, R.anim.fragment_exit_rtl);
            } else {
                getActivity().overridePendingTransition(R.anim.fragment_enter, R.anim.fragment_exit);
            }
        }
    }

    public com.guochao.faceshow.views.e alert(CharSequence charSequence, CharSequence charSequence2, e.a aVar) {
        return alert(charSequence, charSequence2, aVar, true);
    }

    public com.guochao.faceshow.views.e alert(CharSequence charSequence, CharSequence charSequence2, e.a aVar, boolean z10) {
        return alert(charSequence, charSequence2, aVar, z10, false);
    }

    public com.guochao.faceshow.views.e alert(CharSequence charSequence, CharSequence charSequence2, e.a aVar, boolean z10, boolean z11) {
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed()) {
            return null;
        }
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(getActivity(), aVar);
        if (z10) {
            eVar.j();
        }
        eVar.b(charSequence);
        eVar.f(charSequence2);
        if (z11) {
            eVar.l();
        }
        eVar.show();
        return eVar;
    }
}
