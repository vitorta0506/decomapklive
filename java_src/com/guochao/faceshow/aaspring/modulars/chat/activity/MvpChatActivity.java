package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.content.Context;
import android.content.Intent;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.gift.SendGiftCallBack;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Route(path = RouterPath.ROUTER_APP_SERVICE)
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity;", "Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;", "()V", "getChatStatus", "", "showToast", "", "onContentChanged", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MvpChatActivity extends ChatActivity {
    @NotNull
    public static final Companion Companion = new Companion(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity$Companion;", "", "()V", "start", "", "context", "Landroid/content/Context;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void start(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.startActivity(new Intent(context, MvpChatActivity.class).putExtra(Contants.USER_ID, "iarGoHNtFX2Sbp3RrJqBWwhQEgWHjN5u").putExtra("name", "MVP"));
        }
    }

    @JvmStatic
    public static final void start(@NotNull Context context) {
        Companion.start(context);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity
    public void getChatStatus(boolean z10) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        findViewById(R.id.iv_more).setVisibility(8);
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void onSelectGift(int i9, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, String str, String str2) {
        u8.a.a(this, i9, resourceCategoryItem, resourceListItemBean, str, str2);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity, u8.b
    public /* bridge */ /* synthetic */ void onSelectGift(GiftFragment giftFragment, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List list, int i9, boolean z10, int i10, SendGiftCallBack sendGiftCallBack) {
        u8.a.c(this, giftFragment, resourceCategoryItem, resourceListItemBean, list, i9, z10, i10, sendGiftCallBack);
    }
}
