package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.PixelCopy;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.AccessToken;
import com.facebook.AuthenticationTokenClaims;
import com.google.android.material.badge.BadgeDrawable;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.beans.AppResource;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.beans.CloudCustomData;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.FirstMessage;
import com.guochao.faceshow.aaspring.beans.FriendsRelation;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.beans.PushBean;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.VoiceInfo;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.adapter.ChatMessageAdapter;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.ChatControllerFragment;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.VoiceRecordFragment;
import com.guochao.faceshow.aaspring.modulars.chat.models.CustomMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.FaceMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.GiftMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.ImageMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.InputtingMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.TipsMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.VideoMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.VoiceMessage;
import com.guochao.faceshow.aaspring.modulars.chat.utils.ChatLimitManager;
import com.guochao.faceshow.aaspring.modulars.chat.utils.MessageFilterHelper;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.InputtingViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.PeopleCardViewHolder;
import com.guochao.faceshow.aaspring.modulars.gift.GiftSender;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftRequestModel;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftResponseModel;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.translate.a;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.DatingSquareActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.FindYouActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PeopleNearbyActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PlantActivity;
import com.guochao.faceshow.aaspring.utils.AndroidBug5497Workaround;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.ImImageAndVideoZoomHelper;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightProvider;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MediaFileFinder;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.RecyclerViewAnimatorUtils;
import com.guochao.faceshow.aaspring.utils.SendMessageHandle;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.UriUtils;
import com.guochao.faceshow.aaspring.views.ImFocusPopupWindow;
import com.guochao.faceshow.aaspring.views.TranslatePopupWindow;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
import com.guochao.faceshow.facetoface.data.F2FCommonJson;
import com.guochao.faceshow.facetoface.data.GiftData;
import com.guochao.faceshow.gift.SendGiftCallBack;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.SensitiveWordFilter;
import com.guochao.faceshow.utils.Tools;
import com.guochao.faceshow.utils.TranslateUtils;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMConversationManager;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMMessageListGetOption;
import com.tencent.imsdk.v2.V2TIMSendCallback;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class ChatActivity extends BaseChatActivity implements BaseMessageViewHolder.f, KeyboardHeightObserver, ImImageAndVideoZoomHelper.OnPrefetchListener, d.a {
    public static final int DEFAULT_MESSAGE_PAGE_SIZE = 15;
    public static final int MIN_INDEX_TO_SCROLL_TO_BOTTOM = 1;
    public static final String[] mChatPools = new String[2];
    @BindView
    ViewGroup animViewLay;
    @BindView
    TextView floatTitle;
    @Nullable
    @BindView
    SvgaImageViewV2 focusSVGA;
    ImFocusPopupWindow focuspopupWindow;
    GiftData.GiftItemData giftBean;
    @BindView
    ImageView ivBack;
    @BindView
    ImageView ivFocus;
    @BindView
    ImageView ivMore;
    @BindView
    View mCancel;
    ChatControllerFragment mChatControllerFragment;
    @BindView
    FrameLayout mFloatingView;
    @BindView
    View mFollow;
    ImImageAndVideoZoomHelper mImImageAndVideoZoomHelper;
    private View mInputtingFooter;
    InputtingViewHolder mInputtingViewHolder;
    private boolean mIsLoadingMessageFromSever;
    KeyboardHeightProvider mKeyboardHeightProvider;
    LinearLayoutManager mLinearLayoutManager;
    @BindView
    View mMainContentView;
    File mPhotoFile;
    k0 mReceiptListener;
    @BindView
    protected RecyclerView mRecyclerView;
    protected l0 mRevokeListener;
    private boolean mShowingInputting;
    @BindView
    FrameLayout merge;
    int statusBarPlaceHolderViewHeight;
    @BindView
    Toolbar toolbar;
    int toolbarHeight;
    private List<String> translateList;
    private TranslatePopupWindow translatePopupWindow;
    private int type;
    private final List<com.guochao.faceshow.aaspring.modulars.chat.models.a> mMessageList = new ArrayList();
    private final Runnable mRemoveInputtingRunnable = new k();
    private final Handler mHandler = new Handler();
    boolean mCanScrollDown = false;
    private int mLastVisibleChildIndex = -1;
    private long chatTime = 0;
    boolean mFirst = true;
    n0 mCallBack = new n0(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChatActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class a0 implements vh.o<Uri, String> {
        a0() {
        }

        @Override // vh.o
        /* renamed from: a */
        public String apply(Uri uri) throws Exception {
            String str = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + System.currentTimeMillis() + FileUtils.PIC_POSTFIX_PNG;
            FileUtil.copyUriToFile(BaseApplication.getInstance(), uri, new File(str));
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements PixelCopy.OnPixelCopyFinishedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bitmap f16653a;

        b(Bitmap bitmap) {
            this.f16653a = bitmap;
        }

        @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
        public void onPixelCopyFinished(int i9) {
            ChatActivity chatActivity = ChatActivity.this;
            chatActivity.mChatBitmap = this.f16653a;
            chatActivity.startProfile();
        }
    }

    /* loaded from: classes3.dex */
    class b0 implements PopupWindow.OnDismissListener {
        b0() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            ja.a.b().e("KEY_IS_FOCUS_TAG");
            ChatActivity.this.checkAndshowTranslatePopup();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements V2TIMValueCallback<V2TIMConversation> {
        c() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(V2TIMConversation v2TIMConversation) {
            ChatActivity chatActivity;
            ConversationInfo conversationInfo;
            if (ChatActivity.this.isFinishing() || ChatActivity.this.isDestroyed() || (conversationInfo = (chatActivity = ChatActivity.this).mConversationInfo) == null) {
                return;
            }
            chatActivity.mTIMConversation = v2TIMConversation;
            conversationInfo.setTIMConversation2(v2TIMConversation);
            ChatActivity.this.afterGetConversation();
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c0 implements View.OnTouchListener {
        c0() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ChatControllerFragment chatControllerFragment = ChatActivity.this.mChatControllerFragment;
            if (chatControllerFragment != null) {
                chatControllerFragment.q2(-1);
                ChatActivity.this.mChatControllerFragment.a2();
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements ChatMessageAdapter.a {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.adapter.ChatMessageAdapter.a
        public void a(boolean z10) {
            if (ChatActivity.this.mConversationInfo == null || !BaseConfig.isChinese()) {
                return;
            }
            ChatActivity.this.mConversationInfo.setNewConversation(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d0 extends RecyclerView.OnScrollListener {
        d0() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            if (i9 == 0) {
                ChatActivity chatActivity = ChatActivity.this;
                chatActivity.mLastVisibleChildIndex = chatActivity.mLinearLayoutManager.findLastVisibleItemPosition();
            }
            if (i9 != 0 || ChatActivity.this.mIsLoadingMessageFromSever) {
                return;
            }
            ChatActivity.this.mCanScrollDown = recyclerView.canScrollVertically(1);
            int findFirstVisibleItemPosition = ChatActivity.this.mLinearLayoutManager.findFirstVisibleItemPosition();
            ChatMessageAdapter chatMessageAdapter = ChatActivity.this.mChatMessageAdapter;
            if (chatMessageAdapter == null || findFirstVisibleItemPosition > chatMessageAdapter.getHeaderLayoutCount()) {
                return;
            }
            try {
                com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = (com.guochao.faceshow.aaspring.modulars.chat.models.a) ChatActivity.this.mChatMessageAdapter.getItem(0);
                V2TIMMessage message = aVar == null ? null : aVar.getMessage();
                ChatActivity.this.mIsLoadingMessageFromSever = true;
                ChatActivity.this.loadMessage(15, message);
            } catch (Exception unused) {
                ChatActivity.this.mIsLoadingMessageFromSever = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends i0 {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ V2TIMMessage f16660b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.modulars.chat.models.a f16661c;

        /* loaded from: classes3.dex */
        class a extends i0 {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ List f16663b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ChatActivity chatActivity, List list) {
                super(chatActivity);
                this.f16663b = list;
            }

            @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity.i0
            void a(@NonNull ChatActivity chatActivity, int i9, String str) {
                LogUtils.i("ChatActivity", "onError: " + i9 + "   " + str);
            }

            @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity.i0
            void b(@NonNull ChatActivity chatActivity, List<V2TIMMessage> list) {
                ChatActivity.this.mChatMessageAdapter.addData((Collection) ChatActivity.this.filterMessages(list));
                RecyclerView recyclerView = ChatActivity.this.mRecyclerView;
                if (recyclerView != null) {
                    recyclerView.scrollToPosition(this.f16663b.size());
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(ChatActivity chatActivity, V2TIMMessage v2TIMMessage, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
            super(chatActivity);
            this.f16660b = v2TIMMessage;
            this.f16661c = aVar;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity.i0
        void a(@NonNull ChatActivity chatActivity, int i9, String str) {
            if (ChatActivity.this.isDestroyed() || ChatActivity.this.isFinishing()) {
                return;
            }
            ChatActivity.this.mChatMessageAdapter.k();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity.i0
        void b(@NonNull ChatActivity chatActivity, List<V2TIMMessage> list) {
            if (ChatActivity.this.isDestroyed() || ChatActivity.this.isFinishing()) {
                return;
            }
            ChatActivity chatActivity2 = ChatActivity.this;
            chatActivity2.mFirst = false;
            List<com.guochao.faceshow.aaspring.modulars.chat.models.a> filterMessages = chatActivity2.filterMessages(list);
            V2TIMMessageListGetOption v2TIMMessageListGetOption = new V2TIMMessageListGetOption();
            v2TIMMessageListGetOption.setGetType(4);
            v2TIMMessageListGetOption.setCount(15);
            v2TIMMessageListGetOption.setLastMsg(this.f16660b);
            v2TIMMessageListGetOption.setUserID(ChatActivity.this.mTIMConversation.getUserID());
            V2TIMManager.getMessageManager().getHistoryMessageList(v2TIMMessageListGetOption, new a(ChatActivity.this, filterMessages));
            ChatActivity.this.mChatMessageAdapter.addData(0, (Collection) filterMessages);
            ChatActivity.this.mChatMessageAdapter.e(this.f16661c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ConversationInfo conversationInfo;
            if (!DisableDoubleClickUtils.canClick(view) || (conversationInfo = ChatActivity.this.mConversationInfo) == null || conversationInfo.getConversationInfoDetail() == null) {
                return;
            }
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().J(ChatActivity.this.getActivity(), ChatActivity.this.mConversationInfo.getImAudioAppointSwitch(), ChatActivity.this.mConversationInfo.getImVideoAppointSwitch(), ChatActivity.this.mConversationInfo.getConversationInfoDetail());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements V2TIMCallback {
        f() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f0 implements Runnable {
        f0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ChatActivity chatActivity;
            ImageView imageView;
            if (ChatActivity.this.getActivity() == null || ChatActivity.this.getActivity().isDestroyed() || (imageView = (chatActivity = ChatActivity.this).ivFocus) == null) {
                return;
            }
            imageView.setVisibility(chatActivity.mChatStatusBean.getAttentStatus() <= 2 ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements V2TIMCallback {
        g() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view)) {
                ChatActivity.this.follow(view);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h extends TypeToken<F2FCommonJson> {
        h() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h0 implements View.OnClickListener {
        h0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChatActivity.this.toChatDetailActivity();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements V2TIMSendCallback<V2TIMMessage> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.modulars.chat.models.a f16672a;

        i(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
            this.f16672a = aVar;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(V2TIMMessage v2TIMMessage) {
            ChatActivity.this.checkFriendRelation();
            ChatActivity.this.checkUmChat();
            ChatActivity.this.checkIfShouldTrackHelloStar(0, "");
            this.f16672a.setStatus(v2TIMMessage.getStatus());
            ChatActivity chatActivity = ChatActivity.this;
            if (chatActivity.mChatMessageAdapter == null || chatActivity.isFinishing() || ChatActivity.this.isDestroyed()) {
                return;
            }
            if (ChatActivity.this.mChatMessageAdapter.getData().size() >= 1) {
                ((com.guochao.faceshow.aaspring.modulars.chat.models.a) ChatActivity.this.mChatMessageAdapter.getData().get(ChatActivity.this.mChatMessageAdapter.getData().size() - 1)).setStatus(v2TIMMessage.getStatus());
                ((com.guochao.faceshow.aaspring.modulars.chat.models.a) ChatActivity.this.mChatMessageAdapter.getData().get(ChatActivity.this.mChatMessageAdapter.getData().size() - 1)).message = v2TIMMessage;
            }
            ChatActivity.this.mChatMessageAdapter.k();
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            ChatActivity.this.checkIfShouldTrackHelloStar(1, str);
            this.f16672a.setErrorCode(i9);
            ChatMessageAdapter chatMessageAdapter = ChatActivity.this.mChatMessageAdapter;
            if (chatMessageAdapter != null) {
                chatMessageAdapter.k();
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMSendCallback
        public void onProgress(int i9) {
        }
    }

    /* loaded from: classes3.dex */
    private static abstract class i0 implements V2TIMValueCallback<List<V2TIMMessage>> {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<ChatActivity> f16674a;

        i0(ChatActivity chatActivity) {
            this.f16674a = new WeakReference<>(chatActivity);
        }

        abstract void a(@NonNull ChatActivity chatActivity, int i9, String str);

        abstract void b(@NonNull ChatActivity chatActivity, List<V2TIMMessage> list);

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: c */
        public void onSuccess(List<V2TIMMessage> list) {
            ChatActivity chatActivity;
            WeakReference<ChatActivity> weakReference = this.f16674a;
            if (weakReference == null || (chatActivity = weakReference.get()) == null || chatActivity.isDestroyed() || chatActivity.isFinishing()) {
                return;
            }
            b(chatActivity, list);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            ChatActivity chatActivity;
            WeakReference<ChatActivity> weakReference = this.f16674a;
            if (weakReference == null || (chatActivity = weakReference.get()) == null || chatActivity.isDestroyed() || chatActivity.isFinishing()) {
                return;
            }
            a(chatActivity, i9, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements GCRequestJava.d<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f16675a;

        j(String str) {
            this.f16675a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<String> response) {
            FriendsRelation friendsRelation;
            if (TextUtils.isEmpty(this.f16675a)) {
                friendsRelation = new FriendsRelation();
            } else {
                friendsRelation = (FriendsRelation) GsonGetter.getGson().fromJson(this.f16675a, (Class<Object>) FriendsRelation.class);
            }
            friendsRelation.getFriends().add(ChatActivity.this.mChatUserId);
            String json = GsonGetter.getGson().toJson(friendsRelation);
            GCCoreActivity activity = ChatActivity.this.getActivity();
            SpUtils.setStr(activity, BaseConfig.SP_FRIEND_RELATION + ChatActivity.this.getCurrentUser().getCurrentUserId(), json);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class j0 extends i0 {
        j0(ChatActivity chatActivity) {
            super(chatActivity);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity.i0
        public void a(@NonNull ChatActivity chatActivity, int i9, String str) {
            chatActivity.mChatMessageAdapter.k();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity.i0
        public void b(@NonNull ChatActivity chatActivity, List<V2TIMMessage> list) {
            if (list.size() < 15 && chatActivity.mPeopleCardViewHolder == null && !(chatActivity instanceof MvpChatActivity)) {
                View inflate = chatActivity.getLayoutInflater().inflate(R.layout.layout_personal_card, (ViewGroup) chatActivity.mRecyclerView, false);
                PeopleCardViewHolder peopleCardViewHolder = new PeopleCardViewHolder(chatActivity, inflate);
                chatActivity.mPeopleCardViewHolder = peopleCardViewHolder;
                peopleCardViewHolder.g(chatActivity.mChatUserId);
                if (chatActivity.mChatStatusBean == null) {
                    chatActivity.getChatStatus(false);
                }
                chatActivity.mPeopleCardViewHolder.j(chatActivity.mChatStatusBean);
                chatActivity.mChatMessageAdapter.addHeaderView(inflate);
                chatActivity.setHeaderSpace();
            }
            List<com.guochao.faceshow.aaspring.modulars.chat.models.a> filterMessages = chatActivity.filterMessages(list);
            chatActivity.setTranslateTag(filterMessages, false);
            if (filterMessages.size() > 0) {
                chatActivity.mChatMessageAdapter.f(0, filterMessages);
            }
            chatActivity.mIsLoadingMessageFromSever = false;
            chatActivity.mChatMessageAdapter.k();
            V2TIMMessageListGetOption v2TIMMessageListGetOption = new V2TIMMessageListGetOption();
            v2TIMMessageListGetOption.setCount(15);
            V2TIMConversation v2TIMConversation = chatActivity.mTIMConversation;
            if (v2TIMConversation != null) {
                v2TIMMessageListGetOption.setUserID(v2TIMConversation.getUserID());
            }
            v2TIMMessageListGetOption.setGetType(1);
            V2TIMManager.getMessageManager().getHistoryMessageList(v2TIMMessageListGetOption, new m0(chatActivity));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ChatActivity.this.mShowingInputting = false;
            if (ChatActivity.this.mInputtingFooter != null) {
                ChatActivity.this.mInputtingViewHolder.c();
            }
            ChatActivity chatActivity = ChatActivity.this;
            chatActivity.mChatMessageAdapter.removeFooterView(chatActivity.mInputtingFooter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class k0 implements d.b<Void> {
        private k0() {
        }

        @Override // com.guochao.faceshow.aaspring.manager.im.d.b
        /* renamed from: b */
        public void a(@Nullable Void r12) {
            ChatMessageAdapter chatMessageAdapter = ChatActivity.this.mChatMessageAdapter;
            if (chatMessageAdapter != null) {
                chatMessageAdapter.k();
            }
        }

        /* synthetic */ k0(ChatActivity chatActivity, k kVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l extends com.guochao.faceshow.aaspring.base.http.callback.c<AppResource> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SendGiftCallBack f16679a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ResourceListItemBean f16680b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f16681c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ResourceCategoryItem f16682d;

        l(SendGiftCallBack sendGiftCallBack, ResourceListItemBean resourceListItemBean, int i9, ResourceCategoryItem resourceCategoryItem) {
            this.f16679a = sendGiftCallBack;
            this.f16680b = resourceListItemBean;
            this.f16681c = i9;
            this.f16682d = resourceCategoryItem;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<AppResource> aVar) {
            GiftSender.sendGiftFailure(ChatActivity.this.getActivity(), aVar.a());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable AppResource appResource, @NonNull FaceCastBaseResponse<AppResource> faceCastBaseResponse) {
            if (this.f16679a != null && appResource != null) {
                if (appResource.getBag() != null) {
                    this.f16679a.onSendGiftFailure(appResource);
                    return;
                }
                this.f16679a.onSendGiftSuccessful();
            }
            ChatActivity.this.sendResponse(this.f16680b, this.f16681c, this.f16682d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class l0 implements d.b<String> {
        private l0() {
        }

        @Override // com.guochao.faceshow.aaspring.manager.im.d.b
        /* renamed from: b */
        public void a(@Nullable String str) {
            for (int itemCount = (ChatActivity.this.mChatMessageAdapter.getItemCount() - ChatActivity.this.mChatMessageAdapter.getHeaderLayoutCount()) - 1; itemCount >= 0; itemCount--) {
                com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = (com.guochao.faceshow.aaspring.modulars.chat.models.a) ChatActivity.this.mChatMessageAdapter.getItem(itemCount);
                if (aVar != null && Objects.equals(aVar.getMessage().getMsgID(), str)) {
                    aVar.setStatus(6);
                    ChatMessageAdapter chatMessageAdapter = ChatActivity.this.mChatMessageAdapter;
                    if (chatMessageAdapter != null) {
                        chatMessageAdapter.k();
                        return;
                    }
                    return;
                }
            }
        }

        /* synthetic */ l0(ChatActivity chatActivity, k kVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m extends com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResourceListItemBean f16685a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f16686b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ResourceCategoryItem f16687c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ SendGiftRequestModel f16688d;

        m(ResourceListItemBean resourceListItemBean, int i9, ResourceCategoryItem resourceCategoryItem, SendGiftRequestModel sendGiftRequestModel) {
            this.f16685a = resourceListItemBean;
            this.f16686b = i9;
            this.f16687c = resourceCategoryItem;
            this.f16688d = sendGiftRequestModel;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<SendGiftResponseModel> aVar) {
            GiftSender.sendGiftFailure(ChatActivity.this.getActivity(), aVar.a());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable SendGiftResponseModel sendGiftResponseModel, @NonNull FaceCastBaseResponse<SendGiftResponseModel> faceCastBaseResponse) {
            ChatActivity.this.sendResponse(this.f16685a, this.f16686b, this.f16687c);
            GiftFragment.trackEvent(this.f16688d, this.f16685a);
        }
    }

    /* loaded from: classes3.dex */
    private static class m0 extends i0 {
        m0(ChatActivity chatActivity) {
            super(chatActivity);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity.i0
        void a(@NonNull ChatActivity chatActivity, int i9, String str) {
            chatActivity.mCallBack.onError(i9, str);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity.i0
        void b(@NonNull ChatActivity chatActivity, List<V2TIMMessage> list) {
            chatActivity.mMessageList.clear();
            chatActivity.mCallBack.onSuccess(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n extends TypeToken<F2FCommonJson> {
        n() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class n0 extends i0 {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ChatActivity f16691a;

            a(ChatActivity chatActivity) {
                this.f16691a = chatActivity;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f16691a.isFinishing() || this.f16691a.isDestroyed()) {
                    return;
                }
                this.f16691a.scrollToEnd(false, true);
            }
        }

        n0(ChatActivity chatActivity) {
            super(chatActivity);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity.i0
        public void a(ChatActivity chatActivity, int i9, String str) {
            chatActivity.mIsLoadingMessageFromSever = false;
            chatActivity.mChatMessageAdapter.k();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity.i0
        public void b(ChatActivity chatActivity, List<V2TIMMessage> list) {
            d(chatActivity, list, true);
        }

        public void d(ChatActivity chatActivity, List<V2TIMMessage> list, boolean z10) {
            chatActivity.mIsLoadingMessageFromSever = false;
            if (list.size() < 15 && chatActivity.mPeopleCardViewHolder == null && z10 && !(chatActivity instanceof MvpChatActivity)) {
                View inflate = chatActivity.getLayoutInflater().inflate(R.layout.layout_personal_card, (ViewGroup) chatActivity.mRecyclerView, false);
                PeopleCardViewHolder peopleCardViewHolder = new PeopleCardViewHolder(chatActivity, inflate);
                chatActivity.mPeopleCardViewHolder = peopleCardViewHolder;
                peopleCardViewHolder.g(chatActivity.mChatUserId);
                if (chatActivity.mChatStatusBean == null) {
                    chatActivity.getChatStatus(false);
                }
                chatActivity.mPeopleCardViewHolder.j(chatActivity.mChatStatusBean);
                chatActivity.mChatMessageAdapter.addHeaderView(inflate);
                chatActivity.setHeaderSpace();
            } else {
                PeopleCardViewHolder peopleCardViewHolder2 = chatActivity.mPeopleCardViewHolder;
                if (peopleCardViewHolder2 != null) {
                    peopleCardViewHolder2.j(chatActivity.mChatStatusBean);
                }
            }
            List<com.guochao.faceshow.aaspring.modulars.chat.models.a> filterMessages = chatActivity.filterMessages(list);
            chatActivity.setTranslateTag(filterMessages, false);
            if (filterMessages.size() > 0) {
                chatActivity.mChatMessageAdapter.f(0, filterMessages);
            }
            if (chatActivity.mFirst && z10) {
                HandlerGetter.getMainHandler().post(new a(chatActivity));
                chatActivity.mFirst = false;
            }
            if (chatActivity.mOnPrefetchMessageListeners != null) {
                for (int i9 = 0; i9 < chatActivity.mOnPrefetchMessageListeners.size(); i9++) {
                    chatActivity.mOnPrefetchMessageListeners.get(i9).onPrefetchMessage(filterMessages);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements Function1<LocalImageOrVideoBean, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LocalImageOrVideoBean f16693a;

        o(LocalImageOrVideoBean localImageOrVideoBean) {
            this.f16693a = localImageOrVideoBean;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(LocalImageOrVideoBean localImageOrVideoBean) {
            ChatActivity.this.checkMessageBeforeSend(VideoMessage.buildVideoMessage(this.f16693a));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p extends SimpleObserver<LocalImageOrVideoBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Function1<LocalImageOrVideoBean, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ LocalImageOrVideoBean f16696a;

            a(LocalImageOrVideoBean localImageOrVideoBean) {
                this.f16696a = localImageOrVideoBean;
            }

            @Override // kotlin.jvm.functions.Function1
            /* renamed from: a */
            public Unit invoke(LocalImageOrVideoBean localImageOrVideoBean) {
                ChatActivity.this.checkMessageBeforeSend(VideoMessage.buildVideoMessage(this.f16696a));
                return null;
            }
        }

        p() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(LocalImageOrVideoBean localImageOrVideoBean) {
            super.onNext(localImageOrVideoBean);
            MediaFileFinder.getInstance().readVideoDetail(localImageOrVideoBean, new a(localImageOrVideoBean));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements vh.o<LocalImageOrVideoBean, LocalImageOrVideoBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LocalImageOrVideoBean f16698a;

        q(LocalImageOrVideoBean localImageOrVideoBean) {
            this.f16698a = localImageOrVideoBean;
        }

        @Override // vh.o
        /* renamed from: a */
        public LocalImageOrVideoBean apply(LocalImageOrVideoBean localImageOrVideoBean) throws Exception {
            Uri uri = this.f16698a.getUri();
            String filePath = FileUtil.getFilePath(ChatActivity.this.getActivity(), uri);
            String cachePath = FilePathProvider.getCachePath("crop");
            File file = new File(cachePath, System.currentTimeMillis() + filePath.substring(filePath.lastIndexOf(".")));
            FileUtil.copyUriToFile(ChatActivity.this.getActivity(), uri, file);
            localImageOrVideoBean.setPath(file.getAbsolutePath());
            return localImageOrVideoBean;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r extends SimpleObserver<te.a> {
        r() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            Uri fromFile;
            if (aVar.f58133b) {
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                if (intent.resolveActivity(ChatActivity.this.getPackageManager()) != null) {
                    ChatActivity chatActivity = ChatActivity.this;
                    String privateRootPathV2 = FilePathProvider.getPrivateRootPathV2("img");
                    chatActivity.mPhotoFile = new File(privateRootPathV2, System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG);
                    if (Build.VERSION.SDK_INT >= 24) {
                        fromFile = FileProvider.getUriForFile(ChatActivity.this.getActivity(), BaseConfig.APP_PACKAGE_FILE_PROVIDERE, ChatActivity.this.mPhotoFile);
                    } else {
                        fromFile = Uri.fromFile(ChatActivity.this.mPhotoFile);
                    }
                    intent.putExtra("output", fromFile);
                    ChatActivity.this.startActivityForResult(intent, 100);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class s extends SimpleObserver<te.a> {
        s() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            if (aVar.f58133b) {
                Intent intent = new Intent("android.intent.action.GET_CONTENT");
                intent.setType("image/*");
                ChatActivity.this.startActivityForResult(intent, 200);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t extends SimpleObserver<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f16702a;

        t(boolean z10) {
            this.f16702a = z10;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(String str) {
            super.onNext((t) str);
            ChatActivity.this.sendImageFile(this.f16702a, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u implements vh.o<Integer, String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f16704a;

        u(Uri uri) {
            this.f16704a = uri;
        }

        @Override // vh.o
        /* renamed from: a */
        public String apply(Integer num) throws Exception {
            String baseDir = ChatActivity.this.getBaseDir();
            File file = new File(baseDir, System.currentTimeMillis() + "");
            FileUtil.copyUriToFile(ChatActivity.this, this.f16704a, file);
            return file.getAbsolutePath();
        }
    }

    /* loaded from: classes3.dex */
    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ChatActivity.this.isDestroyed() || ChatActivity.this.isFinishing()) {
                return;
            }
            ChatActivity.this.mKeyboardHeightProvider.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class w implements hb.b<String> {
        w() {
        }

        @Override // hb.b
        /* renamed from: a */
        public void onFail(String str) {
            ChatActivity.this.getChatStatus(false);
        }

        @Override // hb.b
        /* renamed from: b */
        public void onResponse(String str) {
            ChatActivity.this.getChatStatus(false);
        }
    }

    /* loaded from: classes3.dex */
    class x implements V2TIMSendCallback<V2TIMMessage> {
        x() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(V2TIMMessage v2TIMMessage) {
            LogUtils.i("ChatActivity", "onSuccess: ");
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            LogUtils.i("ChatActivity", "onError: " + i9 + "  " + str);
        }

        @Override // com.tencent.imsdk.v2.V2TIMSendCallback
        public void onProgress(int i9) {
        }
    }

    /* loaded from: classes3.dex */
    class y implements a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f16709a;

        y(List list) {
            this.f16709a = list;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.translate.a.c
        public void onResponse(@Nullable List<String> list) {
            if (list != null && this.f16709a.size() == list.size()) {
                for (int i9 = 0; i9 < this.f16709a.size(); i9++) {
                    String translateFiles = ((com.guochao.faceshow.aaspring.modulars.chat.models.a) this.f16709a.get(i9)).getTranslateFiles();
                    if (TranslateUtils.getTranslateFile(translateFiles, ((com.guochao.faceshow.aaspring.modulars.chat.models.a) this.f16709a.get(i9)).getMessage().getMsgID() + ".txt")) {
                        String translateFiles2 = ((com.guochao.faceshow.aaspring.modulars.chat.models.a) this.f16709a.get(i9)).getTranslateFiles();
                        ((com.guochao.faceshow.aaspring.modulars.chat.models.a) this.f16709a.get(i9)).setTranslate(TranslateUtils.getTranslateContent(translateFiles2, ((com.guochao.faceshow.aaspring.modulars.chat.models.a) this.f16709a.get(i9)).getMessage().getMsgID() + ".txt"));
                    } else {
                        ((com.guochao.faceshow.aaspring.modulars.chat.models.a) this.f16709a.get(i9)).setTranslate(list.get(i9));
                        String translateFiles3 = ((com.guochao.faceshow.aaspring.modulars.chat.models.a) this.f16709a.get(i9)).getTranslateFiles();
                        TranslateUtils.createTranslateFile(translateFiles3, ((com.guochao.faceshow.aaspring.modulars.chat.models.a) this.f16709a.get(i9)).getMessage().getMsgID() + ".txt", list.get(i9));
                    }
                }
            } else {
                for (com.guochao.faceshow.aaspring.modulars.chat.models.a aVar : this.f16709a) {
                    aVar.setTranslate(false);
                }
            }
            if (this.f16709a.size() > 0) {
                ChatActivity.this.checkUmChat();
                ChatActivity.this.mChatMessageAdapter.g(this.f16709a);
                ChatActivity.this.scrollToEnd(true, false);
            }
        }
    }

    /* loaded from: classes3.dex */
    class z extends SimpleObserver<String> {
        z() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(String str) {
            super.onNext((z) str);
            ChatActivity.this.sendImageFile(false, str);
        }
    }

    private void addChatNum() {
        SpUtils.setSelfInt(obtainChatKey(), getChatNum() + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndshowTranslatePopup() {
        if (this instanceof FakeLiveChatActivity) {
            return;
        }
        if (com.guochao.faceshow.aaspring.manager.i.u().s().getTransSwitchEnableFlag() == 1 && ja.a.b().f("KEY_IS_TRANSLATE_TAG")) {
            this.statusBarPlaceHolderViewHeight = StatusBarHelper.getStatusbarHeight(getActivity());
            this.toolbarHeight = this.toolbar.getMeasuredHeight();
            showTranslatePopupWindow();
            return;
        }
        hideTranslatePopupWindow();
    }

    private void checkChatSourceTrack() {
        String simpleName = F2fMatchActivity.class.getSimpleName();
        String simpleName2 = DatingSquareActivity.class.getSimpleName();
        String simpleName3 = PlantActivity.class.getSimpleName();
        String simpleName4 = PeopleNearbyActivity.class.getSimpleName();
        String simpleName5 = FindYouActivity.class.getSimpleName();
        Stack<Activity> activityStack = AppManager.getInstance().getActivityStack();
        for (int size = activityStack.size() - 1; size >= 0; size--) {
            Activity activity = activityStack.get(size);
            if (simpleName.equals(activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.chat_page, "2");
                return;
            } else if (simpleName2.equals(activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.chat_page, "3");
                return;
            } else if (simpleName3.equals(activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.chat_page, "4");
                return;
            } else if (simpleName4.equals(activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.chat_page, "5");
                return;
            } else if (simpleName5.equals(activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.chat_page, MVPActivity.FROM_BAG_BADGE);
                return;
            } else {
                if (activity instanceof MainActivity) {
                    MainActivity mainActivity = (MainActivity) activity;
                    if (mainActivity.k1()) {
                        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.chat_page, "1");
                        return;
                    } else if (mainActivity.i1()) {
                        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.chat_page, "7");
                        return;
                    }
                }
            }
        }
    }

    private void checkDraft() {
        V2TIMConversation v2TIMConversation;
        ChatControllerFragment chatControllerFragment = this.mChatControllerFragment;
        if (chatControllerFragment == null) {
            return;
        }
        String f22 = chatControllerFragment.f2();
        if (!TextUtils.isEmpty(f22) && (v2TIMConversation = this.mTIMConversation) != null) {
            String draftText = v2TIMConversation.getDraftText();
            if (TextUtils.isEmpty(draftText) || !Objects.equals(draftText, f22)) {
                V2TIMManager.getConversationManager().setConversationDraft(this.mConversationInfo.getTIMConversation().getConversationID(), f22, new f());
                this.mConversationInfo.setLastMsgStr(draftText);
                this.mConversationInfo.setDraft(true);
                this.mConversationInfo.setLastMsgTime(System.currentTimeMillis());
                com.guochao.faceshow.aaspring.manager.im.b.l0().R0(true);
            }
        } else if (this.mConversationInfo == null) {
        } else {
            V2TIMManager.getConversationManager().setConversationDraft(this.mConversationInfo.getTIMConversation().getConversationID(), null, new g());
            com.guochao.faceshow.aaspring.manager.im.b.l0().F0(this.mConversationInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkFriendRelation() {
        boolean z10;
        FriendsRelation friendsRelation;
        GCCoreActivity activity = getActivity();
        String str = SpUtils.getStr(activity, BaseConfig.SP_FRIEND_RELATION + getCurrentUser().getCurrentUserId());
        if (TextUtils.isEmpty(str) || (friendsRelation = (FriendsRelation) GsonGetter.getGson().fromJson(str, (Class<Object>) FriendsRelation.class)) == null || friendsRelation.getFriends().size() <= 0) {
            z10 = true;
        } else {
            z10 = true;
            for (String str2 : friendsRelation.getFriends()) {
                if (str2 != null && str2.equals(this.mChatUserId)) {
                    z10 = false;
                }
            }
        }
        if (z10) {
            GCRequestJava gCRequestJava = new GCRequestJava("api/token/social/imchat/add");
            int i9 = this.type;
            if (i9 == 99 || i9 == 100) {
                gCRequestJava.putBody("type", 1);
            }
            gCRequestJava.putBody("fromUserId", getCurrentUser().getCurrentUserId()).putBody("toUserIds", new String[]{this.mChatUserId}).j(new j(str)).request();
        }
    }

    private void checkGiftMessagePlayed(GiftMessage giftMessage) {
        if ((this instanceof FakeLiveChatActivity) || giftMessage.isAnimationPlayed()) {
            return;
        }
        if (giftMessage.getGiftInfo() != null) {
            this.mGiftAnimationDispatcher.f(Integer.valueOf(giftMessage.getGiftInfo().gift_id));
        }
        giftMessage.setAnimationPlayed();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r0.get(r0.size() - 1).isSelf() == false) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkIfShouldTrackEveryFirstFirstMsg() {
        /*
            r5 = this;
            java.util.List<com.guochao.faceshow.aaspring.modulars.chat.models.a> r0 = r5.mMessageList
            int r0 = r0.size()
            r1 = 1
            if (r0 <= 0) goto L1d
            java.util.List<com.guochao.faceshow.aaspring.modulars.chat.models.a> r0 = r5.mMessageList
            int r2 = r0.size()
            int r2 = r2 - r1
            java.lang.Object r0 = r0.get(r2)
            com.guochao.faceshow.aaspring.modulars.chat.models.a r0 = (com.guochao.faceshow.aaspring.modulars.chat.models.a) r0
            boolean r0 = r0.isSelf()
            if (r0 != 0) goto L1d
            goto L1e
        L1d:
            r1 = 0
        L1e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "FirstMessageTime"
            r0.append(r2)
            r3 = r1 ^ 1
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            java.lang.Class<java.lang.String> r3 = java.lang.String.class
            java.lang.String r4 = "conversation"
            java.lang.Object r0 = com.guochao.faceshow.aaspring.manager.b.a(r4, r0, r3)
            java.lang.String r0 = (java.lang.String) r0
            com.guochao.faceshow.aaspring.manager.i r3 = com.guochao.faceshow.aaspring.manager.i.u()
            com.guochao.faceshow.aaspring.config.ServerConfig r3 = r3.s()
            java.lang.String r3 = r3.getToday()
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L4e
            return
        L4e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r2)
            r2 = r1 ^ 1
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            com.guochao.faceshow.aaspring.manager.i r2 = com.guochao.faceshow.aaspring.manager.i.u()
            com.guochao.faceshow.aaspring.config.ServerConfig r2 = r2.s()
            java.lang.String r2 = r2.getToday()
            com.guochao.faceshow.aaspring.manager.b.f(r4, r0, r2)
            java.lang.String r0 = ""
            if (r1 == 0) goto L95
            com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils r1 = com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils.INSTANCE
            java.lang.String r2 = com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils.reply_first_msg
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            b8.d r4 = b8.e.g()
            b8.a r4 = r4.c()
            com.guochao.faceshow.bean.UserBean r4 = (com.guochao.faceshow.bean.UserBean) r4
            int r4 = r4.sex
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r1.track(r2, r0)
            goto Lc0
        L95:
            com.guochao.faceshow.aaspring.manager.im.b r1 = com.guochao.faceshow.aaspring.manager.im.b.l0()     // Catch: java.lang.Exception -> Lbc
            com.guochao.faceshow.aaspring.beans.ConversationInfo r1 = r1.g0()     // Catch: java.lang.Exception -> Lbc
            com.guochao.faceshow.aaspring.beans.ConversationInfoDetail r1 = r1.getConversationInfoDetail()     // Catch: java.lang.Exception -> Lbc
            int r1 = r1.getGender()     // Catch: java.lang.Exception -> Lbc
            com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils r2 = com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils.INSTANCE     // Catch: java.lang.Exception -> Lbc
            java.lang.String r3 = com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils.send_first_msg     // Catch: java.lang.Exception -> Lbc
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lbc
            r4.<init>()     // Catch: java.lang.Exception -> Lbc
            r4.append(r0)     // Catch: java.lang.Exception -> Lbc
            r4.append(r1)     // Catch: java.lang.Exception -> Lbc
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Exception -> Lbc
            r2.track(r3, r0)     // Catch: java.lang.Exception -> Lbc
            goto Lc0
        Lbc:
            r0 = move-exception
            r0.printStackTrace()
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity.checkIfShouldTrackEveryFirstFirstMsg():void");
    }

    private void checkIfShouldTrackFirstMsg() {
        FirstMessage firstMessage;
        if (this.mMessageList.size() > 0) {
            List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list = this.mMessageList;
            com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = list.get(list.size() - 1);
            if (aVar.isSelf() || !(aVar instanceof TextMessage) || aVar.getMessage() == null) {
                return;
            }
            String cloudCustomData = aVar.getMessage().getCloudCustomData();
            if (TextUtils.isEmpty(cloudCustomData) || (firstMessage = (FirstMessage) GsonGetter.getGson().fromJson(cloudCustomData, (Class<Object>) FirstMessage.class)) == null || firstMessage.isFirstMsg() != 1) {
                return;
            }
            EventTrackingUtils.getInstance().track(EventTrackingUtils.REPLY_IMGREET);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIfShouldTrackHelloStar(int i9, String str) {
        CloudCustomData cloudCustomData;
        if (this.mMessageList.size() > 0) {
            List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list = this.mMessageList;
            com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = list.get(list.size() - 1);
            if (aVar.isSelf() || !(aVar instanceof TextMessage) || aVar.getMessage() == null) {
                return;
            }
            String cloudCustomData2 = aVar.getMessage().getCloudCustomData();
            if (TextUtils.isEmpty(cloudCustomData2) || (cloudCustomData = (CloudCustomData) GsonGetter.getGson().fromJson(cloudCustomData2, (Class<Object>) CloudCustomData.class)) == null || cloudCustomData.getCode() != -101 || cloudCustomData.getType() != -101) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("status", i9);
            if (i9 == 1) {
                bundle.putString("desc", str);
            }
            EventTrackingUtils.getInstance().track(EventTrackingUtils.IM_CHAT_HELLOS_TAR_REPLY_THANK, bundle);
        }
    }

    private void checkIfShouldTrackOneDay() {
        if (this.mMessageList.size() > 0) {
            List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list = this.mMessageList;
            com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = list.get(list.size() - 1);
            if (!aVar.isSelf() && (aVar instanceof com.guochao.faceshow.aaspring.modulars.chat.models.c) && ((com.guochao.faceshow.aaspring.modulars.chat.models.c) aVar).isOneDay()) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.h24_reply_greeted);
            }
        }
    }

    private void checkIfShouldTrackPlant() {
        FirstMessage firstMessage;
        if (this.mMessageList.size() > 0) {
            List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list = this.mMessageList;
            com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = list.get(list.size() - 1);
            if (aVar.isSelf() || aVar.getMessage() == null) {
                return;
            }
            String cloudCustomData = aVar.getMessage().getCloudCustomData();
            if (TextUtils.isEmpty(cloudCustomData) || (firstMessage = (FirstMessage) GsonGetter.getGson().fromJson(cloudCustomData, (Class<Object>) FirstMessage.class)) == null) {
                return;
            }
            if (firstMessage.isFirstMsg() == 2) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.replay_msg_from_plant);
            } else if (firstMessage.isFirstMsg() == 3) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.replay_msg_from_plant_surprise);
            }
        }
    }

    private void checkIfShouldTrackSayHi() {
        if (this.mMessageList.size() > 0) {
            List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list = this.mMessageList;
            com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = list.get(list.size() - 1);
            if (!aVar.isSelf() && (aVar instanceof com.guochao.faceshow.aaspring.modulars.chat.models.d) && ((com.guochao.faceshow.aaspring.modulars.chat.models.d) aVar).isSayHi()) {
                EventTrackingUtils.getInstance().track("sayhi_reply");
                Bundle bundle = new Bundle();
                bundle.putString("systemCountry", FaceCastHttpClientImpl.f16219i);
                EventTrackingUtils.getInstance().track(EventTrackingUtils.REPLY_SAYHIIM, bundle);
            }
        }
    }

    private void checkInputting(List<V2TIMMessage> list) {
        com.guochao.faceshow.aaspring.modulars.chat.models.a aVar;
        View view;
        int i9 = 0;
        boolean z10 = false;
        while (true) {
            if (i9 >= list.size()) {
                aVar = null;
                break;
            }
            V2TIMMessage v2TIMMessage = list.get(i9);
            if (v2TIMMessage != null) {
                if (Objects.equals(v2TIMMessage.getSender(), this.mChatUserId)) {
                    aVar = com.guochao.faceshow.aaspring.modulars.chat.models.b.k(list.get(i9));
                    if (aVar instanceof InputtingMessage) {
                        z10 = false;
                        break;
                    }
                } else {
                    z10 = true;
                }
            }
            i9++;
        }
        if (aVar != null) {
            if (this.mInputtingFooter == null) {
                this.mInputtingFooter = i8.a.d(getActivity(), getLayoutInflater(), this.mChatMessageAdapter.getFooterLayout());
            }
            if (this.mInputtingFooter.getParent() == null) {
                this.mChatMessageAdapter.addFooterView(this.mInputtingFooter);
                this.mChatMessageAdapter.k();
                InputtingViewHolder inputtingViewHolder = this.mInputtingViewHolder;
                if (inputtingViewHolder != null) {
                    inputtingViewHolder.c();
                }
                InputtingViewHolder inputtingViewHolder2 = new InputtingViewHolder(getActivity(), this.mInputtingFooter);
                this.mInputtingViewHolder = inputtingViewHolder2;
                inputtingViewHolder2.bindViews(null, aVar);
            }
            this.mHandler.removeCallbacks(this.mRemoveInputtingRunnable);
            this.mHandler.postDelayed(this.mRemoveInputtingRunnable, 5000L);
            this.mShowingInputting = true;
            scrollToEnd(true, false);
        } else if (!this.mShowingInputting || (view = this.mInputtingFooter) == null || z10) {
        } else {
            this.mShowingInputting = false;
            this.mChatMessageAdapter.removeFooterView(view);
            this.mChatMessageAdapter.k();
            this.mInputtingViewHolder.c();
        }
    }

    private void checkPlantSendMessage(V2TIMMessage v2TIMMessage) {
        int i9 = this.type;
        if (i9 == 99) {
            checkUpData(v2TIMMessage, BaseConfig.SP_PLANT_HEAD_CLICK, 2, EventTrackingV2Utils.sent_msg_from_plant);
        } else if (i9 == 100) {
            checkUpData(v2TIMMessage, BaseConfig.SP_PLANT_RANDOM_CLICK, 3, EventTrackingV2Utils.sent_msg_from_plant_surprise);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUmChat() {
        if (getIntent().getBooleanExtra("withUM", false) && this.chatTime == 0) {
            this.chatTime = System.currentTimeMillis();
        }
    }

    private void checkUpData(V2TIMMessage v2TIMMessage, String str, int i9, String str2) {
        boolean z10;
        FriendsRelation friendsRelation;
        FriendsRelation friendsRelation2;
        GCCoreActivity activity = getActivity();
        String str3 = SpUtils.getStr(activity, str + getCurrentUser().getCurrentUserId());
        if (!TextUtils.isEmpty(str3) && (friendsRelation2 = (FriendsRelation) GsonGetter.getGson().fromJson(str3, (Class<Object>) FriendsRelation.class)) != null && friendsRelation2.getFriends().size() > 0) {
            for (String str4 : friendsRelation2.getFriends()) {
                if (str4 != null && str4.equals(this.mChatUserId)) {
                    z10 = false;
                    break;
                }
            }
        }
        z10 = true;
        if (z10) {
            v2TIMMessage.setCloudCustomData(GsonGetter.getGson().toJson(new FirstMessage(i9)));
            EventTrackingV2Utils.INSTANCE.track(str2);
            if (!TextUtils.isEmpty(str3)) {
                friendsRelation = (FriendsRelation) GsonGetter.getGson().fromJson(str3, (Class<Object>) FriendsRelation.class);
            } else {
                friendsRelation = new FriendsRelation();
            }
            friendsRelation.getFriends().add(this.mChatUserId);
            String json = GsonGetter.getGson().toJson(friendsRelation);
            GCCoreActivity activity2 = getActivity();
            SpUtils.setStr(activity2, str + getCurrentUser().getCurrentUserId(), json);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBaseDir() {
        File file = new File(new File(FilePathProvider.getPrivateRootPathV2("im_files")), SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID));
        V2TIMConversation v2TIMConversation = this.mTIMConversation;
        if (TextUtils.isEmpty(v2TIMConversation.getGroupID())) {
            file = new File(file, "c2c");
        }
        File file2 = new File(new File(new File(file, v2TIMConversation.getConversationID()), "image"), "origin");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return file2.getAbsolutePath();
    }

    private int getChatNum() {
        return SpUtils.getSelfInt(obtainChatKey());
    }

    private String getChatTime(long j10) {
        return j10 < 10000 ? "【10s以内】" : j10 < 180000 ? "【1-3分钟】" : j10 < AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED ? "【3-10分钟】" : j10 < 1200000 ? "【10-20分钟】" : j10 < 1800000 ? "【20-30分钟】" : j10 < 2400000 ? "【30-40分钟】" : j10 < 3600000 ? "【40分钟-60分钟】" : "【1小时以上】";
    }

    private void initMessage() {
        V2TIMMessageListGetOption v2TIMMessageListGetOption = new V2TIMMessageListGetOption();
        v2TIMMessageListGetOption.setGetType(3);
        V2TIMConversation v2TIMConversation = this.mTIMConversation;
        if (v2TIMConversation != null) {
            v2TIMMessageListGetOption.setUserID(v2TIMConversation.getUserID());
        }
        v2TIMMessageListGetOption.setCount(15);
        V2TIMManager.getMessageManager().getHistoryMessageList(v2TIMMessageListGetOption, new j0(this));
    }

    private boolean interceptMsgBeforeSend(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (aVar instanceof TextMessage) {
            String charSequence = ((TextMessage) aVar).getContent().toString();
            String[] strArr = mChatPools;
            if (charSequence.equals(strArr[0]) && charSequence.equals(strArr[1])) {
                saveMessageToLocal(aVar);
                return true;
            }
            strArr[0] = strArr[1];
            strArr[1] = charSequence;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTranslatePopupWindow$0(View view) {
        hideTranslatePopupWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMessage(int i9, V2TIMMessage v2TIMMessage) {
        if (this.mTIMConversation == null) {
            return;
        }
        V2TIMManager.getMessageManager().getC2CHistoryMessageList(this.mTIMConversation.getUserID(), i9, v2TIMMessage, this.mCallBack);
    }

    private void loadSearchData(V2TIMMessage v2TIMMessage) {
        com.guochao.faceshow.aaspring.modulars.chat.models.a k10 = com.guochao.faceshow.aaspring.modulars.chat.models.b.k(v2TIMMessage);
        if (k10 != null && !TextUtils.isEmpty(this.mKeyword)) {
            k10.setSearchKeyword(this.mKeyword);
        }
        e eVar = new e(this, v2TIMMessage, k10);
        if (this.mTIMConversation == null) {
            return;
        }
        V2TIMManager.getMessageManager().getC2CHistoryMessageList(this.mTIMConversation.getUserID(), 15, v2TIMMessage, eVar);
    }

    public static void navToChat(Context context, String str, int i9, String str2) {
        navToChat(context, str, i9, str2, false);
    }

    private String obtainChatKey() {
        return b8.e.g().c().getUserId() + "_" + this.mChatUserId + "_chat_num";
    }

    private void recoverData(Bundle bundle, String str) {
        if (bundle == null || !bundle.containsKey(str)) {
            return;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1064864305:
                if (str.equals("fromNewMatch")) {
                    c10 = 0;
                    break;
                }
                break;
            case -906336856:
                if (str.equals("search")) {
                    c10 = 1;
                    break;
                }
                break;
            case -892481550:
                if (str.equals("status")) {
                    c10 = 2;
                    break;
                }
                break;
            case -848412978:
                if (str.equals("photoFile")) {
                    c10 = 3;
                    break;
                }
                break;
            case -836030906:
                if (str.equals(Contants.USER_ID)) {
                    c10 = 4;
                    break;
                }
                break;
            case -787570210:
                if (str.equals("withUM")) {
                    c10 = 5;
                    break;
                }
                break;
            case -492111602:
                if (str.equals("mTIMConversation")) {
                    c10 = 6;
                    break;
                }
                break;
            case -277828411:
                if (str.equals("mLastVisibleChildIndex")) {
                    c10 = 7;
                    break;
                }
                break;
            case 3373707:
                if (str.equals("name")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 3575610:
                if (str.equals("type")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 524322398:
                if (str.equals("mConversationInfo")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 681195301:
                if (str.equals("mIsLoadingMessageFromSever")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1867998856:
                if (str.equals("otherLanguage")) {
                    c10 = '\f';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                getIntent().putExtra(str, bundle.getInt(str, 0));
                return;
            case 1:
                this.mKeyword = bundle.getString(str);
                return;
            case 2:
                this.mChatStatusBean = (ChatStatusBean) bundle.getParcelable("status");
                return;
            case 3:
                this.mPhotoFile = new File(bundle.getString(str));
                return;
            case 4:
                this.mChatUserId = bundle.getString(str);
                return;
            case 5:
                getIntent().putExtra(str, bundle.getBoolean(str));
                return;
            case 6:
                this.mTIMConversation = (V2TIMConversation) bundle.getSerializable(str);
                return;
            case 7:
                this.mLastVisibleChildIndex = bundle.getInt(str);
                return;
            case '\b':
                this.mChatUserName = bundle.getString(str);
                return;
            case '\t':
                getIntent().putExtra(str, bundle.getInt(str, 0));
                return;
            case '\n':
                this.mConversationInfo = (ConversationInfo) bundle.getParcelable(str);
                return;
            case 11:
                this.mIsLoadingMessageFromSever = bundle.getBoolean(str);
                return;
            case '\f':
                this.otherLanguage = bundle.getString(str);
                return;
            default:
                return;
        }
    }

    private void saveMessageToLocal(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (aVar != null) {
            V2TIMManager.getMessageManager().insertC2CMessageToLocalStorage(aVar.getMessage(), this.mChatUserId, getCurrentUser().getUserId(), null);
            ChatMessageAdapter chatMessageAdapter = this.mChatMessageAdapter;
            if (chatMessageAdapter != null) {
                chatMessageAdapter.e(aVar);
                this.mChatMessageAdapter.notifyDataSetChanged();
            }
        }
        scrollToEnd(true, true);
    }

    private void sendImageFile(boolean z10, LocalImageOrVideoBean localImageOrVideoBean) {
        Uri uri = localImageOrVideoBean.getUri();
        if (uri == null) {
            sendImageFile(z10, localImageOrVideoBean.getPath());
        } else {
            io.reactivex.k.just(1).subscribeOn(di.a.b()).observeOn(sh.a.a()).map(new u(uri)).subscribe(new t(z10));
        }
    }

    private void sendMsgToServer(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        V2TIMMessage message = aVar.getMessage();
        checkIfShouldTrackSayHi();
        checkIfShouldTrackOneDay();
        checkIfShouldTrackFirstMsg();
        checkIfShouldTrackPlant();
        checkPlantSendMessage(message);
        checkIfShouldTrackEveryFirstFirstMsg();
        com.guochao.faceshow.aaspring.manager.im.b.l0().Z();
        if (!(this instanceof MvpChatActivity)) {
            ChatStatusBean chatStatusBean = this.mChatStatusBean;
            aVar.setFriend(chatStatusBean != null && chatStatusBean.getAttentStatus() == 4);
        }
        V2TIMConversation v2TIMConversation = this.mTIMConversation;
        if (v2TIMConversation != null) {
            SendMessageHandle.sendMessage(v2TIMConversation, message, o9.b.d().a(this.mChatStatusBean, this.mChatUserId, aVar), new i(aVar));
            aVar.setNewMessage(true);
            ChatMessageAdapter chatMessageAdapter = this.mChatMessageAdapter;
            if (chatMessageAdapter != null) {
                chatMessageAdapter.e(aVar);
            }
            scrollToEnd(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r4v9, types: [T, java.util.HashMap] */
    public void sendResponse(ResourceListItemBean resourceListItemBean, int i9, ResourceCategoryItem resourceCategoryItem) {
        GiftData.GiftItemData giftItemData = new GiftData.GiftItemData();
        this.giftBean = giftItemData;
        giftItemData.gname = resourceListItemBean.getName();
        this.giftBean.price = Integer.parseInt(resourceListItemBean.getPrice());
        GiftData.GiftItemData giftItemData2 = this.giftBean;
        giftItemData2.counts = i9;
        giftItemData2.numbers = i9;
        giftItemData2.svga_url = TextUtils.isEmpty(resourceListItemBean.getMp4Url()) ? resourceListItemBean.getSvgaUrl() : resourceListItemBean.getMp4Url();
        this.giftBean.img = resourceListItemBean.getImg();
        this.giftBean.gift_id = resourceListItemBean.getId();
        this.giftBean.typeId = resourceCategoryItem.getSourctTypeId();
        F2FCommonJson f2FCommonJson = new F2FCommonJson();
        f2FCommonJson.cmd = CustomMessage.C2C_SEND_GIFT_CMD;
        ?? hashMap = new HashMap();
        f2FCommonJson.msg = hashMap;
        ((Map) hashMap).put("senderId", SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID));
        ((Map) f2FCommonJson.msg).put("senderName", SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_NICKNAME));
        ((Map) f2FCommonJson.msg).put("recieverName", this.mChatUserName);
        ((Map) f2FCommonJson.msg).put("recieverId", this.mChatUserId);
        ((Map) f2FCommonJson.msg).put("giftInfo", new Gson().toJson(this.giftBean));
        try {
            checkMessageBeforeSend(com.guochao.faceshow.aaspring.modulars.chat.models.b.k(V2TIMManager.getMessageManager().createCustomMessage(new Gson().toJson(f2FCommonJson, new n().getType()).getBytes())));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.util.HashMap] */
    private void sendTips(int i9, String str) {
        F2FCommonJson f2FCommonJson = new F2FCommonJson();
        f2FCommonJson.cmd = CustomMessage.C2C_SEND_FSX1_CMD;
        ?? hashMap = new HashMap();
        f2FCommonJson.msg = hashMap;
        f2FCommonJson.msg_type = i9;
        ((Map) hashMap).put("senderId", SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID));
        ((Map) f2FCommonJson.msg).put("senderName", SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_NICKNAME));
        ((Map) f2FCommonJson.msg).put("recieverName", this.mChatUserName);
        ((Map) f2FCommonJson.msg).put("recieverId", this.mChatUserId);
        ((Map) f2FCommonJson.msg).put("msg_text", str);
        ((Map) f2FCommonJson.msg).put("msg_type", String.valueOf(i9));
        try {
            sendMsgToServer(new TipsMessage(V2TIMManager.getMessageManager().createCustomMessage(new Gson().toJson(f2FCommonJson, new h().getType()).getBytes())));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void sendVideoMessage(LocalImageOrVideoBean localImageOrVideoBean) {
        if (localImageOrVideoBean.getUri() == null) {
            MediaFileFinder.getInstance().readVideoDetail(localImageOrVideoBean, new o(localImageOrVideoBean));
        } else {
            io.reactivex.k.just(localImageOrVideoBean).map(new q(localImageOrVideoBean)).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new p());
        }
    }

    private boolean shouldScrollToEnd() {
        if (!isDestroyed() && !isFinishing() && this.mRecyclerView != null && this.mChatMessageAdapter != null) {
            int findLastVisibleItemPosition = this.mLinearLayoutManager.findLastVisibleItemPosition();
            if (findLastVisibleItemPosition < 0) {
                findLastVisibleItemPosition = this.mLastVisibleChildIndex;
            } else {
                this.mLastVisibleChildIndex = findLastVisibleItemPosition;
            }
            int itemCount = ((this.mChatMessageAdapter.getItemCount() - 1) - this.mChatMessageAdapter.getFooterLayoutCount()) - 1;
            if (findLastVisibleItemPosition > 0 && findLastVisibleItemPosition >= itemCount) {
                View findViewByPosition = this.mLinearLayoutManager.findViewByPosition(findLastVisibleItemPosition);
                return findViewByPosition == null || Math.abs(findViewByPosition.getBottom() - this.mRecyclerView.getBottom()) <= DensityUtil.dp2px(getActivity(), 200.0f);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toChatDetailActivity() {
        Window window = getWindow();
        if (Build.VERSION.SDK_INT >= 26) {
            int[] iArr = new int[2];
            View decorView = window.getDecorView();
            Bitmap createBitmap = Bitmap.createBitmap(decorView.getWidth(), decorView.getHeight(), Bitmap.Config.ARGB_8888, true);
            window.getDecorView().getLocationInWindow(iArr);
            PixelCopy.request(window, new Rect(iArr[0], iArr[1], iArr[0] + decorView.getWidth(), iArr[1] + decorView.getHeight()), createBitmap, new b(createBitmap), this.mHandler);
            return;
        }
        this.mChatBitmap = Tools.captureScreen(window);
        startProfile();
    }

    public void afterGetConversation() {
        if (TextUtils.isEmpty(this.mChatUserId)) {
            finish();
        } else if (isFinishing() || isDestroyed()) {
        } else {
            this.mChatControllerFragment = ChatControllerFragment.e2(this.mChatUserId);
            try {
                getSupportFragmentManager().beginTransaction().replace(R.id.chat_controller, this.mChatControllerFragment).commitAllowingStateLoss();
            } catch (Exception unused) {
            }
            this.mReceiptListener = new k0(this, null);
            this.mRevokeListener = new l0(this, null);
            this.floatTitle.setText(this.mChatUserName);
            com.guochao.faceshow.aaspring.manager.im.b.l0().y(this.mChatUserId, this.mReceiptListener);
            com.guochao.faceshow.aaspring.manager.im.b.l0().z(this.mRevokeListener);
            V2TIMConversation v2TIMConversation = this.mTIMConversation;
            if (v2TIMConversation != null) {
                String draftText = v2TIMConversation.getDraftText();
                if (!TextUtils.isEmpty(draftText)) {
                    this.mChatControllerFragment.p2(draftText);
                }
            }
            if (this.mChatStatusBean == null) {
                this.mChatStatusBean = (ChatStatusBean) getIntent().getParcelableExtra("status");
            }
            if (this.mChatStatusBean != null) {
                initChatControl(false);
                this.isTranslate = "1".equals(this.mChatStatusBean.getAutoTransFlag());
                this.otherLanguage = this.mChatStatusBean.getPreferentialLang();
            }
            ChatMessageAdapter chatMessageAdapter = new ChatMessageAdapter(getActivity(), this.mChatUserId, this.mMessageList);
            this.mChatMessageAdapter = chatMessageAdapter;
            chatMessageAdapter.m(this.mTIMConversation);
            this.mChatMessageAdapter.l(this.mChatControllerFragment);
            this.mChatMessageAdapter.setOnCheckDataListener(new d());
            V2TIMMessage k02 = com.guochao.faceshow.aaspring.manager.im.b.l0().k0();
            if (k02 != null) {
                loadSearchData(k02);
            } else {
                initMessage();
            }
            com.guochao.faceshow.aaspring.manager.im.b.l0().x(this);
            this.mRecyclerView.setAdapter(this.mChatMessageAdapter);
        }
    }

    @OnClick
    public void cancel(View view) {
        findViewById(R.id.chat_prompt).setVisibility(8);
        setHeaderSpace();
    }

    public void checkMessageBeforeSend(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (this instanceof MvpChatActivity) {
            sendMsgToServer(aVar);
            return;
        }
        this.mHasSendMessage = true;
        aVar.setOtherLanguage(this.otherLanguage);
        if (aVar instanceof GiftMessage) {
            checkGiftMessagePlayed((GiftMessage) aVar);
            sendMsgToServer(aVar);
            return;
        }
        ChatStatusBean chatStatusBean = this.mChatStatusBean;
        if (chatStatusBean == null) {
            aVar.getMessage().setLocalCustomInt(1002);
            saveMessageToLocal(aVar);
            getChatStatus(this.mFirst);
            showError("消息发送失败：mChatStatusBean == null");
        } else if (chatStatusBean.getIsChat() == 0) {
            if (interceptMsgBeforeSend(aVar)) {
                return;
            }
            sendMsgToServer(aVar);
        } else if (this.mChatStatusBean.getIsChat() == 1) {
            aVar.getMessage().setLocalCustomInt(1000);
            saveMessageToLocal(aVar);
            saveMessageToLocal(TipsMessage.from(2, BaseApplication.getInstance().getString(R.string.Little_Black_House)));
            showError("消息发送失败：mChatStatusBean.getIsChat() == 1 被拉黑");
        } else if (this.mChatStatusBean.getIsChat() == 2) {
            if (aVar instanceof TextMessage ? StringUtils.hasUrl(((TextMessage) aVar).getContent().toString()) : false) {
                aVar.getMessage().setLocalCustomInt(1004);
                saveMessageToLocal(aVar);
                saveMessageToLocal(TipsMessage.from(2001, ""));
            } else if (getChatNum() >= 1) {
                if (interceptMsgBeforeSend(aVar)) {
                    return;
                }
                sendMsgToServer(aVar);
                if (this.mChatUserId != null && !ChatLimitManager.getInstance().isChatLimit(this.mChatUserId)) {
                    ChatLimitManager.getInstance().addChatLimitUser(this.mChatUserId);
                    post("tokens/im/sendMsg/addImCount").D("accountId", this.mChatUserId).L();
                }
            } else {
                if (this.mChatUserId != null && !ChatLimitManager.getInstance().isChatLimit(this.mChatUserId)) {
                    ChatLimitManager.getInstance().addChatLimitUser(this.mChatUserId);
                    post("tokens/im/sendMsg/addImCount").D("accountId", this.mChatUserId).L();
                }
                sendMsgToServer(aVar);
                saveMessageToLocal(TipsMessage.from(1, ""));
                addChatNum();
            }
        } else if (this.mChatStatusBean.getIsChat() == 3) {
            aVar.getMessage().setLocalCustomInt(1001);
            saveMessageToLocal(aVar);
            showToast(R.string.chat_refuse_stranger_prompt);
            showError("消息发送失败：mChatStatusBean.getIsChat() == 3 对方设置了不想接收陌生人消息");
        } else {
            aVar.getMessage().setLocalCustomInt(1002);
            saveMessageToLocal(aVar);
            getChatStatus(this.mFirst);
            showError("消息发送失败：mChatStatusBean.getIsChat() == " + this.mChatStatusBean.getIsChat() + " isChat未定义的值");
        }
        ChatStatusBean chatStatusBean2 = this.mChatStatusBean;
        if (chatStatusBean2 != null) {
            this.mChatStatusBean.setChatNum(chatStatusBean2.getChatNum() + 1);
            ChatControllerFragment chatControllerFragment = this.mChatControllerFragment;
            if (chatControllerFragment != null && chatControllerFragment.f16893n == 0) {
                chatControllerFragment.W1(this.mChatUserId);
            }
        }
        ChatControllerFragment chatControllerFragment2 = this.mChatControllerFragment;
        if (chatControllerFragment2 != null) {
            chatControllerFragment2.Z1(this.mChatStatusBean);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity
    public void checkSendEnable() {
        ChatStatusBean chatStatusBean;
        ChatControllerFragment chatControllerFragment = this.mChatControllerFragment;
        if (chatControllerFragment == null || (chatStatusBean = this.mChatStatusBean) == null) {
            return;
        }
        chatControllerFragment.Z1(chatStatusBean);
    }

    public List<com.guochao.faceshow.aaspring.modulars.chat.models.a> filterMessages(List<V2TIMMessage> list) {
        List<com.guochao.faceshow.aaspring.modulars.chat.models.a> filterMessage = MessageFilterHelper.filterMessage(list, this.mChatUserId, this.mMessageList);
        for (int i9 = 0; i9 < filterMessage.size(); i9++) {
            com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = filterMessage.get(i9);
            if (aVar instanceof GiftMessage) {
                checkGiftMessagePlayed((GiftMessage) aVar);
            }
        }
        if (!filterMessage.isEmpty()) {
            setHasRead(true);
        }
        return filterMessage;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        if (TextUtils.isEmpty(this.mChatUserId)) {
            return;
        }
        ConversationInfo conversationInfo = this.mConversationInfo;
        if (conversationInfo != null && conversationInfo.isNewConversation() && this.mHasSendMessage && this.mFromNewMatch) {
            setResult(-1, new Intent().putExtra(AccessToken.USER_ID_KEY, this.mChatUserId));
        }
        super.finish();
    }

    @OnClick
    public void follow(View view) {
        this.ivFocus.setVisibility(8);
        SvgaImageViewV2 svgaImageViewV2 = this.focusSVGA;
        if (svgaImageViewV2 != null) {
            ib.a.a(this.ivFocus, svgaImageViewV2, R.raw.focus_large_width);
        }
        findViewById(R.id.chat_prompt).setVisibility(8);
        setHeaderSpace();
        y7.e eVar = new y7.e(this.mChatUserId);
        eVar.g(true);
        EventBus.getDefault().post(eVar);
        ImFocusPopupWindow imFocusPopupWindow = this.focuspopupWindow;
        if (imFocusPopupWindow != null && imFocusPopupWindow.isShowing()) {
            ja.a.b().e("KEY_IS_FOCUS_TAG");
            this.focuspopupWindow.dismiss();
        }
        ib.b.b(this.mChatUserId, FriendFromSource.DEFAULT, this, new w());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    public ChatControllerFragment getChatControllerFragment() {
        return this.mChatControllerFragment;
    }

    public j8.a getGiftAnimationDispatcher() {
        return this.mGiftAnimationDispatcher;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_new_chat;
    }

    public void hideTranslatePopupWindow() {
        TranslatePopupWindow translatePopupWindow = this.translatePopupWindow;
        if (translatePopupWindow != null) {
            this.merge.removeView(translatePopupWindow);
        }
        ja.a.b().e("KEY_IS_TRANSLATE_TAG");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        checkChatSourceTrack();
        this.mFromNewMatch = getIntent().getIntExtra("fromNewMatch", 0) == 1;
        this.type = getIntent().getIntExtra("type", 0);
        PushBean pushBean = (PushBean) MemoryCache.getInstance().get(PushBean.class);
        if (pushBean != null) {
            pushBean.withChat = false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 8192);
        }
        if (!(this instanceof FakeLiveChatActivity)) {
            AndroidBug5497Workaround.assistActivity(this);
        }
        this.mGiftAnimationDispatcher = new j8.a(this, this.animViewLay);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity(), 1, false);
        this.mLinearLayoutManager = linearLayoutManager;
        linearLayoutManager.setStackFromEnd(true);
        this.mRecyclerView.setLayoutManager(this.mLinearLayoutManager);
        this.mRecyclerView.setOnTouchListener(new c0());
        RecyclerViewAnimatorUtils.closeAnimator(this.mRecyclerView);
        this.mRecyclerView.addOnScrollListener(new d0());
        refreshEndIcon();
    }

    protected boolean listenKeyboard() {
        return true;
    }

    public void loadData(@Nullable Bundle bundle) {
        this.mChatUserId = getIntent().getStringExtra(Contants.USER_ID);
        this.mChatUserName = getIntent().getStringExtra("name");
        this.mKeyword = getIntent().getStringExtra("search");
        recoverData(bundle, Contants.USER_ID);
        recoverData(bundle, "name");
        recoverData(bundle, "search");
        if (TextUtils.isEmpty(this.mChatUserId)) {
            ConversationInfo g02 = com.guochao.faceshow.aaspring.manager.im.b.l0().g0();
            this.mConversationInfo = g02;
            if (g02 == null) {
                finish();
                return;
            }
        } else {
            this.mConversationInfo = com.guochao.faceshow.aaspring.manager.im.b.l0().b(this.mChatUserId);
        }
        if (this.mConversationInfo.getConversationInfoDetail() != null) {
            this.mChatUserName = this.mConversationInfo.getConversationInfoDetail().getNickName();
            this.mChatUserId = this.mConversationInfo.getConversationInfoDetail().getUserId();
        }
        if (TextUtils.isEmpty(this.mChatUserId)) {
            this.mChatUserId = this.mConversationInfo.getConversationId();
        }
        if (TextUtils.isEmpty(this.mChatUserId)) {
            finish();
            return;
        }
        if (this.mConversationInfo.getTIMConversation() != null) {
            this.mChatUserId = this.mConversationInfo.getTIMConversation().getUserID();
            this.mTIMConversation = this.mConversationInfo.getTIMConversation();
            afterGetConversation();
        } else {
            c cVar = new c();
            V2TIMConversationManager conversationManager = V2TIMManager.getConversationManager();
            conversationManager.getConversation("c2c_" + this.mChatUserId, cVar);
        }
        com.guochao.faceshow.aaspring.manager.im.b.l0().N0(this.mConversationInfo);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity
    public void notifyData(String str, boolean z10) {
        List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list = this.mMessageList;
        if (list == null || this.mChatMessageAdapter == null) {
            return;
        }
        for (com.guochao.faceshow.aaspring.modulars.chat.models.a aVar : list) {
            aVar.setTranslate(z10);
            aVar.setOtherLanguage(str);
        }
        ChatMessageAdapter chatMessageAdapter = this.mChatMessageAdapter;
        if (chatMessageAdapter != null) {
            chatMessageAdapter.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        ChatStatusBean chatStatusBean;
        File file;
        Uri data;
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1 && i9 == 200 && intent != null && (data = intent.getData()) != null) {
            if (Build.VERSION.SDK_INT == 29) {
                io.reactivex.k.just(data).map(new a0()).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new z());
            } else {
                File uriToFile = UriUtils.uriToFile(getApplicationContext(), data);
                if (uriToFile != null) {
                    sendImageFile(false, uriToFile.getAbsolutePath());
                }
            }
        }
        if (i10 == -1 && i9 == 100 && (file = this.mPhotoFile) != null && file.exists()) {
            sendImageFile(false, this.mPhotoFile.getAbsolutePath());
        }
        if (i10 == -1 && i9 == 1001 && (chatStatusBean = (ChatStatusBean) MemoryCache.getInstance().clear(ChatStatusBean.class)) != null) {
            this.mChatStatusBean = chatStatusBean;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        if (getIntent().getBooleanExtra("withUM", false)) {
            new HashMap().put("Chat_Time", this.chatTime == 0 ? "0" : getChatTime(System.currentTimeMillis() - this.chatTime));
            getIntent().putExtra("withUM", false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity, com.guochao.faceshow.aaspring.base.fragment.MediaFilesFragment.g
    public void onCameraClick(View view) {
        if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
            showToast(R.string.one_v_one_is_matching);
            return;
        }
        sendPhoto();
        ChatControllerFragment chatControllerFragment = this.mChatControllerFragment;
        if (chatControllerFragment != null) {
            chatControllerFragment.o2(true);
        }
    }

    public void onChatInputModeChanged(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        recoverData(bundle, "fromNewMatch");
        recoverData(bundle, "type");
        recoverData(bundle, "status");
        super.onCreate(bundle);
        loadData(bundle);
        this.otherLanguage = getIntent().getStringExtra("otherLanguage");
        recoverData(bundle, "otherLanguage");
        if (listenKeyboard()) {
            this.mKeyboardHeightProvider = new KeyboardHeightProvider(this, getWindow().getDecorView());
            getWindow().getDecorView().post(new v());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.setAdapter(null);
        }
        if (listenKeyboard()) {
            this.mKeyboardHeightProvider.close();
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventBus(Intent intent) {
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (LOCAL_EVENT_MSG.FOLLOW_CANCLE.equals(action) || LOCAL_EVENT_MSG.FOLLOW_ADD.equals(action) || LOCAL_EVENT_MSG.BLACK_NAME_ADD.equals(action) || LOCAL_EVENT_MSG.BLACK_NAME_CANCLE.equals(action)) {
            String stringExtra = intent.getStringExtra(Contants.USER_ID);
            if (!TextUtils.isEmpty(stringExtra) && stringExtra.equals(this.mChatUserId)) {
                getChatStatus(false);
            }
        }
        if (LOCAL_EVENT_MSG.BLACK_NAME_ADD_OTHER.equals(action)) {
            saveMessageToLocal(TipsMessage.from(3, getString(R.string.You_have_blocked_this_user)));
            getChatStatus(false);
        }
        if (LOCAL_EVENT_MSG.BLACK_NAME_CANCLE_OTHER.equals(action)) {
            getChatStatus(false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.utils.f
    public void onFaceItemClick(ResourceListItemBean resourceListItemBean, View view, int i9) {
        FaceMessage from = FaceMessage.from(resourceListItemBean);
        if (from != null) {
            checkMessageBeforeSend(from);
        }
        ChatControllerFragment chatControllerFragment = this.mChatControllerFragment;
        if (chatControllerFragment != null) {
            chatControllerFragment.W1(this.mChatUserId);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity, com.guochao.faceshow.aaspring.base.fragment.MediaFilesFragment.g
    public void onGalleryClick(View view) {
        new com.tbruyelle.rxpermissions2.a(this).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new s());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.utils.e
    public void onInputting(String str) {
        if (this.mTIMConversation == null) {
            return;
        }
        SendMessageHandle.sendOnLineC2CMessage(this.mTIMConversation.getUserID(), new InputtingMessage().getMessage(), new x());
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public void onKeyboardHeightChanged(int i9, int i10) {
        LogUtils.i("ChatActivity", "onKeyboardHeightChanged: " + i9);
        if (i9 > 0) {
            ChatControllerFragment chatControllerFragment = this.mChatControllerFragment;
            if (chatControllerFragment != null && this.mMainContentView != null && chatControllerFragment.d2() == 1) {
                this.mMainContentView.setPadding(0, 0, 0, i9);
            }
            if (this.mRecyclerView == null || this.mCanScrollDown) {
                return;
            }
            scrollToEnd(false, true);
            return;
        }
        this.mMainContentView.setPadding(0, 0, 0, 0);
        if (i9 != -1) {
            scrollToEnd(false, false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public /* synthetic */ void onKeyboardHeightChanged(int i9, int i10, int i11) {
        com.guochao.faceshow.aaspring.utils.e.a(this, i9, i10, i11);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder.f
    public void onMediaMessageClick(BaseMessageViewHolder baseMessageViewHolder, int i9, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, View view) {
        int size = this.mMessageList.size();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2 = this.mMessageList.get(i11);
            if ((aVar2 instanceof VideoMessage) || (aVar2 instanceof ImageMessage)) {
                arrayList.add(aVar2);
            }
            if (aVar == aVar2) {
                i10 = arrayList.size() - 1;
            }
        }
        if (this.mImImageAndVideoZoomHelper == null) {
            ImImageAndVideoZoomHelper imImageAndVideoZoomHelper = new ImImageAndVideoZoomHelper(this, this);
            this.mImImageAndVideoZoomHelper = imImageAndVideoZoomHelper;
            registerOnPrefetchMessageListener(imImageAndVideoZoomHelper);
        }
        com.guochao.faceshow.aaspring.manager.im.b.l0().O0(arrayList);
        this.mImImageAndVideoZoomHelper.start(arrayList, view, i10, this.mRecyclerView);
        ChatControllerFragment chatControllerFragment = this.mChatControllerFragment;
        if (chatControllerFragment != null) {
            chatControllerFragment.a2();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        release();
        ChatControllerFragment chatControllerFragment = this.mChatControllerFragment;
        if (chatControllerFragment != null) {
            chatControllerFragment.p2("");
            this.mChatControllerFragment.q2(1);
        }
        setIntent(intent);
        this.mMessageList.clear();
        ChatMessageAdapter chatMessageAdapter = this.mChatMessageAdapter;
        if (chatMessageAdapter != null) {
            chatMessageAdapter.notifyDataSetChanged();
        }
        loadData(null);
        getChatStatus(false);
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public void onNewMessage(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        V2TIMMessage message = aVar.getMessage();
        if (Objects.equals(aVar.getMessage().getUserID(), this.mChatUserId) && TextUtils.isEmpty(aVar.getMessage().getGroupID())) {
            this.mHasSendMessage = true;
        }
        ArrayList arrayList = new ArrayList(Collections.singleton(message));
        checkInputting(arrayList);
        List<com.guochao.faceshow.aaspring.modulars.chat.models.a> filterMessages = filterMessages(arrayList);
        setTranslateTag(filterMessages, true);
        if (this.isTranslate && this.isTranslateLanguage) {
            List<String> list = this.translateList;
            if (list == null) {
                this.translateList = new ArrayList();
            } else {
                list.clear();
            }
            for (com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2 : filterMessages) {
                if ((aVar2 instanceof TextMessage) && !TextUtils.isEmpty(aVar2.getSummary())) {
                    this.translateList.add(aVar2.getSummary());
                }
            }
            if (this.translateList.size() > 0) {
                com.guochao.faceshow.aaspring.modulars.translate.a.a().f(this.translateList, new y(filterMessages));
            } else if (filterMessages.size() > 0) {
                checkUmChat();
                this.mChatMessageAdapter.g(filterMessages);
                scrollToEnd(true, false);
            }
        } else if (filterMessages.size() > 0) {
            checkUmChat();
            this.mChatMessageAdapter.g(filterMessages);
            scrollToEnd(true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (listenKeyboard()) {
            this.mKeyboardHeightProvider.setKeyboardHeightObserver(null);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.VoiceRecordFragment.c
    public void onRecordEnd(VoiceInfo voiceInfo, boolean z10) {
        if (!z10) {
            checkMessageBeforeSend(VoiceMessage.from(voiceInfo.getDuration(), voiceInfo.getFilePath()));
        }
        FrameLayout frameLayout = this.mFloatingView;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
        getWindow().setStatusBarColor(getResources().getColor(R.color.white));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.VoiceRecordFragment.c
    public void onRecordStart(VoiceRecordFragment voiceRecordFragment) {
        FrameLayout frameLayout = this.mFloatingView;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        getWindow().setStatusBarColor(Color.parseColor("#66000000"));
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public void onRecvMessageRevoked(String str) {
        ChatMessageAdapter chatMessageAdapter = this.mChatMessageAdapter;
        if (chatMessageAdapter == null || chatMessageAdapter.getData() == null) {
            return;
        }
        for (int i9 = 0; i9 < this.mChatMessageAdapter.getData().size(); i9++) {
            com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = (com.guochao.faceshow.aaspring.modulars.chat.models.a) this.mChatMessageAdapter.getItem(i9);
            if (aVar != null && aVar.getMessage() != null && aVar.getMessage().getMsgID() != null && aVar.getMessage().getMsgID().equalsIgnoreCase(str)) {
                aVar.setStatus(6);
                this.mChatMessageAdapter.k();
                return;
            }
        }
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(@NonNull Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        recoverData(bundle, "withUM");
        recoverData(bundle, "photoFile");
        recoverData(bundle, "startCamera");
        recoverData(bundle, "recycle");
        recoverData(bundle, "mIsLoadingMessageFromSever");
        recoverData(bundle, "mLastVisibleChildIndex");
        recoverData(bundle, "mTIMConversation");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (listenKeyboard()) {
            this.mKeyboardHeightProvider.setKeyboardHeightObserver(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("otherLanguage", this.otherLanguage);
        bundle.putBoolean("withUM", getIntent().getBooleanExtra("withUM", false));
        bundle.putInt("fromNewMatch", getIntent().getIntExtra("fromNewMatch", 0));
        bundle.putString(Contants.USER_ID, this.mChatUserId);
        bundle.putString("name", this.mChatUserName);
        bundle.putString("search", this.mKeyword);
        bundle.putInt("type", this.type);
        bundle.putParcelable("status", this.mChatStatusBean);
        bundle.putParcelable("mConversationInfo", this.mConversationInfo);
        File file = this.mPhotoFile;
        if (file != null) {
            bundle.putString("photoFile", file.getAbsolutePath());
        }
        bundle.putBoolean("mIsLoadingMessageFromSever", this.mIsLoadingMessageFromSever);
        bundle.putInt("mLastVisibleChildIndex", this.mLastVisibleChildIndex);
        bundle.putSerializable("mTIMConversation", this.mTIMConversation);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.MediaFilesFragment.g
    public void onSelect(View view, List<LocalImageOrVideoBean> list) {
        if (list.isEmpty() || this.mChatControllerFragment == null) {
            return;
        }
        for (LocalImageOrVideoBean localImageOrVideoBean : list) {
            int fileType = localImageOrVideoBean.getFileType();
            if (fileType == 1) {
                sendImageFile(false, localImageOrVideoBean);
            } else if (fileType == 2) {
                sendVideoMessage(localImageOrVideoBean);
            } else {
                LogUtils.i("ChatActivity", "onSelect:  选中了尚未支持的文件类型");
            }
        }
        this.mChatControllerFragment.q2(1);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity, u8.b
    public void onSelectGift(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List<GiftFragment.r> list, int i9, boolean z10, SendGiftCallBack sendGiftCallBack) {
        onSelectGift(resourceCategoryItem, resourceListItemBean, list, i9, z10, 4, -1, sendGiftCallBack);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onSendNormalCallMessage(com.guochao.faceshow.aaspring.modulars.trtc.message.a aVar) {
        com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2;
        ChatMessageAdapter chatMessageAdapter = this.mChatMessageAdapter;
        if (chatMessageAdapter == null || (aVar2 = aVar.f22064a) == null) {
            return;
        }
        chatMessageAdapter.e(aVar2);
        this.mChatMessageAdapter.k();
        this.mRecyclerView.scrollToPosition(this.mChatMessageAdapter.getItemCount() - 1);
    }

    @Override // com.guochao.faceshow.aaspring.utils.ImImageAndVideoZoomHelper.OnPrefetchListener
    public void onShouldPrefetch(int i9) {
        com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = (com.guochao.faceshow.aaspring.modulars.chat.models.a) this.mChatMessageAdapter.getItem(0);
        loadMessage(i9, aVar != null ? aVar.getMessage() : null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        checkDraft();
        if (Foreground.get().isForeground() || !getIntent().getBooleanExtra("withUM", false)) {
            return;
        }
        new HashMap().put("Chat_Time", this.chatTime == 0 ? "0" : getChatTime(System.currentTimeMillis() - this.chatTime));
        getIntent().putExtra("withUM", false);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity
    protected void refreshEndIcon() {
        View view;
        ChatControllerFragment chatControllerFragment;
        View view2;
        ChatStatusBean chatStatusBean = this.mChatStatusBean;
        if (chatStatusBean != null && chatStatusBean.getOnlineCode() == 1) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            Drawable drawable = ContextCompat.getDrawable(getActivity(), R.mipmap.trtc_appointment_online);
            if (drawable != null) {
                drawable.setBounds(0, 0, ScreenTools.dip2px(10.0f), ScreenTools.dip2px(10.0f));
                SpanColorUtils.append(spannableStringBuilder, new com.guochao.faceshow.aaspring.modulars.live.adapter.a(drawable));
                SpannableStringBuilder append = spannableStringBuilder.append((CharSequence) " ");
                String str = this.mChatUserName;
                if (str == null) {
                    str = "";
                }
                append.append((CharSequence) str);
                this.floatTitle.setText(spannableStringBuilder);
            }
        }
        setEndIcon(R.mipmap.icon_chat_focus, R.mipmap.icon_im_moredian);
        ChatStatusBean chatStatusBean2 = this.mChatStatusBean;
        if (chatStatusBean2 != null && chatStatusBean2.getAppointState() == 1 && (chatControllerFragment = this.mChatControllerFragment) != null) {
            if (!(this instanceof FakeLiveChatActivity) && (view2 = chatControllerFragment.ivVideo) != null) {
                view2.setVisibility(0);
            }
            View view3 = this.mChatControllerFragment.ivVideo;
            if (view3 != null) {
                view3.setOnClickListener(new e0());
            }
        } else {
            ChatControllerFragment chatControllerFragment2 = this.mChatControllerFragment;
            if (chatControllerFragment2 != null && (view = chatControllerFragment2.ivVideo) != null) {
                view.setVisibility(8);
            }
        }
        if (this.mChatStatusBean != null) {
            if (this.ivFocus == null) {
                return;
            }
            SvgaImageViewV2 svgaImageViewV2 = this.focusSVGA;
            if (svgaImageViewV2 != null && svgaImageViewV2.getVisibility() == 8) {
                this.ivFocus.setVisibility(this.mChatStatusBean.getAttentStatus() > 2 ? 8 : 0);
            } else {
                this.ivFocus.postDelayed(new f0(), ib.b.f41005a);
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.floatTitle.getLayoutParams();
            if (this.mChatStatusBean.getAttentStatus() > 2) {
                marginLayoutParams.setMarginEnd(DensityUtil.dp2px(60.0f));
                checkAndshowTranslatePopup();
                this.floatTitle.setLayoutParams(marginLayoutParams);
            }
        }
        this.ivFocus.setOnClickListener(new g0());
        this.ivMore.setOnClickListener(new h0());
        this.ivBack.setOnClickListener(new a());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity
    public void release() {
        super.release();
        com.guochao.faceshow.aaspring.manager.im.b.l0().G(this);
        com.guochao.faceshow.aaspring.manager.im.b.l0().I(this.mRevokeListener);
        this.mGiftAnimationDispatcher.g();
        this.mRevokeListener = null;
        this.mReceiptListener = null;
        this.mTIMConversation = null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity
    public void scrollToEnd(boolean z10, boolean z11) {
        int itemCount;
        if (this.mRecyclerView == null || isDestroyed() || this.mChatMessageAdapter == null) {
            return;
        }
        if ((z11 || shouldScrollToEnd()) && (itemCount = this.mChatMessageAdapter.getItemCount()) > 0) {
            if (z10) {
                this.mRecyclerView.smoothScrollToPosition(itemCount - 1);
            } else {
                this.mRecyclerView.scrollToPosition(itemCount - 1);
            }
        }
    }

    public void sendPhoto() {
        new com.tbruyelle.rxpermissions2.a(getActivity()).p("android.permission.CAMERA").subscribe(new r());
    }

    public void sendText(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.length() > 2000) {
            showToast(R.string.Words_length_over_limit);
            return;
        }
        ChatStatusBean chatStatusBean = this.mChatStatusBean;
        if (chatStatusBean != null && chatStatusBean.getIsChat() == 2 && str.length() > 200) {
            showToast(R.string.Follow_each_other_to_send_more_text);
            return;
        }
        ChatControllerFragment chatControllerFragment = this.mChatControllerFragment;
        if (chatControllerFragment != null) {
            chatControllerFragment.p2("");
        }
        TextMessage from = TextMessage.from(str);
        if (z10) {
            from.getMessage().setCloudCustomData(GsonGetter.getGson().toJson(new FirstMessage(1)));
        }
        if (SensitiveWordFilter.getInstance().hasKeyword(str)) {
            from.setErrorCode(BaseConstants.ERR_SVR_COMM_SENSITIVE_TEXT);
            from.getMessage().setLocalCustomInt(BaseConstants.ERR_SVR_COMM_SENSITIVE_TEXT);
            saveMessageToLocal(from);
            scrollToEnd();
            return;
        }
        checkMessageBeforeSend(from);
    }

    public void setTranslateTag(List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list, boolean z10) {
        for (com.guochao.faceshow.aaspring.modulars.chat.models.a aVar : list) {
            if (aVar instanceof TextMessage) {
                aVar.setNewMessage(z10);
                aVar.setTranslate(this.isTranslate && this.isTranslateLanguage);
                aVar.setOtherLanguage(this.otherLanguage);
            }
        }
    }

    public void showFocusPopupWindow() {
        if (isDestroyed() || isFinishing() || (this instanceof FakeLiveChatActivity)) {
            return;
        }
        if (!ja.a.b().f("KEY_IS_FOCUS_TAG")) {
            checkAndshowTranslatePopup();
            return;
        }
        if (this.focuspopupWindow == null) {
            ImFocusPopupWindow imFocusPopupWindow = new ImFocusPopupWindow(this.ivFocus.getContext());
            this.focuspopupWindow = imFocusPopupWindow;
            imFocusPopupWindow.setOutsideTouchable(true);
            this.focuspopupWindow.setTouchable(true);
            this.focuspopupWindow.setOnDismissListener(new b0());
        }
        if (this.focuspopupWindow.isShowing() || isDestroyed() || isFinishing()) {
            return;
        }
        this.focuspopupWindow.showAtLocation(getWindow().getDecorView(), 48, 0, 0);
    }

    public void showTranslatePopupWindow() {
        FrameLayout.LayoutParams layoutParams;
        if ((this instanceof FakeLiveChatActivity) || (this instanceof MvpChatActivity)) {
            return;
        }
        TranslatePopupWindow translatePopupWindow = this.translatePopupWindow;
        if (translatePopupWindow == null) {
            this.translatePopupWindow = new TranslatePopupWindow(getActivity());
            layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = BadgeDrawable.TOP_END;
            layoutParams.setMarginEnd(DensityUtil.dp2px(14.0f));
            layoutParams.topMargin = DensityUtil.dp2px(15.0f);
            this.merge.addView(this.translatePopupWindow, layoutParams);
            this.merge.findViewById(R.id.iv_close).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.chat.activity.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatActivity.this.lambda$showTranslatePopupWindow$0(view);
                }
            });
        } else {
            layoutParams = (FrameLayout.LayoutParams) translatePopupWindow.getLayoutParams();
        }
        layoutParams.topMargin = this.statusBarPlaceHolderViewHeight + (this.toolbarHeight / 2) + DensityUtil.dp2px(10.0f);
        this.translatePopupWindow.setLayoutParams(layoutParams);
    }

    void startProfile() {
        ja.a.b().e("KEY_IS_TRANSLATE_TAG");
        ChatDetailActivity.B0(this, this.mChatBitmap, this.mChatStatusBean, this.mChatUserId, 1001);
    }

    public static void navToChat(Context context, String str, int i9, String str2, boolean z10) {
        Intent intent = new Intent(context, ChatActivity.class);
        intent.putExtra(Contants.USER_ID, str);
        intent.putExtra("type", i9);
        intent.putExtra("name", str2);
        intent.putExtra("withUM", z10);
        intent.putExtra("otherLanguage", SpUtils.getStr(context, b8.e.g().c().getUserId() + str + "otherLanguage"));
        if (!(context instanceof Activity)) {
            intent.addFlags(335544320);
        }
        context.startActivity(intent);
    }

    public void onSelectGift(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List<GiftFragment.r> list, int i9, boolean z10, int i10, int i11, SendGiftCallBack sendGiftCallBack) {
        int i12;
        ChatStatusBean chatStatusBean = this.mChatStatusBean;
        if (chatStatusBean != null) {
            if (chatStatusBean.getIsChat() == 0 || this.mChatStatusBean.getIsChat() == 2 || this.mChatStatusBean.getIsChat() == 4 || this.mChatStatusBean.getIsChat() == 5) {
                SendGiftRequestModel sendGiftRequestModel = new SendGiftRequestModel(String.valueOf(resourceListItemBean.getId()), resourceListItemBean.isLuckyGift());
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.mChatUserId);
                sendGiftRequestModel.setSendType(i10);
                sendGiftRequestModel.setToUserIds(arrayList);
                sendGiftRequestModel.setBusinessId(this.mChatUserId);
                if (z10) {
                    sendGiftRequestModel.setUseDiamonds("1");
                } else {
                    sendGiftRequestModel.setUseDiamonds("0");
                }
                sendGiftRequestModel.setSinglePrice(resourceListItemBean.getPrice());
                sendGiftRequestModel.setSendNumber(i9);
                if (i11 > 0) {
                    sendGiftRequestModel.setBreakType(i11);
                }
                try {
                    i12 = Integer.parseInt(resourceListItemBean.getPrice()) * i9;
                } catch (Exception unused) {
                    i12 = 0;
                }
                GiftSender.checkSendGiftType(this, resourceListItemBean.getItemType(), sendGiftRequestModel, new l(sendGiftCallBack, resourceListItemBean, i9, resourceCategoryItem), new m(resourceListItemBean, i9, resourceCategoryItem, sendGiftRequestModel), true, i12, z10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendImageFile(boolean z10, String str) {
        File file = new File(str);
        if (file.exists()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            if (file.length() == 0 && options.outWidth == 0) {
                Toast.makeText(this, getString(R.string.chat_file_not_exist), 0).show();
                return;
            } else if (file.length() > MediaFileFinder.IMAGE_SIZE) {
                Toast.makeText(this, getString(R.string.chat_file_too_large), 0).show();
                return;
            } else {
                checkMessageBeforeSend(new ImageMessage(str, z10));
                return;
            }
        }
        Toast.makeText(this, getString(R.string.chat_file_not_exist), 0).show();
    }
}
