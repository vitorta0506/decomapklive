package com.guochao.faceshow.aaspring.modulars.user.tag;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.user.tag.UserEditFriendshipActivity;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.EmotionalTag;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u00011B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010!\u001a\u00020\"H\u0016J\u0012\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\b\u0010'\u001a\u00020$H\u0014J\u0012\u0010(\u001a\u00020$2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0012\u0010+\u001a\u00020,2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0018\u0010-\u001a\u00020$2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/H\u0002R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0019\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u0011R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0011R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000f\"\u0004\b \u0010\u0011¨\u00062"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;", "()V", "firstDatas", "", "Lcom/guochao/faceshow/bean/EmotionalTag;", "getFirstDatas", "()Ljava/util/List;", "secondDatas", "getSecondDatas", "thirdDatas", "getThirdDatas", "tvForeignerCountry", "Landroid/widget/TextView;", "getTvForeignerCountry", "()Landroid/widget/TextView;", "setTvForeignerCountry", "(Landroid/widget/TextView;)V", "tvHotChat", "getTvHotChat", "setTvHotChat", "tvLocalCountry", "getTvLocalCountry", "setTvLocalCountry", "tvOldAge", "getTvOldAge", "setTvOldAge", "tvSmallAge", "getTvSmallAge", "setTvSmallAge", "tvSoulChat", "getTvSoulChat", "setTvSoulChat", "getLayoutId", "", "initView", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "loadData", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateDialog", "Landroid/app/Dialog;", "updateUserFriendShip", "tagIds", "", "tagNames", "UpdateFriendshipEvent", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserEditFriendshipActivity extends BaseDialogFragment {
    @NotNull
    private final List<EmotionalTag> firstDatas = new ArrayList();
    @NotNull
    private final List<EmotionalTag> secondDatas = new ArrayList();
    @NotNull
    private final List<EmotionalTag> thirdDatas = new ArrayList();
    @Nullable
    private TextView tvForeignerCountry;
    @Nullable
    private TextView tvHotChat;
    @Nullable
    private TextView tvLocalCountry;
    @Nullable
    private TextView tvOldAge;
    @Nullable
    private TextView tvSmallAge;
    @Nullable
    private TextView tvSoulChat;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditFriendshipActivity$UpdateFriendshipEvent;", "", "friendShip", "", "(Ljava/lang/String;)V", "getFriendShip", "()Ljava/lang/String;", "setFriendShip", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class UpdateFriendshipEvent {
        @Nullable
        private String friendShip;

        public UpdateFriendshipEvent() {
            this(null, 1, null);
        }

        public UpdateFriendshipEvent(@Nullable String str) {
            this.friendShip = str;
        }

        @Nullable
        public final String getFriendShip() {
            return this.friendShip;
        }

        public final void setFriendShip(@Nullable String str) {
            this.friendShip = str;
        }

        public /* synthetic */ UpdateFriendshipEvent(String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this((i9 & 1) != 0 ? null : str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m565initView$lambda0(UserEditFriendshipActivity this$0, View view) {
        TextView textView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        view.setSelected(!view.isSelected());
        if (!view.isSelected() || (textView = this$0.tvOldAge) == null) {
            return;
        }
        textView.setSelected(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m566initView$lambda1(UserEditFriendshipActivity this$0, View view) {
        TextView textView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        view.setSelected(!view.isSelected());
        if (!view.isSelected() || (textView = this$0.tvSmallAge) == null) {
            return;
        }
        textView.setSelected(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m567initView$lambda2(UserEditFriendshipActivity this$0, View view) {
        TextView textView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        view.setSelected(!view.isSelected());
        if (!view.isSelected() || (textView = this$0.tvForeignerCountry) == null) {
            return;
        }
        textView.setSelected(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m568initView$lambda3(UserEditFriendshipActivity this$0, View view) {
        TextView textView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        view.setSelected(!view.isSelected());
        if (!view.isSelected() || (textView = this$0.tvLocalCountry) == null) {
            return;
        }
        textView.setSelected(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4  reason: not valid java name */
    public static final void m569initView$lambda4(UserEditFriendshipActivity this$0, View view) {
        TextView textView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        view.setSelected(!view.isSelected());
        if (!view.isSelected() || (textView = this$0.tvHotChat) == null) {
            return;
        }
        textView.setSelected(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5  reason: not valid java name */
    public static final void m570initView$lambda5(UserEditFriendshipActivity this$0, View view) {
        TextView textView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        view.setSelected(!view.isSelected());
        if (!view.isSelected() || (textView = this$0.tvSoulChat) == null) {
            return;
        }
        textView.setSelected(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-6  reason: not valid java name */
    public static final void m571initView$lambda6(UserEditFriendshipActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-7  reason: not valid java name */
    public static final void m572initView$lambda7(UserEditFriendshipActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-8  reason: not valid java name */
    public static final void m573initView$lambda8(UserEditFriendshipActivity this$0, View view) {
        boolean endsWith$default;
        boolean endsWith$default2;
        boolean endsWith$default3;
        boolean endsWith$default4;
        boolean endsWith$default5;
        boolean endsWith$default6;
        boolean endsWith$default7;
        boolean endsWith$default8;
        boolean endsWith$default9;
        boolean endsWith$default10;
        boolean endsWith$default11;
        boolean endsWith$default12;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = this$0.tvSmallAge;
        if ((textView == null || textView.isSelected()) ? false : true) {
            TextView textView2 = this$0.tvOldAge;
            if ((textView2 == null || textView2.isSelected()) ? false : true) {
                this$0.showToast(R.string.friendship_choose_age);
                return;
            }
        }
        TextView textView3 = this$0.tvLocalCountry;
        if ((textView3 == null || textView3.isSelected()) ? false : true) {
            TextView textView4 = this$0.tvForeignerCountry;
            if ((textView4 == null || textView4.isSelected()) ? false : true) {
                this$0.showToast(R.string.friendship_choose_location);
                return;
            }
        }
        TextView textView5 = this$0.tvSoulChat;
        if ((textView5 == null || textView5.isSelected()) ? false : true) {
            TextView textView6 = this$0.tvHotChat;
            if ((textView6 == null || textView6.isSelected()) ? false : true) {
                this$0.showToast(R.string.friendship_choose_chat);
                return;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        TextView textView7 = this$0.tvSoulChat;
        if ((textView7 != null && textView7.isSelected()) && this$0.thirdDatas.size() > 0) {
            if (!TextUtils.isEmpty(sb2)) {
                String sb4 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb4, "tagIds.toString()");
                endsWith$default12 = StringsKt__StringsJVMKt.endsWith$default(sb4, ",", false, 2, null);
                if (!endsWith$default12) {
                    sb2.append(",");
                }
            }
            if (!TextUtils.isEmpty(sb3)) {
                String sb5 = sb3.toString();
                Intrinsics.checkNotNullExpressionValue(sb5, "tagNames.toString()");
                endsWith$default11 = StringsKt__StringsJVMKt.endsWith$default(sb5, ",", false, 2, null);
                if (!endsWith$default11) {
                    sb3.append(",");
                }
            }
            EmotionalTag emotionalTag = this$0.thirdDatas.get(0);
            sb2.append(emotionalTag != null ? Integer.valueOf(emotionalTag.tagId) : null);
            EmotionalTag emotionalTag2 = this$0.thirdDatas.get(0);
            sb3.append(emotionalTag2 != null ? emotionalTag2.tname : null);
        }
        TextView textView8 = this$0.tvHotChat;
        if ((textView8 != null && textView8.isSelected()) && this$0.thirdDatas.size() > 1) {
            if (!TextUtils.isEmpty(sb2)) {
                String sb6 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb6, "tagIds.toString()");
                endsWith$default10 = StringsKt__StringsJVMKt.endsWith$default(sb6, ",", false, 2, null);
                if (!endsWith$default10) {
                    sb2.append(",");
                }
            }
            if (!TextUtils.isEmpty(sb3)) {
                String sb7 = sb3.toString();
                Intrinsics.checkNotNullExpressionValue(sb7, "tagNames.toString()");
                endsWith$default9 = StringsKt__StringsJVMKt.endsWith$default(sb7, ",", false, 2, null);
                if (!endsWith$default9) {
                    sb3.append(",");
                }
            }
            EmotionalTag emotionalTag3 = this$0.thirdDatas.get(1);
            sb2.append(emotionalTag3 != null ? Integer.valueOf(emotionalTag3.tagId) : null);
            EmotionalTag emotionalTag4 = this$0.thirdDatas.get(1);
            sb3.append(emotionalTag4 != null ? emotionalTag4.tname : null);
        }
        TextView textView9 = this$0.tvLocalCountry;
        if ((textView9 != null && textView9.isSelected()) && this$0.secondDatas.size() > 0) {
            if (!TextUtils.isEmpty(sb2)) {
                String sb8 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb8, "tagIds.toString()");
                endsWith$default8 = StringsKt__StringsJVMKt.endsWith$default(sb8, ",", false, 2, null);
                if (!endsWith$default8) {
                    sb2.append(",");
                }
            }
            if (!TextUtils.isEmpty(sb3)) {
                String sb9 = sb3.toString();
                Intrinsics.checkNotNullExpressionValue(sb9, "tagNames.toString()");
                endsWith$default7 = StringsKt__StringsJVMKt.endsWith$default(sb9, ",", false, 2, null);
                if (!endsWith$default7) {
                    sb3.append(",");
                }
            }
            EmotionalTag emotionalTag5 = this$0.secondDatas.get(0);
            sb2.append(emotionalTag5 != null ? Integer.valueOf(emotionalTag5.tagId) : null);
            EmotionalTag emotionalTag6 = this$0.secondDatas.get(0);
            sb3.append(emotionalTag6 != null ? emotionalTag6.tname : null);
        }
        TextView textView10 = this$0.tvForeignerCountry;
        if ((textView10 != null && textView10.isSelected()) && this$0.secondDatas.size() > 1) {
            if (!TextUtils.isEmpty(sb2)) {
                String sb10 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb10, "tagIds.toString()");
                endsWith$default6 = StringsKt__StringsJVMKt.endsWith$default(sb10, ",", false, 2, null);
                if (!endsWith$default6) {
                    sb2.append(",");
                }
            }
            if (!TextUtils.isEmpty(sb3)) {
                String sb11 = sb3.toString();
                Intrinsics.checkNotNullExpressionValue(sb11, "tagNames.toString()");
                endsWith$default5 = StringsKt__StringsJVMKt.endsWith$default(sb11, ",", false, 2, null);
                if (!endsWith$default5) {
                    sb3.append(",");
                }
            }
            EmotionalTag emotionalTag7 = this$0.secondDatas.get(1);
            sb2.append(emotionalTag7 != null ? Integer.valueOf(emotionalTag7.tagId) : null);
            EmotionalTag emotionalTag8 = this$0.secondDatas.get(1);
            sb3.append(emotionalTag8 != null ? emotionalTag8.tname : null);
        }
        TextView textView11 = this$0.tvSmallAge;
        if ((textView11 != null && textView11.isSelected()) && this$0.firstDatas.size() > 0) {
            if (!TextUtils.isEmpty(sb2)) {
                String sb12 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb12, "tagIds.toString()");
                endsWith$default4 = StringsKt__StringsJVMKt.endsWith$default(sb12, ",", false, 2, null);
                if (!endsWith$default4) {
                    sb2.append(",");
                }
            }
            if (!TextUtils.isEmpty(sb3)) {
                String sb13 = sb3.toString();
                Intrinsics.checkNotNullExpressionValue(sb13, "tagNames.toString()");
                endsWith$default3 = StringsKt__StringsJVMKt.endsWith$default(sb13, ",", false, 2, null);
                if (!endsWith$default3) {
                    sb3.append(",");
                }
            }
            EmotionalTag emotionalTag9 = this$0.firstDatas.get(0);
            sb2.append(emotionalTag9 != null ? Integer.valueOf(emotionalTag9.tagId) : null);
            EmotionalTag emotionalTag10 = this$0.firstDatas.get(0);
            sb3.append(emotionalTag10 != null ? emotionalTag10.tname : null);
        }
        TextView textView12 = this$0.tvOldAge;
        if ((textView12 != null && textView12.isSelected()) && this$0.firstDatas.size() > 1) {
            if (!TextUtils.isEmpty(sb2)) {
                String sb14 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb14, "tagIds.toString()");
                endsWith$default2 = StringsKt__StringsJVMKt.endsWith$default(sb14, ",", false, 2, null);
                if (!endsWith$default2) {
                    sb2.append(",");
                }
            }
            if (!TextUtils.isEmpty(sb3)) {
                String sb15 = sb3.toString();
                Intrinsics.checkNotNullExpressionValue(sb15, "tagNames.toString()");
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(sb15, ",", false, 2, null);
                if (!endsWith$default) {
                    sb3.append(",");
                }
            }
            EmotionalTag emotionalTag11 = this$0.firstDatas.get(1);
            sb2.append(emotionalTag11 != null ? Integer.valueOf(emotionalTag11.tagId) : null);
            EmotionalTag emotionalTag12 = this$0.firstDatas.get(1);
            sb3.append(emotionalTag12 != null ? emotionalTag12.tname : null);
        }
        String sb16 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb16, "tagIds.toString()");
        String sb17 = sb3.toString();
        Intrinsics.checkNotNullExpressionValue(sb17, "tagNames.toString()");
        this$0.updateUserFriendShip(sb16, sb17);
        this$0.dismissAllowingStateLoss();
    }

    private final void updateUserFriendShip(String str, final String str2) {
        new PostRequest(Contants.updatefriendTag).D("tagIds", str).M(new com.guochao.faceshow.aaspring.base.http.callback.c<String>() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.UserEditFriendshipActivity$updateUserFriendShip$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<String> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str3, @NotNull FaceCastBaseResponse<String> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (str3 != null) {
                    String str4 = str2;
                    ToastUtils.showToast$default(BaseApplication.getInstance(), R.string.save_successful, 0, 4, null);
                    EventBus.getDefault().post(new UserEditFriendshipActivity.UpdateFriendshipEvent(str4));
                }
            }
        });
    }

    @NotNull
    public final List<EmotionalTag> getFirstDatas() {
        return this.firstDatas;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.activity_user_edit_friendship;
    }

    @NotNull
    public final List<EmotionalTag> getSecondDatas() {
        return this.secondDatas;
    }

    @NotNull
    public final List<EmotionalTag> getThirdDatas() {
        return this.thirdDatas;
    }

    @Nullable
    public final TextView getTvForeignerCountry() {
        return this.tvForeignerCountry;
    }

    @Nullable
    public final TextView getTvHotChat() {
        return this.tvHotChat;
    }

    @Nullable
    public final TextView getTvLocalCountry() {
        return this.tvLocalCountry;
    }

    @Nullable
    public final TextView getTvOldAge() {
        return this.tvOldAge;
    }

    @Nullable
    public final TextView getTvSmallAge() {
        return this.tvSmallAge;
    }

    @Nullable
    public final TextView getTvSoulChat() {
        return this.tvSoulChat;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        View findViewById;
        View findViewById2;
        View findViewById3;
        TextView textView = view != null ? (TextView) view.findViewById(R.id.tv_small_age) : null;
        this.tvSmallAge = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    UserEditFriendshipActivity.m565initView$lambda0(UserEditFriendshipActivity.this, view2);
                }
            });
        }
        TextView textView2 = view != null ? (TextView) view.findViewById(R.id.tv_old_age) : null;
        this.tvOldAge = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    UserEditFriendshipActivity.m566initView$lambda1(UserEditFriendshipActivity.this, view2);
                }
            });
        }
        TextView textView3 = view != null ? (TextView) view.findViewById(R.id.local_country) : null;
        this.tvLocalCountry = textView3;
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    UserEditFriendshipActivity.m567initView$lambda2(UserEditFriendshipActivity.this, view2);
                }
            });
        }
        TextView textView4 = view != null ? (TextView) view.findViewById(R.id.foreigner_country) : null;
        this.tvForeignerCountry = textView4;
        if (textView4 != null) {
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    UserEditFriendshipActivity.m568initView$lambda3(UserEditFriendshipActivity.this, view2);
                }
            });
        }
        TextView textView5 = view != null ? (TextView) view.findViewById(R.id.tv_soul_chat) : null;
        this.tvSoulChat = textView5;
        if (textView5 != null) {
            textView5.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    UserEditFriendshipActivity.m569initView$lambda4(UserEditFriendshipActivity.this, view2);
                }
            });
        }
        TextView textView6 = view != null ? (TextView) view.findViewById(R.id.tv_hot_chat) : null;
        this.tvHotChat = textView6;
        if (textView6 != null) {
            textView6.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    UserEditFriendshipActivity.m570initView$lambda5(UserEditFriendshipActivity.this, view2);
                }
            });
        }
        if (view != null && (findViewById3 = view.findViewById(R.id.bgLL)) != null) {
            findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    UserEditFriendshipActivity.m571initView$lambda6(UserEditFriendshipActivity.this, view2);
                }
            });
        }
        if (view != null && (findViewById2 = view.findViewById(R.id.close)) != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    UserEditFriendshipActivity.m572initView$lambda7(UserEditFriendshipActivity.this, view2);
                }
            });
        }
        TextView textView7 = view != null ? (TextView) view.findViewById(R.id.tv_title) : null;
        if (textView7 != null) {
            textView7.setText(getString(R.string.friendship_intention));
        }
        if (view == null || (findViewById = view.findViewById(R.id.save)) == null) {
            return;
        }
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UserEditFriendshipActivity.m573initView$lambda8(UserEditFriendshipActivity.this, view2);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        post("tokens/make/friend/findByUserId/V2").M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<? extends EmotionalTag>>() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.UserEditFriendshipActivity$loadData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<? extends EmotionalTag>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public /* bridge */ /* synthetic */ void onResponse(List<? extends EmotionalTag> list, FaceCastBaseResponse<List<? extends EmotionalTag>> faceCastBaseResponse) {
                onResponse2(list, (FaceCastBaseResponse<List<EmotionalTag>>) faceCastBaseResponse);
            }

            /* renamed from: onResponse  reason: avoid collision after fix types in other method */
            public void onResponse2(@Nullable List<? extends EmotionalTag> list, @NotNull FaceCastBaseResponse<List<EmotionalTag>> baseResponse) {
                String str;
                TextView tvSmallAge;
                String str2;
                TextView tvOldAge;
                String str3;
                TextView tvLocalCountry;
                String str4;
                TextView tvForeignerCountry;
                String str5;
                TextView tvSoulChat;
                String str6;
                TextView tvHotChat;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                boolean z10 = true;
                if (list != null) {
                    UserEditFriendshipActivity userEditFriendshipActivity = UserEditFriendshipActivity.this;
                    for (EmotionalTag emotionalTag : list) {
                        Integer valueOf = emotionalTag != null ? Integer.valueOf(emotionalTag.type) : null;
                        if (valueOf != null && valueOf.intValue() == 0) {
                            userEditFriendshipActivity.getThirdDatas().add(emotionalTag);
                        } else if (valueOf != null && valueOf.intValue() == 1) {
                            userEditFriendshipActivity.getSecondDatas().add(emotionalTag);
                        } else if (valueOf != null && valueOf.intValue() == 2) {
                            userEditFriendshipActivity.getFirstDatas().add(emotionalTag);
                        }
                    }
                }
                if (UserEditFriendshipActivity.this.getThirdDatas().size() > 1) {
                    TextView tvHotChat2 = UserEditFriendshipActivity.this.getTvHotChat();
                    if (tvHotChat2 != null) {
                        tvHotChat2.setVisibility(0);
                    }
                    EmotionalTag emotionalTag2 = UserEditFriendshipActivity.this.getThirdDatas().get(1);
                    if (emotionalTag2 != null && (str6 = emotionalTag2.tname) != null && (tvHotChat = UserEditFriendshipActivity.this.getTvHotChat()) != null) {
                        tvHotChat.setText(str6);
                    }
                    TextView tvHotChat3 = UserEditFriendshipActivity.this.getTvHotChat();
                    if (tvHotChat3 != null) {
                        EmotionalTag emotionalTag3 = UserEditFriendshipActivity.this.getThirdDatas().get(1);
                        tvHotChat3.setSelected(emotionalTag3 != null && emotionalTag3.have == 1);
                    }
                }
                if (UserEditFriendshipActivity.this.getThirdDatas().size() > 0) {
                    TextView tvSoulChat2 = UserEditFriendshipActivity.this.getTvSoulChat();
                    if (tvSoulChat2 != null) {
                        tvSoulChat2.setVisibility(0);
                    }
                    EmotionalTag emotionalTag4 = UserEditFriendshipActivity.this.getThirdDatas().get(0);
                    if (emotionalTag4 != null && (str5 = emotionalTag4.tname) != null && (tvSoulChat = UserEditFriendshipActivity.this.getTvSoulChat()) != null) {
                        tvSoulChat.setText(str5);
                    }
                    TextView tvSoulChat3 = UserEditFriendshipActivity.this.getTvSoulChat();
                    if (tvSoulChat3 != null) {
                        EmotionalTag emotionalTag5 = UserEditFriendshipActivity.this.getThirdDatas().get(0);
                        tvSoulChat3.setSelected(emotionalTag5 != null && emotionalTag5.have == 1);
                    }
                }
                if (UserEditFriendshipActivity.this.getSecondDatas().size() > 1) {
                    TextView tvForeignerCountry2 = UserEditFriendshipActivity.this.getTvForeignerCountry();
                    if (tvForeignerCountry2 != null) {
                        tvForeignerCountry2.setVisibility(0);
                    }
                    EmotionalTag emotionalTag6 = UserEditFriendshipActivity.this.getSecondDatas().get(1);
                    if (emotionalTag6 != null && (str4 = emotionalTag6.tname) != null && (tvForeignerCountry = UserEditFriendshipActivity.this.getTvForeignerCountry()) != null) {
                        tvForeignerCountry.setText(str4);
                    }
                    TextView tvForeignerCountry3 = UserEditFriendshipActivity.this.getTvForeignerCountry();
                    if (tvForeignerCountry3 != null) {
                        EmotionalTag emotionalTag7 = UserEditFriendshipActivity.this.getSecondDatas().get(1);
                        tvForeignerCountry3.setSelected(emotionalTag7 != null && emotionalTag7.have == 1);
                    }
                }
                if (UserEditFriendshipActivity.this.getSecondDatas().size() > 0) {
                    TextView tvLocalCountry2 = UserEditFriendshipActivity.this.getTvLocalCountry();
                    if (tvLocalCountry2 != null) {
                        tvLocalCountry2.setVisibility(0);
                    }
                    EmotionalTag emotionalTag8 = UserEditFriendshipActivity.this.getSecondDatas().get(0);
                    if (emotionalTag8 != null && (str3 = emotionalTag8.tname) != null && (tvLocalCountry = UserEditFriendshipActivity.this.getTvLocalCountry()) != null) {
                        tvLocalCountry.setText(str3);
                    }
                    TextView tvLocalCountry3 = UserEditFriendshipActivity.this.getTvLocalCountry();
                    if (tvLocalCountry3 != null) {
                        EmotionalTag emotionalTag9 = UserEditFriendshipActivity.this.getSecondDatas().get(0);
                        tvLocalCountry3.setSelected(emotionalTag9 != null && emotionalTag9.have == 1);
                    }
                }
                if (UserEditFriendshipActivity.this.getFirstDatas().size() > 1) {
                    TextView tvOldAge2 = UserEditFriendshipActivity.this.getTvOldAge();
                    if (tvOldAge2 != null) {
                        tvOldAge2.setVisibility(0);
                    }
                    EmotionalTag emotionalTag10 = UserEditFriendshipActivity.this.getFirstDatas().get(1);
                    if (emotionalTag10 != null && (str2 = emotionalTag10.tname) != null && (tvOldAge = UserEditFriendshipActivity.this.getTvOldAge()) != null) {
                        tvOldAge.setText(str2);
                    }
                    TextView tvOldAge3 = UserEditFriendshipActivity.this.getTvOldAge();
                    if (tvOldAge3 != null) {
                        EmotionalTag emotionalTag11 = UserEditFriendshipActivity.this.getFirstDatas().get(1);
                        tvOldAge3.setSelected(emotionalTag11 != null && emotionalTag11.have == 1);
                    }
                }
                if (UserEditFriendshipActivity.this.getFirstDatas().size() > 0) {
                    TextView tvSmallAge2 = UserEditFriendshipActivity.this.getTvSmallAge();
                    if (tvSmallAge2 != null) {
                        tvSmallAge2.setVisibility(0);
                    }
                    EmotionalTag emotionalTag12 = UserEditFriendshipActivity.this.getFirstDatas().get(0);
                    if (emotionalTag12 != null && (str = emotionalTag12.tname) != null && (tvSmallAge = UserEditFriendshipActivity.this.getTvSmallAge()) != null) {
                        tvSmallAge.setText(str);
                    }
                    TextView tvSmallAge3 = UserEditFriendshipActivity.this.getTvSmallAge();
                    if (tvSmallAge3 == null) {
                        return;
                    }
                    EmotionalTag emotionalTag13 = UserEditFriendshipActivity.this.getFirstDatas().get(0);
                    tvSmallAge3.setSelected((emotionalTag13 == null || emotionalTag13.have != 1) ? false : false);
                }
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        FragmentActivity activity = getActivity();
        Dialog dialog = activity != null ? new Dialog(activity, R.style.CenterDialog) : null;
        Window window = dialog != null ? dialog.getWindow() : null;
        Intrinsics.checkNotNull(window);
        window.setBackgroundDrawable(new ColorDrawable(0));
        if (dialog != null) {
            dialog.requestWindowFeature(1);
        }
        dialog.setCanceledOnTouchOutside(true);
        Window window2 = dialog.getWindow();
        Intrinsics.checkNotNull(window2);
        WindowManager.LayoutParams attributes = window2.getAttributes();
        attributes.gravity = 17;
        attributes.width = -1;
        attributes.height = -1;
        window2.setAttributes(attributes);
        return dialog;
    }

    public final void setTvForeignerCountry(@Nullable TextView textView) {
        this.tvForeignerCountry = textView;
    }

    public final void setTvHotChat(@Nullable TextView textView) {
        this.tvHotChat = textView;
    }

    public final void setTvLocalCountry(@Nullable TextView textView) {
        this.tvLocalCountry = textView;
    }

    public final void setTvOldAge(@Nullable TextView textView) {
        this.tvOldAge = textView;
    }

    public final void setTvSmallAge(@Nullable TextView textView) {
        this.tvSmallAge = textView;
    }

    public final void setTvSoulChat(@Nullable TextView textView) {
        this.tvSoulChat = textView;
    }
}
