package com.guochao.faceshow.component.f2fmatch.proxy;

import android.content.Context;
import android.content.Intent;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&J*\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J\b\u0010\u0015\u001a\u00020\tH&J\b\u0010\u0016\u001a\u00020\tH&J\u0018\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u0007H&J\u0018\u0010\u001a\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001cH&J \u0010\u001d\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH&J\b\u0010 \u001a\u00020\tH&J\u0010\u0010!\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001fH&J\u0018\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\u001fH&¨\u0006%"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;", "Lcom/guochao/faceshow/component/f2fmatch/proxy/FilterSexDialogFinder;", "Lcom/guochao/faceshow/component/f2fmatch/proxy/MatchingTipsFinder;", "Lcom/guochao/faceshow/component/f2fmatch/proxy/PendantDialogFinder;", "diamondsEnoughToFilterGender", "", PushConstants.INTENT_ACTIVITY_NAME, "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;", "f2fMoveToMini", "", "obtainChatFragment", "Landroidx/fragment/app/Fragment;", "gcUser", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "onActivityResult", "f2fMatchActivity", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "onEnterF2f", "releaseMini", "report", "f2fMatchRoomInfo", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "setUserInfo", "viewGroup", "Landroid/view/ViewGroup;", "setVideoChatUserInfo", "f2fMatchContainer", "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;", "shouldCostFilterDiamonds", "showForbiddenLiveDialogIfNeed", "showRetryAlertDialog", "context", "Landroid/content/Context;", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface F2fProxy extends FilterSexDialogFinder, MatchingTipsFinder, PendantDialogFinder {
    boolean diamondsEnoughToFilterGender(@NotNull F2fMatchActivity f2fMatchActivity);

    void f2fMoveToMini();

    @NotNull
    Fragment obtainChatFragment(@NotNull GCUser gCUser);

    void onActivityResult(@NotNull F2fMatchActivity f2fMatchActivity, int i9, int i10, @Nullable Intent intent);

    void onEnterF2f();

    void releaseMini();

    void report(@NotNull F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo, @NotNull F2fMatchActivity f2fMatchActivity);

    void setUserInfo(@NotNull GCUser gCUser, @NotNull ViewGroup viewGroup);

    void setVideoChatUserInfo(@NotNull F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo, @NotNull ViewGroup viewGroup, @NotNull F2fMatchContainer f2fMatchContainer);

    void shouldCostFilterDiamonds();

    void showForbiddenLiveDialogIfNeed(@NotNull F2fMatchContainer f2fMatchContainer);

    void showRetryAlertDialog(@NotNull Context context, @NotNull F2fMatchContainer f2fMatchContainer);
}
