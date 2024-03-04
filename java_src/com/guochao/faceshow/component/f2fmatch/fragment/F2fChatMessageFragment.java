package com.guochao.faceshow.component.f2fmatch.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.utils.ActivityExtendsKt;
import com.guochao.faceshow.aaspring.beans.AppResource;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.models.F2fCmdMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.GiftMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage;
import com.guochao.faceshow.aaspring.modulars.gift.GiftSender;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftRequestModel;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftResponseModel;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.modulars.translate.a;
import com.guochao.faceshow.aaspring.utils.SendMessageHandle;
import com.guochao.faceshow.aaspring.views.TopFadeInRecyclerView;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.component.f2fmatch.adapter.F2fChatMessageAdapter;
import com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer;
import com.guochao.faceshow.component.f2fmatch.utils.F2fGiftAnimator;
import com.guochao.faceshow.component.f2fmatch.utils.F2fSpanTipsUtils;
import com.guochao.faceshow.databinding.FragmentF2fChatMessageBinding;
import com.guochao.faceshow.facetoface.data.GiftData;
import com.guochao.faceshow.gift.SendGiftCallBack;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.TranslateUtils;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000Í\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0006*\u0001i\u0018\u0000 m2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001mB\u0007¢\u0006\u0004\bl\u0010MJ#\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\f\u001a\u00020\tH\u0002J#\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u0007H\u0002J*\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\tH\u0002J\b\u0010\u001f\u001a\u00020\tH\u0002J\u0012\u0010\"\u001a\u00020\t2\b\u0010!\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020#2\b\u0010!\u001a\u0004\u0018\u00010 H\u0014J\b\u0010&\u001a\u00020\tH\u0016J\u0010\u0010)\u001a\u00020\t2\u0006\u0010(\u001a\u00020'H\u0007J\u0010\u0010+\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020*H\u0016J\u0010\u0010-\u001a\u00020\t2\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0018\u00101\u001a\u00020\t2\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020\u0007H\u0016J\u0010\u00103\u001a\u00020\t2\u0006\u00102\u001a\u00020.H\u0016J\u0010\u00105\u001a\u00020\t2\u0006\u00104\u001a\u00020\u0007H\u0016J\u0010\u00108\u001a\u00020\t2\u0006\u00107\u001a\u000206H\u0016J\b\u00109\u001a\u00020\tH\u0016JF\u0010@\u001a\u00020\t2\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00020;\u0018\u00010:2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010=\u001a\u00020\u00072\b\u0010?\u001a\u0004\u0018\u00010>H\u0016J\b\u0010A\u001a\u00020\tH\u0016J\b\u0010B\u001a\u00020\tH\u0016J\u0006\u0010C\u001a\u00020\tJ\u0006\u0010D\u001a\u00020\tR(\u0010F\u001a\u00020E8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\bF\u0010G\u0012\u0004\bL\u0010M\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\"\u0010/\u001a\u00020.8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b/\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR\u0018\u0010T\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0018\u0010W\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0016\u0010Y\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0016\u0010[\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010ZR\u0016\u0010\\\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010ZR\u0016\u0010]\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010ZR\u0016\u0010^\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010ZR\u0014\u0010`\u001a\u00020_8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b`\u0010aR\u0018\u0010c\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0016\u0010f\u001a\u00020e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0016\u0010h\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010ZR\u0014\u0010j\u001a\u00020i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010k¨\u0006n"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "Lcom/guochao/faceshow/aaspring/manager/im/d$a;", "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;", "Lu8/b;", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;", "giftMessage", "", "isSelf", "", "playGift", "(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;Ljava/lang/Boolean;)V", "notifyFocusEachOther", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;", "msg", "addMessage", "(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;)V", "Lcom/tencent/imsdk/v2/V2TIMMessage;", "message", "forceOnline", "sendMessageToIM", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "itemBean", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;", "categoryItem", "", Contants.USER_ID, "sendGiftResponse", "removeSpeech", "scrollToBottom", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/view/View;", "root", "initView", "onDestroyView", "Ly7/e;", "focusEvent", "onFocusEvent", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "onNewMessage", ViewHierarchyConstants.TEXT_KEY, "sendText", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "gcUser", "showFoucusMessage", "focusSomebody", "f2fMatchRoomInfo", "removeCurrentGuass", "textOrSpeech", "enterInput", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;", "f2fSpeechToTextResultModel", "sendSpeechToTextResult", "showGiftDialog", "", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;", "users", "isToken", "Lcom/guochao/faceshow/gift/SendGiftCallBack;", "sendGiftCallBack", "onSelectGift", "awakenChatRecyclerView", "detectNoFaceOnScreen", "cancelRecord", "setConversationRead", "Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;)V", "getViewBinding$annotations", "()V", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "getGcUser", "()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "setGcUser", "(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V", "Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;", "f2fGiftAnimator", "Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;", "Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;", "adapter", "Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;", "shouldTranslate", "Z", "useOnlineMessage", "speeching", "textTranslationTipsShowed", "speechTranslationTipsShowed", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;", "giftFragment", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;", "Ljava/lang/Runnable;", "hideRecyclerViewRunnable", "Ljava/lang/Runnable;", "noFaceTip", "com/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$callBack$1", "callBack", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$callBack$1;", "<init>", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class F2fChatMessageFragment extends GCCoreFragment implements d.a, F2fChatFragmentBase, u8.b {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private F2fChatMessageAdapter adapter;
    @Nullable
    private F2fGiftAnimator f2fGiftAnimator;
    public F2fMatchModel.F2fMatchRoomInfo gcUser;
    @Nullable
    private GiftFragment giftFragment;
    @Nullable
    private j8.a mGiftAnimationDispatcher;
    private boolean noFaceTip;
    private boolean shouldTranslate;
    private boolean speechTranslationTipsShowed;
    private boolean speeching;
    private boolean textTranslationTipsShowed;
    public FragmentF2fChatMessageBinding viewBinding;
    private boolean useOnlineMessage = true;
    @NotNull
    private final Handler handler = new Handler(Looper.getMainLooper());
    @NotNull
    private Runnable hideRecyclerViewRunnable = new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.c
        @Override // java.lang.Runnable
        public final void run() {
            F2fChatMessageFragment.m611hideRecyclerViewRunnable$lambda21(F2fChatMessageFragment.this);
        }
    };
    @NotNull
    private final F2fChatMessageFragment$callBack$1 callBack = new V2TIMCallback() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fChatMessageFragment$callBack$1
        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, @Nullable String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
        }
    };

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;", "gcUser", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final F2fChatMessageFragment newInstance(@NotNull GCUser gcUser) {
            Intrinsics.checkNotNullParameter(gcUser, "gcUser");
            F2fChatMessageFragment f2fChatMessageFragment = new F2fChatMessageFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable("data", gcUser);
            f2fChatMessageFragment.setArguments(bundle);
            return f2fChatMessageFragment;
        }
    }

    private final void addMessage(F2fChatMessageModel f2fChatMessageModel, Boolean bool) {
        F2fChatMessageAdapter f2fChatMessageAdapter = this.adapter;
        if (f2fChatMessageAdapter == null) {
            return;
        }
        if (this.speeching) {
            Iterator<F2fChatMessageModel> it = f2fChatMessageAdapter.getMsgList().iterator();
            int i9 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i9 = -1;
                    break;
                }
                if (it.next().getMessageType() == 1005) {
                    break;
                }
                i9++;
            }
            if (i9 >= 0) {
                f2fChatMessageAdapter.add(f2fChatMessageModel, i9);
            } else {
                F2fChatMessageAdapter.add$default(f2fChatMessageAdapter, f2fChatMessageModel, 0, 2, null);
            }
        } else {
            F2fChatMessageAdapter.add$default(f2fChatMessageAdapter, f2fChatMessageModel, 0, 2, null);
        }
        if (f2fChatMessageModel.getImMessage() instanceof GiftMessage) {
            playGift((GiftMessage) f2fChatMessageModel.getImMessage(), bool);
        }
        scrollToBottom();
        awakenChatRecyclerView();
    }

    static /* synthetic */ void addMessage$default(F2fChatMessageFragment f2fChatMessageFragment, F2fChatMessageModel f2fChatMessageModel, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bool = null;
        }
        f2fChatMessageFragment.addMessage(f2fChatMessageModel, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: enterInput$lambda-12  reason: not valid java name */
    public static final void m610enterInput$lambda12(F2fChatMessageFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.scrollToBottom();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hideRecyclerViewRunnable$lambda-21  reason: not valid java name */
    public static final void m611hideRecyclerViewRunnable$lambda21(F2fChatMessageFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewBinding().recyclerView.animate().alpha(0.0f).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5  reason: not valid java name */
    public static final boolean m612initView$lambda5(F2fChatMessageFragment this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.awakenChatRecyclerView();
        return false;
    }

    @JvmStatic
    @NotNull
    public static final F2fChatMessageFragment newInstance(@NotNull GCUser gCUser) {
        return Companion.newInstance(gCUser);
    }

    private final void notifyFocusEachOther() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            ((F2fMatchContainer) activity).notifyFocusEachOther(getGcUser());
        }
        this.useOnlineMessage = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onNewMessage$lambda-8$lambda-7  reason: not valid java name */
    public static final void m613onNewMessage$lambda8$lambda7(F2fChatMessageFragment this$0, F2fChatMessageModel it, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        if (list != null && list.size() >= 1) {
            addMessage$default(this$0, F2fChatMessageModel.copy$default(it, 0, null, null, (String) list.get(0), null, 23, null), null, 2, null);
        } else {
            addMessage$default(this$0, it, null, 2, null);
        }
    }

    private final void playGift(GiftMessage giftMessage, Boolean bool) {
        F2fGiftAnimator f2fGiftAnimator;
        j8.a aVar = this.mGiftAnimationDispatcher;
        if (aVar != null) {
            aVar.f(Integer.valueOf(giftMessage.getGiftInfo().gift_id));
        }
        F2fVideoChatFragment f2fVideoChatFragment = (F2fVideoChatFragment) getParentFragment();
        boolean booleanValue = bool != null ? bool.booleanValue() : giftMessage.isSelf();
        if (f2fVideoChatFragment != null) {
            if (!f2fVideoChatFragment.getMatchUserIsInSmallPosition() && !booleanValue) {
                F2fGiftAnimator f2fGiftAnimator2 = this.f2fGiftAnimator;
                if (f2fGiftAnimator2 != null) {
                    f2fGiftAnimator2.playGift(giftMessage);
                }
            } else if (f2fVideoChatFragment.getMatchUserIsInSmallPosition() && booleanValue && (f2fGiftAnimator = this.f2fGiftAnimator) != null) {
                f2fGiftAnimator.playGift(giftMessage);
            }
        }
    }

    static /* synthetic */ void playGift$default(F2fChatMessageFragment f2fChatMessageFragment, GiftMessage giftMessage, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bool = null;
        }
        f2fChatMessageFragment.playGift(giftMessage, bool);
    }

    private final void removeSpeech() {
        F2fChatMessageAdapter f2fChatMessageAdapter = this.adapter;
        if (f2fChatMessageAdapter == null) {
            return;
        }
        Iterator<F2fChatMessageModel> it = f2fChatMessageAdapter.getMsgList().iterator();
        int i9 = 0;
        while (true) {
            if (!it.hasNext()) {
                i9 = -1;
                break;
            }
            if (it.next().getMessageType() == 1005) {
                break;
            }
            i9++;
        }
        if (i9 >= 0) {
            f2fChatMessageAdapter.getMsgList().remove(i9);
            f2fChatMessageAdapter.notifyDataSetChanged();
        }
    }

    private final void scrollToBottom() {
        if (getViewBinding().recyclerView.getAdapter() == null) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getViewBinding().recyclerView.getLayoutManager();
        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        RecyclerView.Adapter adapter = getViewBinding().recyclerView.getAdapter();
        Integer valueOf = adapter != null ? Integer.valueOf(adapter.getItemCount()) : null;
        Intrinsics.checkNotNull(valueOf);
        linearLayoutManager.scrollToPositionWithOffset(valueOf.intValue() - 1, Integer.MIN_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendGiftResponse(ResourceListItemBean resourceListItemBean, int i9, ResourceCategoryItem resourceCategoryItem, String str) {
        GiftData.GiftItemData giftItemData = new GiftData.GiftItemData();
        giftItemData.gname = resourceListItemBean.getName();
        String price = resourceListItemBean.getPrice();
        Intrinsics.checkNotNullExpressionValue(price, "itemBean.price");
        giftItemData.price = Integer.parseInt(price);
        giftItemData.counts = i9;
        giftItemData.numbers = i9;
        giftItemData.svga_url = TextUtils.isEmpty(resourceListItemBean.getMp4Url()) ? resourceListItemBean.getSvgaUrl() : resourceListItemBean.getMp4Url();
        giftItemData.img = resourceListItemBean.getImg();
        giftItemData.gift_id = resourceListItemBean.getId();
        Intrinsics.checkNotNull(resourceCategoryItem);
        giftItemData.typeId = resourceCategoryItem.getSourctTypeId();
        giftItemData.giftTypeId = String.valueOf(resourceListItemBean.getSizeType());
        GiftMessage from = GiftMessage.from(giftItemData, "", str, 2);
        V2TIMMessage v2TIMMessage = from.message;
        Intrinsics.checkNotNullExpressionValue(v2TIMMessage, "giftMessage.message");
        sendMessageToIM$default(this, v2TIMMessage, false, 2, null);
        addMessage(new F2fChatMessageModel(5, null, from, null, null, 26, null), Boolean.TRUE);
    }

    private final void sendMessageToIM(V2TIMMessage v2TIMMessage, boolean z10) {
        if (!this.useOnlineMessage && !z10) {
            SendMessageHandle.sendC2CMessage(getGcUser().getUserId(), v2TIMMessage, null);
        } else {
            SendMessageHandle.sendOnLineC2CMessage(getGcUser().getUserId(), v2TIMMessage, null);
        }
    }

    static /* synthetic */ void sendMessageToIM$default(F2fChatMessageFragment f2fChatMessageFragment, V2TIMMessage v2TIMMessage, boolean z10, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            z10 = false;
        }
        f2fChatMessageFragment.sendMessageToIM(v2TIMMessage, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendSpeechToTextResult$lambda-17  reason: not valid java name */
    public static final void m614sendSpeechToTextResult$lambda17(F2fChatMessageFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.scrollToBottom();
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase
    public void awakenChatRecyclerView() {
        getViewBinding().recyclerView.animate().alpha(1.0f).start();
        this.handler.removeCallbacks(this.hideRecyclerViewRunnable);
        if (this.speeching) {
            return;
        }
        this.handler.postDelayed(this.hideRecyclerViewRunnable, 10000L);
    }

    public final void cancelRecord() {
        F2fVideoChatFragment f2fVideoChatFragment = (F2fVideoChatFragment) getParentFragment();
        if (f2fVideoChatFragment != null) {
            f2fVideoChatFragment.stopAudioRecord(true);
        }
        removeSpeech();
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase
    public void detectNoFaceOnScreen() {
        if (!isAdded() || isDetached() || getActivity() == null || this.noFaceTip) {
            return;
        }
        this.noFaceTip = true;
        addMessage$default(this, new F2fChatMessageModel(1, getString(R.string.f2f_please_show_your_face), null, null, null, 28, null), null, 2, null);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase
    public void enterInput(boolean z10) {
        this.speeching = !z10;
        this.handler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.e
            @Override // java.lang.Runnable
            public final void run() {
                F2fChatMessageFragment.m610enterInput$lambda12(F2fChatMessageFragment.this);
            }
        }, 100L);
        if (this.shouldTranslate) {
            if (this.textTranslationTipsShowed && z10) {
                return;
            }
            if (!this.speechTranslationTipsShowed || z10) {
                if (z10) {
                    this.textTranslationTipsShowed = true;
                    addMessage$default(this, new F2fChatMessageModel(1000, F2fSpanTipsUtils.INSTANCE.buildSpeechTranslateTip(z10), null, null, null, 28, null), null, 2, null);
                    return;
                }
                this.speechTranslationTipsShowed = true;
                addMessage$default(this, new F2fChatMessageModel(1001, F2fSpanTipsUtils.INSTANCE.buildSpeechTranslateTip(z10), null, null, null, 28, null), null, 2, null);
            }
        }
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase
    public void focusSomebody(@NotNull F2fMatchModel.F2fMatchRoomInfo gcUser, boolean z10) {
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        if (Intrinsics.areEqual(gcUser.getUserId(), getGcUser().getUserId())) {
            F2fChatMessageAdapter f2fChatMessageAdapter = this.adapter;
            if (f2fChatMessageAdapter != null) {
                f2fChatMessageAdapter.setFocused(true);
            }
            F2fCmdMessage newMessage = F2fCmdMessage.Companion.newMessage(F2fCmdMessage.F2F_FOCUS);
            V2TIMMessage v2TIMMessage = newMessage.message;
            Intrinsics.checkNotNullExpressionValue(v2TIMMessage, "it.message");
            sendMessageToIM(v2TIMMessage, true);
            if (getGcUser().getAttentionStatus() == -1) {
                getGcUser().setAttentionStatus(1);
                addMessage$default(this, new F2fChatMessageModel(9, F2fSpanTipsUtils.INSTANCE.followUserTip(gcUser, true), newMessage, null, null, 24, null), null, 2, null);
            } else if (getGcUser().getAttentionStatus() == 0) {
                getGcUser().setAttentionStatus(2);
                notifyFocusEachOther();
                addMessage$default(this, new F2fChatMessageModel(9, F2fSpanTipsUtils.INSTANCE.followEachOtherTip(gcUser), null, null, null, 24, null), null, 2, null);
            }
        }
    }

    @NotNull
    public final F2fMatchModel.F2fMatchRoomInfo getGcUser() {
        F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo = this.gcUser;
        if (f2fMatchRoomInfo != null) {
            return f2fMatchRoomInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("gcUser");
        return null;
    }

    @NotNull
    public final FragmentF2fChatMessageBinding getViewBinding() {
        FragmentF2fChatMessageBinding fragmentF2fChatMessageBinding = this.viewBinding;
        if (fragmentF2fChatMessageBinding != null) {
            return fragmentF2fChatMessageBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        FragmentActivity activity;
        Window window;
        View decorView;
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        FragmentF2fChatMessageBinding viewBinding = getViewBinding();
        TopFadeInRecyclerView topFadeInRecyclerView = viewBinding.recyclerView;
        ViewGroup.LayoutParams layoutParams = getViewBinding().recyclerView.getLayoutParams();
        if (layoutParams != null) {
            Intrinsics.checkNotNullExpressionValue(layoutParams, "layoutParams");
            layoutParams.width = (int) ((ScreenTools.getScreenWidth() / 2.0f) + DensityUtil.dp2px(19.0f));
        } else {
            layoutParams = null;
        }
        topFadeInRecyclerView.setLayoutParams(layoutParams);
        TopFadeInRecyclerView topFadeInRecyclerView2 = viewBinding.recyclerView;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        F2fChatMessageAdapter f2fChatMessageAdapter = new F2fChatMessageAdapter(requireContext, getGcUser(), this);
        this.adapter = f2fChatMessageAdapter;
        topFadeInRecyclerView2.setAdapter(f2fChatMessageAdapter);
        com.guochao.faceshow.aaspring.manager.im.b.l0().x(this);
        if (this.mGiftAnimationDispatcher == null && (activity = getActivity()) != null && (window = activity.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            this.mGiftAnimationDispatcher = new j8.a(getActivity(), (ViewGroup) decorView.findViewWithTag("gift_anim"), 3);
        }
        awakenChatRecyclerView();
        root.setOnTouchListener(new View.OnTouchListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m612initView$lambda5;
                m612initView$lambda5 = F2fChatMessageFragment.m612initView$lambda5(F2fChatMessageFragment.this, view, motionEvent);
                return m612initView$lambda5;
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ActivityExtendsKt.safeRegisterEventBus(this);
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity");
        this.f2fGiftAnimator = new F2fGiftAnimator((F2fMatchActivity) requireActivity, null, 2, null);
        Bundle arguments = getArguments();
        if (arguments != null) {
            Parcelable parcelable = arguments.getParcelable("data");
            Intrinsics.checkNotNull(parcelable);
            setGcUser((F2fMatchModel.F2fMatchRoomInfo) parcelable);
            this.shouldTranslate = TranslateUtils.shouldTranslate(getGcUser().getLanguage());
            this.useOnlineMessage = getGcUser().getAttentionStatus() != 2;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.handler.removeMessages(0);
        com.guochao.faceshow.aaspring.manager.im.b.l0().G(this);
        j8.a aVar = this.mGiftAnimationDispatcher;
        if (aVar != null) {
            aVar.g();
        }
        GiftFragment giftFragment = this.giftFragment;
        if (giftFragment != null) {
            giftFragment.dismissAllowingStateLoss();
        }
        F2fGiftAnimator f2fGiftAnimator = this.f2fGiftAnimator;
        if (f2fGiftAnimator != null) {
            f2fGiftAnimator.reset();
        }
    }

    @Subscribe
    public final void onFocusEvent(@NotNull y7.e focusEvent) {
        View view;
        View view2;
        Intrinsics.checkNotNullParameter(focusEvent, "focusEvent");
        if (Objects.equals(focusEvent.a(), getGcUser().getUserId())) {
            View view3 = null;
            if (focusEvent.c()) {
                focusSomebody(getGcUser(), true);
                Fragment parentFragment = getParentFragment();
                if (parentFragment != null && (view2 = parentFragment.getView()) != null) {
                    view3 = view2.findViewWithTag("focus");
                }
                if (view3 == null) {
                    return;
                }
                view3.setVisibility(8);
                return;
            }
            Fragment parentFragment2 = getParentFragment();
            if (parentFragment2 != null && (view = parentFragment2.getView()) != null) {
                view3 = view.findViewWithTag("focus");
            }
            if (view3 == null) {
                return;
            }
            view3.setVisibility(0);
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public void onNewMessage(@NotNull com.guochao.faceshow.aaspring.modulars.chat.models.a message) {
        final F2fChatMessageModel f2fChatMessageModel;
        Intrinsics.checkNotNullParameter(message, "message");
        String conversationId = message.getConversationId();
        if (message.getConversationType() == 1 && Intrinsics.areEqual(conversationId, getGcUser().getUserId())) {
            setConversationRead();
            if (message instanceof TextMessage) {
                f2fChatMessageModel = new F2fChatMessageModel(7, ((TextMessage) message).getContent(), message, null, null, 24, null);
            } else if (message instanceof GiftMessage) {
                f2fChatMessageModel = new F2fChatMessageModel(5, null, message, null, null, 24, null);
            } else {
                if (message instanceof F2fCmdMessage) {
                    F2fCmdMessage f2fCmdMessage = (F2fCmdMessage) message;
                    if (Intrinsics.areEqual(f2fCmdMessage.getF2f_cmd(), F2fCmdMessage.F2F_FOCUS)) {
                        f2fChatMessageModel = new F2fChatMessageModel(9, F2fSpanTipsUtils.INSTANCE.followUserTip(getGcUser(), false), message, null, null, 24, null);
                    } else if (Intrinsics.areEqual(f2fCmdMessage.getF2f_cmd(), F2fCmdMessage.F2F_REMOVE_GUASS)) {
                        Fragment parentFragment = getParentFragment();
                        Intrinsics.checkNotNull(parentFragment, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.fragment.F2fVideoChatFragment");
                        ((F2fVideoChatFragment) parentFragment).removeGuass(getGcUser());
                    }
                }
                f2fChatMessageModel = null;
            }
            if (f2fChatMessageModel != null) {
                if (f2fChatMessageModel.getImMessage() instanceof TextMessage) {
                    if (this.shouldTranslate) {
                        com.guochao.faceshow.aaspring.modulars.translate.a.a().g(Collections.singletonList(String.valueOf(f2fChatMessageModel.getMsg())), q7.a.e().g(), new a.c() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.b
                            @Override // com.guochao.faceshow.aaspring.modulars.translate.a.c
                            public final void onResponse(List list) {
                                F2fChatMessageFragment.m613onNewMessage$lambda8$lambda7(F2fChatMessageFragment.this, f2fChatMessageModel, list);
                            }
                        });
                        return;
                    } else {
                        addMessage$default(this, f2fChatMessageModel, null, 2, null);
                        return;
                    }
                }
                if (f2fChatMessageModel.getImMessage() instanceof GiftMessage) {
                    addMessage$default(this, f2fChatMessageModel, null, 2, null);
                }
                if (f2fChatMessageModel.getImMessage() instanceof F2fCmdMessage) {
                    if (getGcUser().getAttentionStatus() == -1) {
                        getGcUser().setAttentionStatus(0);
                        addMessage$default(this, new F2fChatMessageModel(8, getString(R.string.f2f_focusd_you_apply, getGcUser().getNickName()), null, null, null, 28, null), null, 2, null);
                        addMessage$default(this, new F2fChatMessageModel(4, null, null, null, null, 30, null), null, 2, null);
                    } else if (getGcUser().getAttentionStatus() == 1) {
                        getGcUser().setAttentionStatus(2);
                        notifyFocusEachOther();
                        addMessage$default(this, new F2fChatMessageModel(9, F2fSpanTipsUtils.INSTANCE.followEachOtherTip(getGcUser()), null, null, null, 24, null), null, 2, null);
                    }
                }
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public /* bridge */ /* synthetic */ void onRecvMessageRevoked(String str) {
        a8.b.a(this, str);
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void onSelectGift(int i9, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, String str, String str2) {
        u8.a.a(this, i9, resourceCategoryItem, resourceListItemBean, str, str2);
    }

    @Override // u8.b
    public void onSelectGift(@Nullable final ResourceCategoryItem resourceCategoryItem, @Nullable final ResourceListItemBean resourceListItemBean, @Nullable List<GiftFragment.r> list, final int i9, boolean z10, @Nullable final SendGiftCallBack sendGiftCallBack) {
        Intrinsics.checkNotNull(resourceListItemBean);
        final SendGiftRequestModel sendGiftRequestModel = new SendGiftRequestModel(String.valueOf(resourceListItemBean.getId()), resourceListItemBean.isLuckyGift());
        ArrayList arrayList = new ArrayList();
        final String userId = getGcUser().getUserId();
        if (userId == null) {
            return;
        }
        arrayList.add(userId);
        sendGiftRequestModel.setSendType(3);
        sendGiftRequestModel.setToUserIds(arrayList);
        sendGiftRequestModel.setBusinessId(userId);
        if (z10) {
            sendGiftRequestModel.setUseDiamonds("1");
        } else {
            sendGiftRequestModel.setUseDiamonds("0");
        }
        String price = resourceListItemBean.getPrice();
        Intrinsics.checkNotNullExpressionValue(price, "itemBean.price");
        sendGiftRequestModel.setSinglePrice(price);
        sendGiftRequestModel.setSendNumber(i9);
        GiftSender.checkSendGiftType$default(this, resourceListItemBean.getItemType(), sendGiftRequestModel, new com.guochao.faceshow.aaspring.base.http.callback.c<AppResource>() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fChatMessageFragment$onSelectGift$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<AppResource> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                FragmentActivity activity = F2fChatMessageFragment.this.getActivity();
                if (activity != null) {
                    GiftSender.sendGiftFailure(activity, exp.a());
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable AppResource appResource, @NotNull FaceCastBaseResponse<AppResource> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (appResource != null) {
                    SendGiftCallBack sendGiftCallBack2 = sendGiftCallBack;
                    List<ResourceCategoryItem> bag = appResource.getBag();
                    if (!(bag == null || bag.isEmpty())) {
                        if (sendGiftCallBack2 != null) {
                            sendGiftCallBack2.onSendGiftFailure(appResource);
                            return;
                        }
                        return;
                    } else if (sendGiftCallBack2 != null) {
                        sendGiftCallBack2.onSendGiftSuccessful();
                    }
                }
                F2fChatMessageFragment.this.sendGiftResponse(resourceListItemBean, i9, resourceCategoryItem, userId);
            }
        }, new com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel>() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fChatMessageFragment$onSelectGift$2
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<SendGiftResponseModel> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                FragmentActivity activity = F2fChatMessageFragment.this.getActivity();
                if (activity != null) {
                    GiftSender.sendGiftFailure(activity, exp.a());
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable SendGiftResponseModel sendGiftResponseModel, @NotNull FaceCastBaseResponse<SendGiftResponseModel> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                F2fChatMessageFragment.this.sendGiftResponse(resourceListItemBean, i9, resourceCategoryItem, userId);
                GiftFragment.trackEvent(sendGiftRequestModel, resourceListItemBean);
            }
        }, false, 0, false, 224, null);
    }

    @Override // u8.b
    public /* bridge */ /* synthetic */ void onSelectGift(GiftFragment giftFragment, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List list, int i9, boolean z10, int i10, SendGiftCallBack sendGiftCallBack) {
        u8.a.c(this, giftFragment, resourceCategoryItem, resourceListItemBean, list, i9, z10, i10, sendGiftCallBack);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase
    public void removeCurrentGuass(@NotNull F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo) {
        Intrinsics.checkNotNullParameter(f2fMatchRoomInfo, "f2fMatchRoomInfo");
        if (Intrinsics.areEqual(f2fMatchRoomInfo.getUserId(), getGcUser().getUserId())) {
            V2TIMMessage v2TIMMessage = F2fCmdMessage.Companion.newMessage(F2fCmdMessage.F2F_REMOVE_GUASS).message;
            Intrinsics.checkNotNullExpressionValue(v2TIMMessage, "F2fCmdMessage.newMessage…F2F_REMOVE_GUASS).message");
            sendMessageToIM(v2TIMMessage, true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0060  */
    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sendSpeechToTextResult(@org.jetbrains.annotations.NotNull com.guochao.faceshow.component.f2fmatch.model.F2fSpeechToTextResultModel r14) {
        /*
            r13 = this;
            java.lang.String r0 = "f2fSpeechToTextResultModel"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            boolean r0 = r14.getCancel()
            if (r0 == 0) goto Lf
            r13.removeSpeech()
            return
        Lf:
            com.guochao.faceshow.component.f2fmatch.adapter.F2fChatMessageAdapter r0 = r13.adapter
            r1 = 2
            r2 = 0
            r3 = 0
            if (r0 == 0) goto L4b
            java.util.ArrayList r0 = r0.getMsgList()
            if (r0 == 0) goto L4b
            java.util.Iterator r0 = r0.iterator()
        L20:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L3b
            java.lang.Object r4 = r0.next()
            r5 = r4
            com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel r5 = (com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel) r5
            int r5 = r5.getMessageType()
            r6 = 1005(0x3ed, float:1.408E-42)
            if (r5 != r6) goto L37
            r5 = 1
            goto L38
        L37:
            r5 = 0
        L38:
            if (r5 == 0) goto L20
            goto L3c
        L3b:
            r4 = r3
        L3c:
            com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel r4 = (com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel) r4
            if (r4 == 0) goto L4b
            r4.setF2fSpeechToTextResultModel(r14)
            com.guochao.faceshow.component.f2fmatch.adapter.F2fChatMessageAdapter r0 = r13.adapter
            if (r0 == 0) goto L5a
            r0.notifyDataSetChanged()
            goto L5a
        L4b:
            com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel r0 = new com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel
            r5 = 1005(0x3ed, float:1.408E-42)
            r6 = 0
            r7 = 0
            r8 = 0
            r4 = r0
            r9 = r14
            r4.<init>(r5, r6, r7, r8, r9)
            addMessage$default(r13, r0, r3, r1, r3)
        L5a:
            boolean r0 = r14.getFinalResult()
            if (r0 == 0) goto L91
            r13.speeching = r2
            java.lang.String r0 = r14.getResult()
            com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage r0 = com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage.from(r0)
            com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel r12 = new com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel
            r5 = 7
            java.lang.String r6 = r14.getResult()
            r8 = 0
            r9 = 0
            r10 = 24
            r11 = 0
            r4 = r12
            r7 = r0
            r4.<init>(r5, r6, r7, r8, r9, r10, r11)
            addMessage$default(r13, r12, r3, r1, r3)
            com.tencent.imsdk.v2.V2TIMMessage r0 = r0.message
            java.lang.String r1 = "from(f2fSpeechToTextResu… it.message\n            }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r13.sendMessageToIM(r0, r2)
            boolean r14 = r14.getFinalResult()
            if (r14 == 0) goto L91
            r13.removeSpeech()
        L91:
            android.os.Handler r14 = r13.handler
            com.guochao.faceshow.component.f2fmatch.fragment.d r0 = new com.guochao.faceshow.component.f2fmatch.fragment.d
            r0.<init>()
            r14.post(r0)
            r13.awakenChatRecyclerView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.component.f2fmatch.fragment.F2fChatMessageFragment.sendSpeechToTextResult(com.guochao.faceshow.component.f2fmatch.model.F2fSpeechToTextResultModel):void");
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase
    public void sendText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        TextMessage from = TextMessage.from(text);
        V2TIMMessage message = from.message;
        Intrinsics.checkNotNullExpressionValue(message, "message");
        sendMessageToIM$default(this, message, false, 2, null);
        Unit unit = Unit.INSTANCE;
        addMessage$default(this, new F2fChatMessageModel(7, text, from, null, null, 24, null), null, 2, null);
    }

    public final void setConversationRead() {
        String userId = getGcUser().getUserId();
        if (userId != null) {
            V2TIMManager.getMessageManager().markC2CMessageAsRead(userId, this.callBack);
        }
    }

    public final void setGcUser(@NotNull F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo) {
        Intrinsics.checkNotNullParameter(f2fMatchRoomInfo, "<set-?>");
        this.gcUser = f2fMatchRoomInfo;
    }

    public final void setViewBinding(@NotNull FragmentF2fChatMessageBinding fragmentF2fChatMessageBinding) {
        Intrinsics.checkNotNullParameter(fragmentF2fChatMessageBinding, "<set-?>");
        this.viewBinding = fragmentF2fChatMessageBinding;
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase
    public void showGiftDialog() {
        if (!isAdded() || isDetached()) {
            return;
        }
        GiftFragment giftFragment = null;
        GiftFragment giftFragment2 = GiftFragment.getInstance((int) R.style.AppTheme, 3, false, (String) null);
        if (giftFragment2 != null) {
            giftFragment2.show(getChildFragmentManager(), "gift_dialog");
            giftFragment = giftFragment2;
        }
        this.giftFragment = giftFragment;
    }
}
