package com.guochao.faceshow.session.vmstore;

import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.session.vmstore.GCViewModelStoreOwner;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/session/vmstore/GCViewModelStoreOwner;", "Landroidx/lifecycle/ViewModelStoreOwner;", "()V", "viewModelStore", "Landroidx/lifecycle/ViewModelStore;", "getViewModelStore", "lib_user_session_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GCViewModelStoreOwner implements ViewModelStoreOwner {
    @NotNull
    public static final GCViewModelStoreOwner INSTANCE = new GCViewModelStoreOwner();
    @NotNull
    private static ViewModelStore viewModelStore;

    static {
        UserSessionViewModel.Companion.instance().bind(null, new Observer() { // from class: db.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                GCViewModelStoreOwner.m737_init_$lambda0((UserSessionModel) obj);
            }
        });
        viewModelStore = new ViewModelStore();
    }

    private GCViewModelStoreOwner() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m737_init_$lambda0(UserSessionModel userSessionModel) {
        if (userSessionModel == null) {
            viewModelStore.clear();
        } else {
            viewModelStore = new ViewModelStore();
        }
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    @NotNull
    public ViewModelStore getViewModelStore() {
        return viewModelStore;
    }
}
