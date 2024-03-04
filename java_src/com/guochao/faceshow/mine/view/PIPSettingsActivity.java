package com.guochao.faceshow.mine.view;

import android.app.Activity;
import android.app.AppOpsManager;
import android.content.Context;
import android.os.Bundle;
import android.widget.CompoundButton;
import b8.e;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.databinding.ActivityPipSettingBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00142\u00020\u00012\u00020\u0002:\u0001\u0014B\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/mine/view/PIPSettingsActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "()V", "viewBinding", "Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/ActivityPipSettingBinding;)V", "initView", "", "savedInstanceSate", "Landroid/os/Bundle;", "onCheckedChanged", "p0", "Landroid/widget/CompoundButton;", "p1", "", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class PIPSettingsActivity extends GCCoreActivity implements CompoundButton.OnCheckedChangeListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String SP_KEY_PIP_WATCHER = "SP_KEY_PIP_WATCHER";
    public ActivityPipSettingBinding viewBinding;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\bJ\u000e\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/mine/view/PIPSettingsActivity$Companion;", "", "()V", PIPSettingsActivity.SP_KEY_PIP_WATCHER, "", "finishWatcherActivity", "", "hasPermissions", "", "content", "Landroid/content/Context;", "setWatcherSwitch", "isOpen", "watcherIsOpen", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void finishWatcherActivity() {
            if (AppManager.getInstance().getActivity(WatchLiveRoomActivity.class) != null) {
                Activity activity = AppManager.getInstance().getActivity(WatchLiveRoomActivity.class);
                Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity");
                WatchLiveRoomActivity watchLiveRoomActivity = (WatchLiveRoomActivity) activity;
                if (AppManager.getInstance().containActivity(watchLiveRoomActivity)) {
                    watchLiveRoomActivity.finish(false);
                }
            }
        }

        public final boolean hasPermissions(@NotNull Context content) {
            Intrinsics.checkNotNullParameter(content, "content");
            try {
                Object systemService = content.getSystemService("appops");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.AppOpsManager");
                return ((AppOpsManager) systemService).checkOpNoThrow("android:picture_in_picture", content.getApplicationInfo().uid, content.getPackageName()) == 0;
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public final void setWatcherSwitch(@NotNull Context content, boolean z10) {
            Intrinsics.checkNotNullParameter(content, "content");
            SpUtils.setBool(content, PIPSettingsActivity.SP_KEY_PIP_WATCHER + e.g().c().getCurrentUserId(), z10);
        }

        public final boolean watcherIsOpen(@NotNull Context content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return SpUtils.getBool(content, PIPSettingsActivity.SP_KEY_PIP_WATCHER + e.g().c().getCurrentUserId(), true);
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    @NotNull
    public final ActivityPipSettingBinding getViewBinding() {
        ActivityPipSettingBinding activityPipSettingBinding = this.viewBinding;
        if (activityPipSettingBinding != null) {
            return activityPipSettingBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(R.string.setting_pip_setting);
        getViewBinding().watcherCheck.setChecked(Companion.watcherIsOpen(this));
        getViewBinding().watcherCheck.setOnCheckedChangeListener(this);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(@Nullable CompoundButton compoundButton, boolean z10) {
        Integer valueOf = compoundButton != null ? Integer.valueOf(compoundButton.getId()) : null;
        if (valueOf != null && valueOf.intValue() == R.id.watcher_check) {
            Companion companion = Companion;
            companion.setWatcherSwitch(this, z10);
            if (!z10 || companion.hasPermissions(this)) {
                return;
            }
            ToastUtils.showToast$default(this, R.string.setting_pip_setting_permission, 0, 4, null);
        }
    }

    public final void setViewBinding(@NotNull ActivityPipSettingBinding activityPipSettingBinding) {
        Intrinsics.checkNotNullParameter(activityPipSettingBinding, "<set-?>");
        this.viewBinding = activityPipSettingBinding;
    }
}
