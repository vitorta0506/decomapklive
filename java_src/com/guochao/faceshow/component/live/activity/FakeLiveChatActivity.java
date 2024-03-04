package com.guochao.faceshow.component.live.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment;
import com.guochao.faceshow.gift.SendGiftCallBack;
import com.guochao.faceshow.utils.DensityUtil;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
import u8.a;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001/B\u0005¢\u0006\u0002\u0010\u0002J#\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\n\b\u0000\u0010\u0016*\u0004\u0018\u00010\u00102\u0006\u0010\u0017\u001a\u00020\u0018H\u0016¢\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001bH\u0016J\b\u0010\u001f\u001a\u00020\u001dH\u0014J\b\u0010 \u001a\u00020\u001bH\u0016J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u0018H\u0016J\b\u0010#\u001a\u00020\u001bH\u0016J\b\u0010$\u001a\u00020\u001bH\u0014J\u0018\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u00182\u0006\u0010'\u001a\u00020\u0018H\u0016J\b\u0010(\u001a\u00020\u001dH\u0016J$\u0010)\u001a\u00020\u001b2\b\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020\u00182\b\u0010-\u001a\u0004\u0018\u00010.H\u0017R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u00060"}, d2 = {"Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;", "Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;", "()V", "modeChangeListener", "Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;", "getModeChangeListener", "()Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;", "setModeChangeListener", "(Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;)V", "parentFragment", "Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;", "getParentFragment", "()Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;", "setParentFragment", "(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;)V", "realView", "Landroid/view/View;", "getRealView", "()Landroid/view/View;", "setRealView", "(Landroid/view/View;)V", "findViewById", ExifInterface.GPS_DIRECTION_TRUE, "id", "", "(I)Landroid/view/View;", "initChatControl", "", "showToast", "", "initView", "listenKeyboard", "onBackPressed", "onChatInputModeChanged", "mode", "onContentChanged", "onDestroy", "onKeyboardHeightChanged", "height", AdUnitActivity.EXTRA_ORIENTATION, "shouldShowLiveFloatWindow", "startActivityForResult", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "Landroid/content/Intent;", "requestCode", "options", "Landroid/os/Bundle;", "InputModeChangeListener", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class FakeLiveChatActivity extends ChatActivity {
    @Nullable
    private InputModeChangeListener modeChangeListener;
    @Nullable
    private LiveIMChatFloatFragment parentFragment;
    @Nullable
    private View realView;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;", "", "onInputModeChange", "", "mode", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public interface InputModeChangeListener {
        void onInputModeChange(int i9);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    @Nullable
    public <T extends View> T findViewById(int i9) {
        if (i9 == 16908290) {
            View view = this.realView;
            if (view != null) {
                return (T) view.findViewById(R.id.content);
            }
            return null;
        }
        T t10 = (T) super.findViewById(i9);
        if (t10 != null) {
            return t10;
        }
        View view2 = this.realView;
        if (view2 != null) {
            return (T) view2.findViewById(i9);
        }
        return null;
    }

    @Nullable
    public final InputModeChangeListener getModeChangeListener() {
        return this.modeChangeListener;
    }

    @Nullable
    public final LiveIMChatFloatFragment getParentFragment() {
        return this.parentFragment;
    }

    @Nullable
    public final View getRealView() {
        return this.realView;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity
    public void initChatControl(boolean z10) {
        super.initChatControl(z10);
        LiveIMChatFloatFragment liveIMChatFloatFragment = this.parentFragment;
        if (liveIMChatFloatFragment != null) {
            liveIMChatFloatFragment.refreshStatus(this.mChatStatusBean);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "window.decorView");
        decorView.findViewById(R.id.stbp_view).setVisibility(8);
        decorView.findViewById(R.id.im_title_bar).setVisibility(8);
        getWindow().setBackgroundDrawableResource(R.color.transparent);
        getWindow().getDecorView().setBackgroundResource(R.color.transparent);
        decorView.findViewById(R.id.chat_content).setBackgroundResource(R.color.grey100);
        this.mRecyclerView.setMinimumHeight(DensityUtil.dp2px(150.0f));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity
    protected boolean listenKeyboard() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Activity parent = getParent();
        if (parent != null) {
            parent.onBackPressed();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity
    public void onChatInputModeChanged(int i9) {
        super.onChatInputModeChanged(i9);
        InputModeChangeListener inputModeChangeListener = this.modeChangeListener;
        if (inputModeChangeListener != null) {
            inputModeChangeListener.onInputModeChange(i9);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        this.realView = findViewById(R.id.content);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity, com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.parentFragment = null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity, com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public void onKeyboardHeightChanged(int i9, int i10) {
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void onSelectGift(int i9, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, String str, String str2) {
        a.a(this, i9, resourceCategoryItem, resourceListItemBean, str, str2);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity, u8.b
    public /* bridge */ /* synthetic */ void onSelectGift(GiftFragment giftFragment, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List list, int i9, boolean z10, int i10, SendGiftCallBack sendGiftCallBack) {
        a.c(this, giftFragment, resourceCategoryItem, resourceListItemBean, list, i9, z10, i10, sendGiftCallBack);
    }

    public final void setModeChangeListener(@Nullable InputModeChangeListener inputModeChangeListener) {
        this.modeChangeListener = inputModeChangeListener;
    }

    public final void setParentFragment(@Nullable LiveIMChatFloatFragment liveIMChatFloatFragment) {
        this.parentFragment = liveIMChatFloatFragment;
    }

    public final void setRealView(@Nullable View view) {
        this.realView = view;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean shouldShowLiveFloatWindow() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    @Deprecated(message = "Deprecated in Java")
    public void startActivityForResult(@Nullable Intent intent, int i9, @Nullable Bundle bundle) {
        LiveIMChatFloatFragment liveIMChatFloatFragment = this.parentFragment;
        if (liveIMChatFloatFragment != null) {
            liveIMChatFloatFragment.startActivityForResult(intent, i9, bundle);
        }
    }
}
