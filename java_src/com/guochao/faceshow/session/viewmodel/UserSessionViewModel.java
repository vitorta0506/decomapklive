package com.guochao.faceshow.session.viewmodel;

import android.os.Looper;
import androidx.lifecycle.ViewModelProvider;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/session/model/UserSessionModel;", "()V", "updateUserSession", "", "userSessionModel", "Companion", "lib_user_session_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserSessionViewModel extends BaseViewModel<UserSessionModel> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private static UserSessionViewModel instance;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007R\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;", "", "()V", "instance", "Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;", "getInstance$annotations", "lib_user_session_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        private static /* synthetic */ void getInstance$annotations() {
        }

        @JvmStatic
        @NotNull
        public final UserSessionViewModel instance() {
            UserSessionViewModel userSessionViewModel = UserSessionViewModel.instance;
            if (userSessionViewModel == null) {
                GCApplication app = GCApplication.app();
                Intrinsics.checkNotNullExpressionValue(app, "app()");
                UserSessionViewModel userSessionViewModel2 = (UserSessionViewModel) new ViewModelProvider(app).get(UserSessionViewModel.class);
                Companion companion = UserSessionViewModel.Companion;
                UserSessionViewModel.instance = userSessionViewModel2;
                return userSessionViewModel2;
            }
            return userSessionViewModel;
        }
    }

    @JvmStatic
    @NotNull
    public static final UserSessionViewModel instance() {
        return Companion.instance();
    }

    public final void updateUserSession(@Nullable UserSessionModel userSessionModel) {
        if (Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper())) {
            getModelLiveData().setValue(userSessionModel);
        } else {
            getModelLiveData().postValue(userSessionModel);
        }
    }
}
