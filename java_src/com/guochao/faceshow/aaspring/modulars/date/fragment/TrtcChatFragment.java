package com.guochao.faceshow.aaspring.modulars.date.fragment;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AppResource;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser;
import com.guochao.faceshow.aaspring.modulars.chat.models.GiftMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.TrtcTextMessage;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.TrtcTextMessageHolder;
import com.guochao.faceshow.aaspring.modulars.gift.GiftSender;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftRequestModel;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftResponseModel;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveInputDialogFragment;
import com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.AudioCallFragment;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver;
import com.guochao.faceshow.aaspring.utils.SendMessageHandle;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.facetoface.data.GiftData;
import com.guochao.faceshow.gift.SendGiftCallBack;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 h2\u00020\u00012\u00020\u00022\u00020\u0003:\u0004hijkB\u0007¢\u0006\u0004\bf\u0010gJ\"\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\u0012\u0010\u000e\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\nH\u0014J\b\u0010\u0013\u001a\u00020\u0006H\u0016J\u0012\u0010\u0016\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u000e\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0014H\u0007J\u0010\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0014H\u0007J\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0016JF\u0010'\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u0010/\u001a\u00020\u00148\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u00105\u001a\u00020\u00148\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b5\u00100\u001a\u0004\b6\u00102\"\u0004\b7\u00104R\"\u00108\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010E\u001a\u00020\u00148\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bE\u00100\u001a\u0004\bF\u00102\"\u0004\bG\u00104R\u001a\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00170 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR$\u0010K\u001a\u0004\u0018\u00010J8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR$\u0010R\u001a\u0004\u0018\u00010Q8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bR\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR$\u0010Y\u001a\u0004\u0018\u00010X8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R$\u0010`\u001a\u0004\u0018\u00010_8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010e¨\u0006l"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;", "Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;", "Lu8/b;", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "itemBean", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;", "categoryItem", "", "sendGiftResponse", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/content/Context;", "context", "onAttach", "loadData", "getLayoutId", "Landroid/view/View;", NotifyType.VIBRATE, "initView", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;", "message", "addMessage", ViewHierarchyConstants.VIEW_KEY, "input", "gift", "height", AdUnitActivity.EXTRA_ORIENTATION, "onKeyboardHeightChanged", "", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;", "users", "", "isToken", "Lcom/guochao/faceshow/gift/SendGiftCallBack;", "sendGiftCallBack", "onSelectGift", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "chatContentView", "Landroid/view/View;", "getChatContentView", "()Landroid/view/View;", "setChatContentView", "(Landroid/view/View;)V", "beautyIcon", "getBeautyIcon", "setBeautyIcon", "layoutHeight", "I", "getLayoutHeight", "()I", "setLayoutHeight", "(I)V", "Lcom/opensource/svgaplayer/SVGAImageView;", "svgaImageView", "Lcom/opensource/svgaplayer/SVGAImageView;", "getSvgaImageView", "()Lcom/opensource/svgaplayer/SVGAImageView;", "setSvgaImageView", "(Lcom/opensource/svgaplayer/SVGAImageView;)V", "bottomLayout", "getBottomLayout", "setBottomLayout", "messageList", "Ljava/util/List;", "", Contants.USER_ID, "Ljava/lang/String;", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;", "trtcUserProvider", "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;", "getTrtcUserProvider", "()Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;", "setTrtcUserProvider", "(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;)V", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;", "giftFragment", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;", "getGiftFragment", "()Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;", "setGiftFragment", "(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V", "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;", "onBeautyClickListener", "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;", "getOnBeautyClickListener", "()Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;", "setOnBeautyClickListener", "(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;)V", "<init>", "()V", "Companion", "MyAdapter", "OnBeautyClickListener", "TrtcUserProvider", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class TrtcChatFragment extends BaseFragment implements KeyboardHeightObserver, u8.b {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @BindView
    public View beautyIcon;
    @BindView
    public View bottomLayout;
    @BindView
    public View chatContentView;
    @Nullable
    private GiftFragment giftFragment;
    private int layoutHeight;
    @NotNull
    private final List<TrtcTextMessage> messageList = new ArrayList();
    @Nullable
    private OnBeautyClickListener onBeautyClickListener;
    @BindView
    public RecyclerView recyclerView;
    @BindView
    public SVGAImageView svgaImageView;
    @Nullable
    private TrtcUserProvider trtcUserProvider;
    @Nullable
    private String userId;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$Companion;", "", "()V", "instance", "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;", Contants.USER_ID, "", "showBeauty", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TrtcChatFragment instance(@NotNull String userId, boolean z10) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            TrtcChatFragment trtcChatFragment = new TrtcChatFragment();
            Bundle bundle = new Bundle();
            bundle.putString(Contants.USER_ID, userId);
            bundle.putBoolean("showBeauty", z10);
            trtcChatFragment.setArguments(bundle);
            return trtcChatFragment;
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000eH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$MyAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;", "context", "Landroid/content/Context;", "messageList", "", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;", "(Landroid/content/Context;Ljava/util/List;)V", "getContext", "()Landroid/content/Context;", "getMessageList", "()Ljava/util/List;", "getItemCount", "", "getItemViewType", "position", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class MyAdapter extends RecyclerView.Adapter<TrtcTextMessageHolder> {
        @NotNull
        private final Context context;
        @NotNull
        private final List<TrtcTextMessage> messageList;

        /* JADX WARN: Multi-variable type inference failed */
        public MyAdapter(@NotNull Context context, @NotNull List<? extends TrtcTextMessage> messageList) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(messageList, "messageList");
            this.context = context;
            this.messageList = messageList;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.messageList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i9) {
            return this.messageList.get(i9).isSelf() ? 1 : 0;
        }

        @NotNull
        public final List<TrtcTextMessage> getMessageList() {
            return this.messageList;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull TrtcTextMessageHolder holder, int i9) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            holder.setMessageData(this.messageList.get(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public TrtcTextMessageHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new TrtcTextMessageHolder(LayoutInflater.from(this.context).inflate(R.layout.list_item_trtc_text_message, parent, false));
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;", "", "onBeautyClick", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnBeautyClickListener {
        void onBeautyClick(@NotNull View view);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;", "", "getCurrentTrtcUser", "Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;", "playGift", "", "giftMessage", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface TrtcUserProvider {
        @NotNull
        TrtcFaceCastUser getCurrentTrtcUser();

        void playGift(@NotNull GiftMessage giftMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m365initView$lambda0(TrtcChatFragment this$0, View v22) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OnBeautyClickListener onBeautyClickListener = this$0.onBeautyClickListener;
        if (onBeautyClickListener != null) {
            Intrinsics.checkNotNullExpressionValue(v22, "v2");
            onBeautyClickListener.onBeautyClick(v22);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m366initView$lambda2(TrtcChatFragment this$0, View view) {
        int i9;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isDetached() || !this$0.isAdded() || this$0.getActivity() == null) {
            return;
        }
        FragmentActivity activity = this$0.getActivity();
        View findViewById = activity != null ? activity.findViewById(R.id.trtc_mic) : null;
        int[] iArr = new int[2];
        if (findViewById != null) {
            findViewById.getLocationOnScreen(iArr);
        }
        int[] iArr2 = new int[2];
        view.findViewById(R.id.bottom_layout).getLocationOnScreen(iArr2);
        int i10 = iArr2[1] - iArr[1];
        Integer valueOf = findViewById != null ? Integer.valueOf(findViewById.getHeight()) : null;
        Intrinsics.checkNotNull(valueOf);
        int intValue = i10 + valueOf.intValue();
        int i11 = this$0.getResources().getDisplayMetrics().heightPixels;
        View view2 = this$0.getView();
        ViewGroup.LayoutParams layoutParams = view2 != null ? view2.getLayoutParams() : null;
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (this$0.getParentFragment() instanceof AudioCallFragment) {
            i9 = intValue / 3;
        } else {
            i9 = intValue / 3;
        }
        this$0.layoutHeight = i9;
        this$0.onKeyboardHeightChanged(0, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: input$lambda-8  reason: not valid java name */
    public static final void m367input$lambda8(TrtcChatFragment this$0, String str, boolean z10) {
        TrtcFaceCastUser currentTrtcUser;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.userId != null) {
            TrtcTextMessage msg = TrtcTextMessage.from(str);
            TrtcUserProvider trtcUserProvider = this$0.trtcUserProvider;
            if (trtcUserProvider != null) {
                msg.setOtherLanguage((trtcUserProvider == null || (currentTrtcUser = trtcUserProvider.getCurrentTrtcUser()) == null) ? null : currentTrtcUser.getPreferentialLang());
            }
            Intrinsics.checkNotNullExpressionValue(msg, "msg");
            this$0.addMessage(msg);
            SendMessageHandle.sendOnlineMessage(this$0.userId, null, msg.message, 0, new V2TIMCallback() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment$input$1$1$2
                @Override // com.tencent.imsdk.v2.V2TIMCallback
                public void onError(int i9, @Nullable String str2) {
                }

                @Override // com.tencent.imsdk.v2.V2TIMCallback
                public void onSuccess() {
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendGiftResponse(ResourceListItemBean resourceListItemBean, int i9, ResourceCategoryItem resourceCategoryItem) {
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
        GiftMessage giftMessage = GiftMessage.from(giftItemData, "", this.userId, 1);
        TrtcUserProvider trtcUserProvider = this.trtcUserProvider;
        if (trtcUserProvider != null) {
            Intrinsics.checkNotNullExpressionValue(giftMessage, "giftMessage");
            trtcUserProvider.playGift(giftMessage);
        }
        SendMessageHandle.sendOnlineMessage(this.userId, null, giftMessage.message, 0, null);
    }

    public final void addMessage(@NotNull TrtcTextMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.messageList.add(message);
        RecyclerView.Adapter adapter = getRecyclerView().getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
            getRecyclerView().scrollToPosition(adapter.getItemCount() - 1);
        }
    }

    @NotNull
    public final View getBeautyIcon() {
        View view = this.beautyIcon;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("beautyIcon");
        return null;
    }

    @NotNull
    public final View getBottomLayout() {
        View view = this.bottomLayout;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("bottomLayout");
        return null;
    }

    @NotNull
    public final View getChatContentView() {
        View view = this.chatContentView;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatContentView");
        return null;
    }

    @Nullable
    public final GiftFragment getGiftFragment() {
        return this.giftFragment;
    }

    public final int getLayoutHeight() {
        return this.layoutHeight;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_trtc_chat;
    }

    @Nullable
    public final OnBeautyClickListener getOnBeautyClickListener() {
        return this.onBeautyClickListener;
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            return recyclerView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        return null;
    }

    @NotNull
    public final SVGAImageView getSvgaImageView() {
        SVGAImageView sVGAImageView = this.svgaImageView;
        if (sVGAImageView != null) {
            return sVGAImageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("svgaImageView");
        return null;
    }

    @Nullable
    public final TrtcUserProvider getTrtcUserProvider() {
        return this.trtcUserProvider;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    @OnClick
    public final void gift(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        GiftFragment giftFragment = GiftFragment.getInstance((int) R.style.AppTheme, 13, (String) null, true);
        Intrinsics.checkNotNullExpressionValue(giftFragment, "getInstance(\n           …           true\n        )");
        giftFragment.show(getChildFragmentManager(), "gift");
        this.giftFragment = giftFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable final View view) {
        ImageView imageView;
        ImageView imageView2;
        Bundle arguments = getArguments();
        Boolean valueOf = arguments != null ? Boolean.valueOf(arguments.getBoolean("showBeauty", false)) : null;
        if (valueOf != null && valueOf.booleanValue()) {
            getBeautyIcon().setVisibility(0);
            getBeautyIcon().setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TrtcChatFragment.m365initView$lambda0(TrtcChatFragment.this, view2);
                }
            });
            if (view != null && (imageView2 = (ImageView) view.findViewById(R.id.input)) != null) {
                imageView2.setImageResource(R.mipmap.trtc_message);
            }
        } else {
            getBeautyIcon().setVisibility(8);
            if (view != null && (imageView = (ImageView) view.findViewById(R.id.input)) != null) {
                imageView.setImageResource(R.mipmap.trtc_message_audio);
            }
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            getRecyclerView().setAdapter(new MyAdapter(activity, this.messageList));
            getRecyclerView().setLayoutManager(new LinearLayoutManager(activity, 1, false));
        }
        final int dp2px = DensityUtil.dp2px(15.0f);
        getRecyclerView().addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment$initView$3
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(@NotNull Rect outRect, @NotNull View view2, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view2, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                outRect.set(0, dp2px, 0, 0);
            }
        });
        InputStream openRawResource = getResources().openRawResource(R.raw.gift_new);
        Intrinsics.checkNotNullExpressionValue(openRawResource, "resources.openRawResource(R.raw.gift_new)");
        SvgaImageViewUtils.getParser().decodeFromInputStream(openRawResource, "gift_btn", new SVGAParser.ParseCompletion() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment$initView$4
            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onComplete(@NotNull SVGAVideoEntity videoItem) {
                Intrinsics.checkNotNullParameter(videoItem, "videoItem");
                TrtcChatFragment.this.getSvgaImageView().setVideoItem(videoItem);
                TrtcChatFragment.this.getSvgaImageView().startAnimation();
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onError() {
            }
        }, true);
        if (view != null) {
            view.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.g
                @Override // java.lang.Runnable
                public final void run() {
                    TrtcChatFragment.m366initView$lambda2(TrtcChatFragment.this, view);
                }
            });
        }
        Intrinsics.checkNotNull(view);
        ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment$initView$6
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            @NotNull
            public WindowInsetsCompat onApplyWindowInsets(@NotNull View v10, @NotNull WindowInsetsCompat insets) {
                Intrinsics.checkNotNullParameter(v10, "v");
                Intrinsics.checkNotNullParameter(insets, "insets");
                TrtcChatFragment.this.onKeyboardHeightChanged(insets.getSystemWindowInsetBottom(), 0);
                return insets;
            }
        });
    }

    @OnClick
    public final void input(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        LiveInputDialogFragment liveInputDialogFragment = new LiveInputDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("mute", false);
        bundle.putBoolean("hideDanmu", true);
        liveInputDialogFragment.setArguments(bundle);
        liveInputDialogFragment.setOnSendClickListener(new LiveInputDialogFragment.d() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.f
            @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveInputDialogFragment.d
            public final void a(String str, boolean z10) {
                TrtcChatFragment.m367input$lambda8(TrtcChatFragment.this, str, z10);
            }
        });
        liveInputDialogFragment.show(getChildFragmentManager(), "input");
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        if (getParentFragment() instanceof TrtcUserProvider) {
            Fragment parentFragment = getParentFragment();
            Intrinsics.checkNotNull(parentFragment, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment.TrtcUserProvider");
            this.trtcUserProvider = (TrtcUserProvider) parentFragment;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        this.userId = arguments != null ? arguments.getString(Contants.USER_ID) : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f0  */
    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onKeyboardHeightChanged(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment.onKeyboardHeightChanged(int, int):void");
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public /* synthetic */ void onKeyboardHeightChanged(int i9, int i10, int i11) {
        com.guochao.faceshow.aaspring.utils.e.a(this, i9, i10, i11);
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void onSelectGift(int i9, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, String str, String str2) {
        u8.a.a(this, i9, resourceCategoryItem, resourceListItemBean, str, str2);
    }

    @Override // u8.b
    public void onSelectGift(@Nullable final ResourceCategoryItem resourceCategoryItem, @Nullable final ResourceListItemBean resourceListItemBean, @Nullable List<GiftFragment.r> list, final int i9, boolean z10, @Nullable final SendGiftCallBack sendGiftCallBack) {
        int i10;
        if (getActivity() == null) {
            return;
        }
        Intrinsics.checkNotNull(resourceListItemBean);
        final SendGiftRequestModel sendGiftRequestModel = new SendGiftRequestModel(String.valueOf(resourceListItemBean.getId()), resourceListItemBean.isLuckyGift());
        ArrayList arrayList = new ArrayList();
        String str = this.userId;
        Intrinsics.checkNotNull(str);
        arrayList.add(str);
        sendGiftRequestModel.setSendType(21);
        sendGiftRequestModel.setToUserIds(arrayList);
        String str2 = this.userId;
        Intrinsics.checkNotNull(str2);
        sendGiftRequestModel.setBusinessId(str2);
        if (z10) {
            sendGiftRequestModel.setUseDiamonds("1");
        } else {
            sendGiftRequestModel.setUseDiamonds("0");
        }
        String price = resourceListItemBean.getPrice();
        Intrinsics.checkNotNullExpressionValue(price, "itemBean.price");
        sendGiftRequestModel.setSinglePrice(price);
        sendGiftRequestModel.setSendNumber(i9);
        try {
            String price2 = resourceListItemBean.getPrice();
            Intrinsics.checkNotNullExpressionValue(price2, "itemBean.price");
            i10 = Integer.parseInt(price2) * i9;
        } catch (Exception unused) {
            i10 = 0;
        }
        GiftSender.checkSendGiftType(this, resourceListItemBean.getItemType(), sendGiftRequestModel, new com.guochao.faceshow.aaspring.base.http.callback.c<AppResource>() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment$onSelectGift$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<AppResource> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                FragmentActivity activity = TrtcChatFragment.this.getActivity();
                if (activity != null) {
                    GiftSender.sendGiftFailure(activity, exp.a());
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable AppResource appResource, @NotNull FaceCastBaseResponse<AppResource> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (TrtcChatFragment.this.getActivity() == null) {
                    return;
                }
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
                TrtcChatFragment.this.sendGiftResponse(resourceListItemBean, i9, resourceCategoryItem);
            }
        }, new com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel>() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment$onSelectGift$2
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<SendGiftResponseModel> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                FragmentActivity activity = TrtcChatFragment.this.getActivity();
                if (activity != null) {
                    GiftSender.sendGiftFailure(activity, exp.a());
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable SendGiftResponseModel sendGiftResponseModel, @NotNull FaceCastBaseResponse<SendGiftResponseModel> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (TrtcChatFragment.this.getActivity() == null) {
                    return;
                }
                TrtcChatFragment.this.sendGiftResponse(resourceListItemBean, i9, resourceCategoryItem);
                GiftFragment.trackEvent(sendGiftRequestModel, resourceListItemBean);
            }
        }, true, i10, z10);
    }

    @Override // u8.b
    public /* bridge */ /* synthetic */ void onSelectGift(GiftFragment giftFragment, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List list, int i9, boolean z10, int i10, SendGiftCallBack sendGiftCallBack) {
        u8.a.c(this, giftFragment, resourceCategoryItem, resourceListItemBean, list, i9, z10, i10, sendGiftCallBack);
    }

    public final void setBeautyIcon(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.beautyIcon = view;
    }

    public final void setBottomLayout(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.bottomLayout = view;
    }

    public final void setChatContentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.chatContentView = view;
    }

    public final void setGiftFragment(@Nullable GiftFragment giftFragment) {
        this.giftFragment = giftFragment;
    }

    public final void setLayoutHeight(int i9) {
        this.layoutHeight = i9;
    }

    public final void setOnBeautyClickListener(@Nullable OnBeautyClickListener onBeautyClickListener) {
        this.onBeautyClickListener = onBeautyClickListener;
    }

    public final void setRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<set-?>");
        this.recyclerView = recyclerView;
    }

    public final void setSvgaImageView(@NotNull SVGAImageView sVGAImageView) {
        Intrinsics.checkNotNullParameter(sVGAImageView, "<set-?>");
        this.svgaImageView = sVGAImageView;
    }

    public final void setTrtcUserProvider(@Nullable TrtcUserProvider trtcUserProvider) {
        this.trtcUserProvider = trtcUserProvider;
    }

    public final void setUserId(@Nullable String str) {
        this.userId = str;
    }
}
