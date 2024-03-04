package com.guochao.faceshow.aaspring.modulars.date.fragment;

import android.app.Dialog;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.OnClick;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.dialog.FaceCastDialog;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.beans.DatingNoticeFriend;
import com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.UserGenderAgeHolder;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.SendMessageHandle;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMSendCallback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001#B\u0005¢\u0006\u0002\u0010\u0004J$\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\b\u0010\u0014\u001a\u00020\u000fH\u0016J\u0012\u0010\u0015\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0016J\u0012\u0010\u0018\u001a\u00020\f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0017J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0018\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000fH\u0016J$\u0010!\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\"\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006$"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;", "Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "()V", "loading", "", "getLoading", "()Z", "setLoading", "(Z)V", "convertItem", "", "holder", "position", "", BaseConfig.ITEM, "dismiss", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "getLayoutId", "initView", "loadData", "pageNo", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onCreateDialog", "Landroid/app/Dialog;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onItemClick", "tellEverybody", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DateNoticeFriendFragment extends BaseRecyclerViewDialogFragment<DatingNoticeFriend, BaseViewHolder> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Map<String, String> tips;
    private boolean loading;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$Companion;", "", "()V", "tips", "", "", "getTips", "()Ljava/util/Map;", "getTip", "key", "getTransformedOtherLanguage", "otherLanguage", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getTip(@NotNull String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            String lowerCase = key.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
            String transformedOtherLanguage = getTransformedOtherLanguage(lowerCase);
            if (TextUtils.isEmpty(transformedOtherLanguage)) {
                String str = getTips().get("en");
                Intrinsics.checkNotNull(str);
                return str;
            }
            String str2 = getTips().get(transformedOtherLanguage);
            if (TextUtils.isEmpty(str2)) {
                String str3 = getTips().get("en");
                Intrinsics.checkNotNull(str3);
                return str3;
            }
            Intrinsics.checkNotNull(str2);
            return str2;
        }

        @NotNull
        public final Map<String, String> getTips() {
            return DateNoticeFriendFragment.tips;
        }

        @NotNull
        public final String getTransformedOtherLanguage(@NotNull String otherLanguage) {
            boolean equals;
            boolean equals2;
            boolean equals3;
            boolean equals4;
            boolean equals5;
            boolean equals6;
            boolean equals7;
            Intrinsics.checkNotNullParameter(otherLanguage, "otherLanguage");
            if (TextUtils.isEmpty(otherLanguage)) {
                return "en";
            }
            equals = StringsKt__StringsJVMKt.equals(Language.INDONESIA, otherLanguage, true);
            if (equals) {
                return "id";
            }
            equals2 = StringsKt__StringsJVMKt.equals(Language.SIMPLE_CHINESE, otherLanguage, true);
            if (!equals2) {
                equals3 = StringsKt__StringsJVMKt.equals("zh-rcn", otherLanguage, true);
                if (!equals3) {
                    equals4 = StringsKt__StringsJVMKt.equals("zh-hans", otherLanguage, true);
                    if (equals4) {
                        return Language.SIMPLE_CHINESE;
                    }
                    equals5 = StringsKt__StringsJVMKt.equals("zh-hant", otherLanguage, true);
                    if (equals5) {
                        return "zhr";
                    }
                    equals6 = StringsKt__StringsJVMKt.equals("zh-rhk", otherLanguage, true);
                    if (!equals6) {
                        equals7 = StringsKt__StringsJVMKt.equals("zh-rtw", otherLanguage, true);
                        if (!equals7) {
                            return otherLanguage;
                        }
                    }
                    return "zhr";
                }
            }
            return Language.SIMPLE_CHINESE;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        tips = hashMap;
        hashMap.put("en", "hi~, come video chat with me");
        hashMap.put(Language.ARABIC, "مرحبًا ~ ، تعال إلى دردشة الفيديو معي");
        hashMap.put(Language.GERMANY, "Hallo ~, komm Video-Chat mit mir");
        hashMap.put(Language.SPANISH, "hola ~, ven a chatear por video conmigo");
        hashMap.put(Language.FRENCH, "salut ~, viens chatter en vidéo avec moi");
        hashMap.put(Language.HINDI, "हाय ~, आओ मेरे साथ वीडियो चैट करें");
        hashMap.put("id", "hai ~, ayo ngobrol video dengan saya");
        hashMap.put("it", "ciao ~, vieni in chat video con me");
        hashMap.put(Language.JAPANESE, "こんにちは〜、私とビデオチャットに来てください");
        hashMap.put(Language.KOREAN, "안녕하세요 ~ 저랑 영상 채팅");
        hashMap.put("pt", "oi ~, venha conversar por vídeo comigo");
        hashMap.put(Language.RUSSIAN, "привет ~, пойдем со мной в видеочат");
        hashMap.put(Language.THAILAND, "สวัสดี ~ มาวิดีโอแชทกับฉัน");
        hashMap.put(Language.VIETNAM, "chào ~, đến trò chuyện video với tôi");
        hashMap.put(Language.SIMPLE_CHINESE, "hi～，快来跟我视频聊天吧");
        hashMap.put("zhr", "hi～，快來跟我視頻聊天吧");
        hashMap.put(Language.TURKISH, "merhaba ~, benimle görüntülü sohbet gel");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convertItem$lambda-5$lambda-4$lambda-3$lambda-2  reason: not valid java name */
    public static final void m361convertItem$lambda5$lambda4$lambda3$lambda2(DatingNoticeFriend datingNoticeFriend, DateNoticeFriendFragment this$0, int i9, View view) {
        RecyclerView.Adapter adapter;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        datingNoticeFriend.setSelected(!datingNoticeFriend.isSelected());
        RecyclerView recyclerView = this$0.getRecyclerView();
        if (recyclerView == null || (adapter = recyclerView.getAdapter()) == null) {
            return;
        }
        adapter.notifyItemChanged(i9);
    }

    @OnClick
    public final void dismiss(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        dismissAllowingStateLoss();
        post("tokens/appoint/inviteFriend").y("friendInfo", new ArrayList()).P(null).I(3).L();
        getCurrentUser().setIsInvited(1);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_date_notice_friend;
    }

    public final boolean getLoading() {
        return this.loading;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        super.initView(view);
        SmartRefreshLayout refreshableLayout = getRefreshableLayout();
        if (refreshableLayout != null) {
            refreshableLayout.f(false);
        }
        RecyclerView recyclerView = getRecyclerView();
        if (recyclerView != null) {
            recyclerView.setItemAnimator(null);
        }
        final int dp2px = DensityUtil.dp2px(0.75f);
        final Paint paint = new Paint();
        paint.setColor(Color.parseColor("#f3f3f3"));
        final int dp2px2 = DensityUtil.dp2px(13.5f);
        RecyclerView recyclerView2 = getRecyclerView();
        if (recyclerView2 != null) {
            recyclerView2.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.DateNoticeFriendFragment$initView$1
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(@NotNull Rect outRect, @NotNull View view2, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                    Intrinsics.checkNotNullParameter(outRect, "outRect");
                    Intrinsics.checkNotNullParameter(view2, "view");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    Intrinsics.checkNotNullParameter(state, "state");
                    super.getItemOffsets(outRect, view2, parent, state);
                    outRect.set(0, dp2px, 0, 0);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void onDraw(@NotNull Canvas c10, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                    int top;
                    Intrinsics.checkNotNullParameter(c10, "c");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    Intrinsics.checkNotNullParameter(state, "state");
                    super.onDraw(c10, parent, state);
                    int childCount = parent.getChildCount();
                    int i9 = childCount - 1;
                    int i10 = 0;
                    while (i10 < i9) {
                        View childAt = parent.getChildAt(i10);
                        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
                        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) layoutParams;
                        c10.drawRect(i10 == 0 ? 0.0f : dp2px2, childAt.getTop(), childAt.getRight(), dp2px + top, paint);
                        if (i10 == childCount - 2) {
                            c10.drawRect(dp2px2, childAt.getBottom(), childAt.getRight(), childAt.getBottom() + dp2px, paint);
                        }
                        i10++;
                    }
                }
            });
        }
        hideFooterView();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.c
    public void loadData(int i9) {
        get("tokens/appoint/friendList").D(Contants.USER_ID, getCurrentUser().userId).B("sex", getCurrentUser().getGender()).M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<? extends DatingNoticeFriend>>() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.DateNoticeFriendFragment$loadData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
            public void onCompleted() {
                super.onCompleted();
                DateNoticeFriendFragment.this.notifyDataLoaded(false);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<? extends DatingNoticeFriend>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public /* bridge */ /* synthetic */ void onResponse(List<? extends DatingNoticeFriend> list, FaceCastBaseResponse<List<? extends DatingNoticeFriend>> faceCastBaseResponse) {
                onResponse2(list, (FaceCastBaseResponse<List<DatingNoticeFriend>>) faceCastBaseResponse);
            }

            /* renamed from: onResponse  reason: avoid collision after fix types in other method */
            public void onResponse2(@Nullable List<? extends DatingNoticeFriend> list, @NotNull FaceCastBaseResponse<List<DatingNoticeFriend>> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                DateNoticeFriendFragment.this.setDatas(list);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @Deprecated(message = "Deprecated in Java")
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(false);
            dialog.setCanceledOnTouchOutside(false);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        setParamsHeight(-1);
        FaceCastDialog createCenterDialog = createCenterDialog();
        Intrinsics.checkNotNullExpressionValue(createCenterDialog, "createCenterDialog()");
        return createCenterDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment
    public void onItemClick(@Nullable BaseViewHolder baseViewHolder, int i9, @Nullable DatingNoticeFriend datingNoticeFriend) {
    }

    public final void setLoading(boolean z10) {
        this.loading = z10;
    }

    @OnClick
    public final void tellEverybody(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.loading) {
            return;
        }
        this.loading = true;
        ArrayList arrayList = new ArrayList();
        V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback = new V2TIMSendCallback<V2TIMMessage>() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.DateNoticeFriendFragment$tellEverybody$callback$1
            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, @Nullable String str) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMSendCallback
            public void onProgress(int i9) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onSuccess(@Nullable V2TIMMessage v2TIMMessage) {
            }
        };
        List<DatingNoticeFriend> list = getList();
        Intrinsics.checkNotNullExpressionValue(list, "list");
        for (DatingNoticeFriend datingNoticeFriend : list) {
            if (datingNoticeFriend.isSelected()) {
                DatingNoticeFriend datingNoticeFriend2 = new DatingNoticeFriend();
                datingNoticeFriend2.setUserId(getCurrentUser().userId);
                datingNoticeFriend2.setAppLanguage(datingNoticeFriend.getAppLanguage());
                datingNoticeFriend2.setAccountId(datingNoticeFriend.getUserId());
                arrayList.add(datingNoticeFriend2);
                Companion companion = Companion;
                String appLanguage = datingNoticeFriend.getAppLanguage();
                Intrinsics.checkNotNullExpressionValue(appLanguage, "it.appLanguage");
                TextMessage from = TextMessage.from(companion.getTip(appLanguage));
                Intrinsics.checkNotNullExpressionValue(from, "from(string)");
                ChatStatusBean chatStatusBean = new ChatStatusBean();
                chatStatusBean.setChat_switch(1);
                SendMessageHandle.sendC2CMessage(datingNoticeFriend.getAccount(), from.message, o9.b.d().a(chatStatusBean, datingNoticeFriend.getAccount(), from), v2TIMSendCallback);
            }
        }
        getCurrentUser().setIsInvited(1);
        post("tokens/appoint/inviteFriend").y("friendInfo", arrayList).I(3).M(new com.guochao.faceshow.aaspring.base.http.callback.c<Object>() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.DateNoticeFriendFragment$tellEverybody$2
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
            public void onCompleted() {
                super.onCompleted();
                DateNoticeFriendFragment.this.dismissAllowingStateLoss();
                DateNoticeFriendFragment.this.setLoading(false);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<Object> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable Object obj, @NotNull FaceCastBaseResponse<Object> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.a
    public void convertItem(@Nullable BaseViewHolder baseViewHolder, final int i9, @Nullable final DatingNoticeFriend datingNoticeFriend) {
        VipIndicatorView vipIndicatorView;
        if (baseViewHolder != null) {
            HeadPortraitView headPortraitView = (HeadPortraitView) baseViewHolder.getViewKt(R.id.head);
            if (headPortraitView != null) {
                headPortraitView.d(datingNoticeFriend);
            }
            TextView textView = (TextView) baseViewHolder.getViewKt(R.id.nickname);
            if (textView != null) {
                textView.setText(datingNoticeFriend != null ? datingNoticeFriend.getNickName() : null);
            }
            new UserGenderAgeHolder(baseViewHolder.getViewKt(R.id.user_gender_age)).a(String.valueOf(datingNoticeFriend != null ? Integer.valueOf(datingNoticeFriend.getAge()) : null), (datingNoticeFriend != null ? Integer.valueOf(datingNoticeFriend.getSex()) : null) == null ? 0 : datingNoticeFriend.getSex());
            if (datingNoticeFriend != null) {
                b8.g vipInfo = datingNoticeFriend.getVipInfo();
                if (vipInfo != null && (vipIndicatorView = (VipIndicatorView) baseViewHolder.getViewKt(R.id.vip_indicator)) != null) {
                    vipIndicatorView.setVipLevel(vipInfo.getVipLevel());
                }
                View viewKt = baseViewHolder.getViewKt(R.id.check);
                if (viewKt != null) {
                    viewKt.setSelected(datingNoticeFriend.isSelected());
                    viewKt.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.a
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            DateNoticeFriendFragment.m361convertItem$lambda5$lambda4$lambda3$lambda2(DatingNoticeFriend.this, this, i9, view);
                        }
                    });
                }
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.layout_open_date_notice, parent, false));
    }
}
