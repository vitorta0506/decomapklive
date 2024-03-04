package com.guochao.faceshow.userhomepage.act;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.beans.UserPageBaseData;
import com.guochao.faceshow.aaspring.beans.UserPageTrankItemData;
import com.guochao.faceshow.aaspring.modulars.user.tag.UserEditViewModel;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.views.FlowLayout.FlowLayoutManager;
import com.guochao.faceshow.mine.view.ContributionListActivity;
import com.guochao.faceshow.userhomepage.UserHomePageModel;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.NormalCircleImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 !2\u00020\u00012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0002:\u0001!B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0012\u0010\u000e\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0011\u001a\u00020\fH\u0014J \u0010\u0012\u001a\u00020\f2\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003H\u0016J\b\u0010\u0014\u001a\u00020\fH\u0016J\u0010\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u001c\u0010\u0018\u001a\u00020\f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\"\u0010\u0018\u001a\u00020\f2\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001d2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0012\u0010\u001e\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u001fH\u0002J\u0010\u0010 \u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u001fH\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;", "Landroidx/lifecycle/Observer;", "", "", "", "()V", "viewModel", "Lcom/guochao/faceshow/userhomepage/UserHomePageModel;", "getLayoutId", "", "initUserTrankData", "", Contants.USER_ID, "initView", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "loadData", "onChanged", "t", "onDestroyView", "onUpdateUserInfoEvent", "event", "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$UpdateUserInfoEvent;", "setInfoToView", ViewHierarchyConstants.TEXT_KEY, "textView", "Landroid/widget/TextView;", "texts", "", "setUserInfo", "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;", "setUserTags", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserAboutMeFragment extends BaseFragment implements Observer<Map<String, ? extends Object>> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private UserHomePageModel viewModel;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;", Contants.USER_ID, "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final UserAboutMeFragment getInstance(@Nullable String str) {
            UserAboutMeFragment userAboutMeFragment = new UserAboutMeFragment();
            Bundle bundle = new Bundle();
            bundle.putString(Contants.USER_ID, str);
            userAboutMeFragment.setArguments(bundle);
            return userAboutMeFragment;
        }
    }

    @JvmStatic
    @NotNull
    public static final UserAboutMeFragment getInstance(@Nullable String str) {
        return Companion.getInstance(str);
    }

    private final void initUserTrankData(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(Contants.USER_ID, str);
        if (!Intrinsics.areEqual(str, getCurrentUser().userId)) {
            String str2 = SpUtils.getStr(getActivity(), Contants.USER_ID);
            Intrinsics.checkNotNullExpressionValue(str2, "getStr(activity, Contants.USER_ID)");
            hashMap.put("account", str2);
        }
        post(Contants.USER_TRANKING_TOP).E(hashMap).M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<UserPageTrankItemData>>() { // from class: com.guochao.faceshow.userhomepage.act.UserAboutMeFragment$initUserTrankData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<UserPageTrankItemData>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<UserPageTrankItemData> list, @NotNull FaceCastBaseResponse<List<UserPageTrankItemData>> baseResponse) {
                UserPageTrankItemData userPageTrankItemData;
                UserPageTrankItemData userPageTrankItemData2;
                UserPageTrankItemData userPageTrankItemData3;
                UserPageTrankItemData userPageTrankItemData4;
                UserPageTrankItemData userPageTrankItemData5;
                UserPageTrankItemData userPageTrankItemData6;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (UserAboutMeFragment.this.isDetached() || !UserAboutMeFragment.this.isAdded()) {
                    return;
                }
                int size = list != null ? list.size() : 0;
                r5 = null;
                String str3 = null;
                if (size == 0) {
                    View view = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView = view != null ? (NormalCircleImageView) view.findViewById(R.id.first_avatar) : null;
                    if (normalCircleImageView != null) {
                        normalCircleImageView.setVisibility(8);
                    }
                    View view2 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView2 = view2 != null ? (NormalCircleImageView) view2.findViewById(R.id.second_avatar) : null;
                    if (normalCircleImageView2 != null) {
                        normalCircleImageView2.setVisibility(8);
                    }
                    View view3 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView3 = view3 != null ? (NormalCircleImageView) view3.findViewById(R.id.third_avatar) : null;
                    if (normalCircleImageView3 == null) {
                        return;
                    }
                    normalCircleImageView3.setVisibility(8);
                } else if (size == 1) {
                    View view4 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView4 = view4 != null ? (NormalCircleImageView) view4.findViewById(R.id.first_avatar) : null;
                    if (normalCircleImageView4 != null) {
                        normalCircleImageView4.setVisibility(0);
                    }
                    View view5 = UserAboutMeFragment.this.getView();
                    hc.a.h(view5 != null ? (NormalCircleImageView) view5.findViewById(R.id.first_avatar) : null, (list == null || (userPageTrankItemData = list.get(0)) == null) ? null : userPageTrankItemData.img, R.mipmap.default_head);
                    View view6 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView5 = view6 != null ? (NormalCircleImageView) view6.findViewById(R.id.second_avatar) : null;
                    if (normalCircleImageView5 != null) {
                        normalCircleImageView5.setVisibility(8);
                    }
                    View view7 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView6 = view7 != null ? (NormalCircleImageView) view7.findViewById(R.id.third_avatar) : null;
                    if (normalCircleImageView6 == null) {
                        return;
                    }
                    normalCircleImageView6.setVisibility(8);
                } else if (size != 2) {
                    View view8 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView7 = view8 != null ? (NormalCircleImageView) view8.findViewById(R.id.first_avatar) : null;
                    if (normalCircleImageView7 != null) {
                        normalCircleImageView7.setVisibility(0);
                    }
                    View view9 = UserAboutMeFragment.this.getView();
                    hc.a.h(view9 != null ? (NormalCircleImageView) view9.findViewById(R.id.first_avatar) : null, (list == null || (userPageTrankItemData6 = list.get(0)) == null) ? null : userPageTrankItemData6.img, R.mipmap.default_head);
                    View view10 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView8 = view10 != null ? (NormalCircleImageView) view10.findViewById(R.id.second_avatar) : null;
                    if (normalCircleImageView8 != null) {
                        normalCircleImageView8.setVisibility(0);
                    }
                    View view11 = UserAboutMeFragment.this.getView();
                    hc.a.h(view11 != null ? (NormalCircleImageView) view11.findViewById(R.id.second_avatar) : null, (list == null || (userPageTrankItemData5 = list.get(1)) == null) ? null : userPageTrankItemData5.img, R.mipmap.default_head);
                    View view12 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView9 = view12 != null ? (NormalCircleImageView) view12.findViewById(R.id.third_avatar) : null;
                    if (normalCircleImageView9 != null) {
                        normalCircleImageView9.setVisibility(0);
                    }
                    View view13 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView10 = view13 != null ? (NormalCircleImageView) view13.findViewById(R.id.third_avatar) : null;
                    if (list != null && (userPageTrankItemData4 = list.get(2)) != null) {
                        str3 = userPageTrankItemData4.img;
                    }
                    hc.a.h(normalCircleImageView10, str3, R.mipmap.default_head);
                } else {
                    View view14 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView11 = view14 != null ? (NormalCircleImageView) view14.findViewById(R.id.first_avatar) : null;
                    if (normalCircleImageView11 != null) {
                        normalCircleImageView11.setVisibility(0);
                    }
                    View view15 = UserAboutMeFragment.this.getView();
                    hc.a.h(view15 != null ? (NormalCircleImageView) view15.findViewById(R.id.first_avatar) : null, (list == null || (userPageTrankItemData3 = list.get(0)) == null) ? null : userPageTrankItemData3.img, R.mipmap.default_head);
                    View view16 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView12 = view16 != null ? (NormalCircleImageView) view16.findViewById(R.id.second_avatar) : null;
                    if (normalCircleImageView12 != null) {
                        normalCircleImageView12.setVisibility(0);
                    }
                    View view17 = UserAboutMeFragment.this.getView();
                    hc.a.h(view17 != null ? (NormalCircleImageView) view17.findViewById(R.id.second_avatar) : null, (list == null || (userPageTrankItemData2 = list.get(1)) == null) ? null : userPageTrankItemData2.img, R.mipmap.default_head);
                    View view18 = UserAboutMeFragment.this.getView();
                    NormalCircleImageView normalCircleImageView13 = view18 != null ? (NormalCircleImageView) view18.findViewById(R.id.third_avatar) : null;
                    if (normalCircleImageView13 == null) {
                        return;
                    }
                    normalCircleImageView13.setVisibility(8);
                }
            }
        });
    }

    private final void setInfoToView(String str, TextView textView) {
        ViewGroup viewGroup;
        if (TextUtils.isEmpty(str)) {
            ViewParent parent = textView != null ? textView.getParent() : null;
            viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup == null) {
                return;
            }
            viewGroup.setVisibility(8);
            return;
        }
        ViewParent parent2 = textView != null ? textView.getParent() : null;
        viewGroup = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
        if (viewGroup != null) {
            viewGroup.setVisibility(0);
        }
        if (textView == null) {
            return;
        }
        textView.setText(str);
    }

    private final void setUserInfo(final UserPageBaseData userPageBaseData) {
        View findViewById;
        if (userPageBaseData == null) {
            return;
        }
        View view = getView();
        TextView textView = view != null ? (TextView) view.findViewById(R.id.user_name) : null;
        if (textView != null) {
            textView.setText(userPageBaseData.nickName);
        }
        String str = userPageBaseData.nickName;
        View view2 = getView();
        setInfoToView(str, view2 != null ? (TextView) view2.findViewById(R.id.user_name) : null);
        String currentBirthday = userPageBaseData.getCurrentBirthday();
        View view3 = getView();
        setInfoToView(currentBirthday, view3 != null ? (TextView) view3.findViewById(R.id.user_birthday) : null);
        String string = getString(userPageBaseData.getGender() == 1 ? R.string.man : R.string.woman);
        View view4 = getView();
        setInfoToView(string, view4 != null ? (TextView) view4.findViewById(R.id.user_gender) : null);
        String str2 = userPageBaseData.country;
        View view5 = getView();
        setInfoToView(str2, view5 != null ? (TextView) view5.findViewById(R.id.tv_place_now) : null);
        String str3 = userPageBaseData.job;
        View view6 = getView();
        setInfoToView(str3, view6 != null ? (TextView) view6.findViewById(R.id.user_occupation) : null);
        String str4 = userPageBaseData.emotionLable;
        View view7 = getView();
        setInfoToView(str4, view7 != null ? (TextView) view7.findViewById(R.id.tv_emotional) : null);
        List<String> list = userPageBaseData.friendLables;
        View view8 = getView();
        setInfoToView(list, view8 != null ? (TextView) view8.findViewById(R.id.tv_friendship) : null);
        List<String> list2 = userPageBaseData.languageLable;
        View view9 = getView();
        setInfoToView(list2, view9 != null ? (TextView) view9.findViewById(R.id.tv_language) : null);
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.userhomepage.act.UserHomePageAct");
        UserPageBaseData mUserData = ((UserHomePageAct) activity).getViewModel().getMUserData();
        String str5 = mUserData != null ? mUserData.signature : null;
        View view10 = getView();
        TextView textView2 = view10 != null ? (TextView) view10.findViewById(R.id.user_signature) : null;
        if (textView2 != null) {
            if (TextUtils.isEmpty(str5)) {
                str5 = getString(R.string.user_info_default_signature);
            }
            textView2.setText(str5);
        }
        View view11 = getView();
        if (view11 != null && (findViewById = view11.findViewById(R.id.top_fans_lay)) != null) {
            ViewExtendsKt.onClick$default(findViewById, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view12) {
                    UserAboutMeFragment.m778setUserInfo$lambda9(UserPageBaseData.this, this, view12);
                }
            }, 1, null);
        }
        String str6 = userPageBaseData.userId;
        if (str6 != null) {
            Intrinsics.checkNotNullExpressionValue(str6, "t.userId");
            initUserTrankData(str6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setUserInfo$lambda-9  reason: not valid java name */
    public static final void m778setUserInfo$lambda9(UserPageBaseData userPageBaseData, UserAboutMeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (userPageBaseData.userId != null) {
            ContributionListActivity.start(this$0.getActivity(), userPageBaseData.userId);
        }
    }

    private final void setUserTags(final UserPageBaseData userPageBaseData) {
        RecyclerView recyclerView;
        View view = getView();
        if (view == null || (recyclerView = (RecyclerView) view.findViewById(R.id.character_tags)) == null) {
            return;
        }
        List<String> list = userPageBaseData.hobbyLables;
        if (list != null && !list.isEmpty()) {
            ViewParent parent = recyclerView.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).setVisibility(0);
        } else {
            ViewParent parent2 = recyclerView.getParent();
            Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent2).setVisibility(8);
        }
        recyclerView.setLayoutManager(new FlowLayoutManager());
        recyclerView.setAdapter(new RecyclerView.Adapter<BaseViewHolder>() { // from class: com.guochao.faceshow.userhomepage.act.UserAboutMeFragment$setUserTags$1$1
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                List<String> list2 = UserPageBaseData.this.hobbyLables;
                if (list2 == null) {
                    return 0;
                }
                return list2.size();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                TextView textView = (TextView) holder.getView(R.id.tv_tag);
                ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.setMarginStart(DensityUtil.dp2px(10.0f));
                marginLayoutParams.topMargin = DensityUtil.dp2px(12.0f);
                String str = UserPageBaseData.this.hobbyLables.get(i9);
                if (str != null) {
                    textView.setText(str);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            @NotNull
            public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent3, int i9) {
                Intrinsics.checkNotNullParameter(parent3, "parent");
                return new BaseViewHolder(LayoutInflater.from(parent3.getContext()).inflate(R.layout.item_user_tag, parent3, false));
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_user_info_about_me;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        View findViewById;
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.userhomepage.act.UserHomePageAct");
        UserHomePageModel viewModel = ((UserHomePageAct) activity).getViewModel();
        this.viewModel = viewModel;
        if (viewModel != null) {
            viewModel.bind(this, this);
        }
        ViewParent parent = (view == null || (findViewById = view.findViewById(R.id.content_area)) == null) ? null : findViewById.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        if (view2 != null) {
            String str = getCurrentUser().userId;
            Bundle arguments = getArguments();
            view2.setPadding(0, 0, 0, Intrinsics.areEqual(str, arguments != null ? arguments.getString(Contants.USER_ID) : null) ? 0 : DensityUtil.dp2px(89.0f));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        UserHomePageModel userHomePageModel;
        Bundle arguments = getArguments();
        if ((arguments != null ? arguments.getString(Contants.USER_ID) : null) == null || (userHomePageModel = this.viewModel) == null) {
            return;
        }
        userHomePageModel.getUserAboutMe();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        UserHomePageModel userHomePageModel = this.viewModel;
        if (userHomePageModel != null) {
            userHomePageModel.unbind(this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateUserInfoEvent(@NotNull UserEditViewModel.UpdateUserInfoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getSignature() != null) {
            FragmentActivity activity = getActivity();
            Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.userhomepage.act.UserHomePageAct");
            UserPageBaseData mUserData = ((UserHomePageAct) activity).getViewModel().getMUserData();
            if (mUserData != null) {
                mUserData.signature = event.getSignature();
            }
        }
        loadData();
    }

    @Override // androidx.lifecycle.Observer
    public void onChanged(@Nullable Map<String, ? extends Object> map) {
        Set<String> keySet;
        if (map == null || (keySet = map.keySet()) == null) {
            return;
        }
        for (String str : keySet) {
            switch (str.hashCode()) {
                case -2136824188:
                    if (str.equals("getUserAboutMe")) {
                        Object obj = map.get(str);
                        UserPageBaseData userPageBaseData = obj instanceof UserPageBaseData ? (UserPageBaseData) obj : null;
                        if (userPageBaseData == null) {
                            break;
                        } else {
                            View view = getView();
                            View findViewById = view != null ? view.findViewById(R.id.content_area) : null;
                            if (findViewById != null) {
                                findViewById.setAlpha(1.0f);
                            }
                            setUserInfo(userPageBaseData);
                            setUserTags(userPageBaseData);
                            break;
                        }
                    } else {
                        break;
                    }
                case -1309989148:
                    if (str.equals("updateUserSignature")) {
                        View view2 = getView();
                        TextView textView = view2 != null ? (TextView) view2.findViewById(R.id.user_signature) : null;
                        if (textView != null) {
                            textView.setText(TextUtils.isEmpty(getCurrentUser().signature) ? getString(R.string.user_info_default_signature) : getCurrentUser().signature);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                case -636238591:
                    if (str.equals("updateUserLikedTag")) {
                        FragmentActivity activity = getActivity();
                        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.userhomepage.act.UserHomePageAct");
                        UserPageBaseData mUserData = ((UserHomePageAct) activity).getViewModel().getMUserData();
                        UserPageBaseData.UserDetail userDetail = mUserData != null ? mUserData.detail : null;
                        if (userDetail == null) {
                            userDetail = new UserPageBaseData.UserDetail();
                        }
                        userDetail.preferenceLabels = new ArrayList();
                        Object obj2 = map.get(str);
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.collections.List<*>");
                        for (Object obj3 : (List) obj2) {
                            List<String> list = userDetail.preferenceLabels;
                            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                            list.add((String) obj3);
                        }
                        break;
                    } else {
                        break;
                    }
                case 1752702140:
                    if (str.equals("updateUserHobbyTag")) {
                        FragmentActivity activity2 = getActivity();
                        Intrinsics.checkNotNull(activity2, "null cannot be cast to non-null type com.guochao.faceshow.userhomepage.act.UserHomePageAct");
                        UserPageBaseData mUserData2 = ((UserHomePageAct) activity2).getViewModel().getMUserData();
                        if (mUserData2 == null) {
                            mUserData2 = new UserPageBaseData();
                        }
                        mUserData2.hobbyLables = new ArrayList();
                        Object obj4 = map.get(str);
                        Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.collections.List<*>");
                        for (Object obj5 : (List) obj4) {
                            List<String> list2 = mUserData2.hobbyLables;
                            Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type kotlin.String");
                            list2.add((String) obj5);
                        }
                        setUserTags(mUserData2);
                        break;
                    } else {
                        break;
                    }
            }
        }
    }

    private final void setInfoToView(List<String> list, TextView textView) {
        ViewGroup viewGroup;
        if (list != null && (list.isEmpty() ^ true)) {
            ViewParent parent = textView != null ? textView.getParent() : null;
            viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.setVisibility(0);
            }
            StringBuilder sb2 = new StringBuilder();
            for (String str : list) {
                sb2.append(str);
                sb2.append(",");
            }
            if (textView == null) {
                return;
            }
            textView.setText(sb2.substring(0, sb2.length() - 1).toString());
            return;
        }
        ViewParent parent2 = textView != null ? textView.getParent() : null;
        viewGroup = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
        if (viewGroup == null) {
            return;
        }
        viewGroup.setVisibility(8);
    }
}
