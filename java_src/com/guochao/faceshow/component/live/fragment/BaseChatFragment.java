package com.guochao.faceshow.component.live.fragment;

import android.os.Bundle;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/component/live/fragment/BaseChatFragment;", "Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;", "()V", Contants.USER_ID, "", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "userName", "getUserName", "setUserName", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public class BaseChatFragment extends BaseEmbedActivityFragment {
    public String userId;
    public String userName;

    @NotNull
    public final String getUserId() {
        String str = this.userId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException(Contants.USER_ID);
        return null;
    }

    @NotNull
    public final String getUserName() {
        String str = this.userName;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userName");
        return null;
    }

    @Override // com.guochao.faceshow.component.live.fragment.BaseEmbedActivityFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString(Contants.USER_ID, "");
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"userId\", \"\")");
            setUserId(string);
            String string2 = arguments.getString("userName", "");
            Intrinsics.checkNotNullExpressionValue(string2, "getString(\"userName\", \"\")");
            setUserName(string2);
        }
        if (EventBus.getDefault().isRegistered(this)) {
            return;
        }
        EventBus.getDefault().register(this);
    }

    @Override // com.guochao.faceshow.component.live.fragment.BaseEmbedActivityFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    public final void setUserName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userName = str;
    }
}
