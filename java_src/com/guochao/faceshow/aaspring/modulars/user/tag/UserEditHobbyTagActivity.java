package com.guochao.faceshow.aaspring.modulars.user.tag;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.beans.UserHobbyBean;
import com.guochao.faceshow.aaspring.views.FlowLayout.FlowLayoutManager;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 32\u00020\u00012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0002:\u000234B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020$H\u0016J\b\u0010(\u001a\u00020$H\u0016J \u0010)\u001a\u00020$2\u0016\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003H\u0016J\u0010\u0010+\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010,\u001a\u00020$2\u0006\u0010-\u001a\u00020\u00042\b\u0010.\u001a\u0004\u0018\u00010\u0004J\u0016\u0010/\u001a\u00020$2\f\u00100\u001a\b\u0012\u0004\u0012\u00020201H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\rR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u00065"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "Landroidx/lifecycle/Observer;", "", "", "", "()V", "hobbyBean", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;", "mFragments", "", "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;", "getMFragments", "()Ljava/util/List;", "mRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getMRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setMRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "mUserHobbyList", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;", "getMUserHobbyList", "tvTagCount", "Landroid/widget/TextView;", "getTvTagCount", "()Landroid/widget/TextView;", "setTvTagCount", "(Landroid/widget/TextView;)V", "viewModel", "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;", "setViewModel", "(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V", "finish", "", "getLayoutId", "", "initView", "loadData", "onChanged", "t", "refreshData", "setCount", AnimatedPasterJsonConfig.CONFIG_COUNT, "total", "setViewPagerData", "hobbies", "", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;", "Companion", "UpdateUserHobbyTagEvent", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserEditHobbyTagActivity extends BaseActivity implements Observer<Map<String, ? extends Object>> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private UserHobbyBean hobbyBean;
    @Nullable
    private RecyclerView mRecyclerView;
    @Nullable
    private TextView tvTagCount;
    @Nullable
    private UserEditViewModel viewModel = new UserEditViewModel();
    @NotNull
    private final List<UserHobbyBean.UserHobby> mUserHobbyList = new ArrayList();
    @NotNull
    private final List<UserEditHobbyFragment> mFragments = new ArrayList();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$Companion;", "", "()V", "start", "", "context", "Landroid/content/Context;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
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
            context.startActivity(new Intent(context, UserEditHobbyTagActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B5\u0012.\u0010\u0002\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00050\u0003j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0005`\u0006¢\u0006\u0002\u0010\u0007RB\u0010\u0002\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00050\u0003j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$UpdateUserHobbyTagEvent;", "", "map", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "(Ljava/util/HashMap;)V", "getMap", "()Ljava/util/HashMap;", "setMap", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class UpdateUserHobbyTagEvent {
        @NotNull
        private HashMap<String, List<String>> map;

        public UpdateUserHobbyTagEvent(@NotNull HashMap<String, List<String>> map) {
            Intrinsics.checkNotNullParameter(map, "map");
            this.map = map;
        }

        @NotNull
        public final HashMap<String, List<String>> getMap() {
            return this.map;
        }

        public final void setMap(@NotNull HashMap<String, List<String>> hashMap) {
            Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
            this.map = hashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m575initView$lambda3(UserEditHobbyTagActivity this$0, View view) {
        boolean endsWith$default;
        String sb2;
        String tags;
        Integer hobbyId;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StringBuilder sb3 = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        for (UserHobbyBean.UserHobby userHobby : this$0.mUserHobbyList) {
            if (userHobby != null && (hobbyId = userHobby.getHobbyId()) != null) {
                sb3.append(String.valueOf(hobbyId.intValue()));
                sb3.append(",");
            }
            if (userHobby != null && (tags = userHobby.getTags()) != null) {
                arrayList.add(tags);
            }
        }
        endsWith$default = StringsKt__StringsKt.endsWith$default((CharSequence) sb3, (CharSequence) ",", false, 2, (Object) null);
        if (endsWith$default) {
            sb2 = sb3.substring(0, sb3.length() - 1);
            Intrinsics.checkNotNullExpressionValue(sb2, "sb.substring(0, sb.length - 1)");
        } else {
            sb2 = sb3.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        }
        UserEditViewModel userEditViewModel = this$0.viewModel;
        if (userEditViewModel != null) {
            userEditViewModel.updateUserHobbyTag(sb2, arrayList);
        }
        this$0.onBackPressed();
    }

    private final void refreshData(UserHobbyBean userHobbyBean) {
        RecyclerView.Adapter adapter;
        this.hobbyBean = userHobbyBean;
        List<UserHobbyBean.UserHobby> userHobbies = userHobbyBean.getUserHobbies();
        if (userHobbies != null) {
            this.mUserHobbyList.clear();
            this.mUserHobbyList.addAll(userHobbies);
        }
        String valueOf = String.valueOf(this.mUserHobbyList.size());
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("(%s/10)", Arrays.copyOf(new Object[]{Integer.valueOf(this.mUserHobbyList.size())}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        setCount(valueOf, format);
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null && (adapter = recyclerView.getAdapter()) != null) {
            adapter.notifyDataSetChanged();
        }
        List<UserHobbyBean.HobbyBean> sysHobbies = userHobbyBean.getSysHobbies();
        if (sysHobbies != null) {
            setViewPagerData(sysHobbies);
        }
    }

    private final void setViewPagerData(final List<UserHobbyBean.HobbyBean> list) {
        TabLayout tabLayout = (TabLayout) findViewById(R.id.tabs);
        RtlViewPager rtlViewPager = (RtlViewPager) findViewById(R.id.view_pager);
        for (UserHobbyBean.HobbyBean hobbyBean : list) {
            List<UserHobbyBean.UserHobby> hobbyList = hobbyBean.getHobbyList();
            if (hobbyList != null) {
                for (UserHobbyBean.UserHobby userHobby : hobbyList) {
                    for (UserHobbyBean.UserHobby userHobby2 : this.mUserHobbyList) {
                        if (Intrinsics.areEqual(userHobby.getHobbyId(), userHobby2 != null ? userHobby2.getHobbyId() : null)) {
                            userHobby.setMIsSelect(Boolean.TRUE);
                        }
                    }
                }
            }
            this.mFragments.add(UserEditHobbyFragment.Companion.getInstance(hobbyBean));
        }
        final FragmentManager supportFragmentManager = getSupportFragmentManager();
        rtlViewPager.setAdapter(new FragmentPagerAdapter(supportFragmentManager) { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity$setViewPagerData$2
            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return UserEditHobbyTagActivity.this.getMFragments().size();
            }

            @Override // androidx.fragment.app.FragmentPagerAdapter
            @NotNull
            public Fragment getItem(int i9) {
                return UserEditHobbyTagActivity.this.getMFragments().get(i9);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            @Nullable
            public CharSequence getPageTitle(int i9) {
                return list.get(i9).getTypeName();
            }
        });
        tabLayout.setupWithViewPager(rtlViewPager);
    }

    @JvmStatic
    public static final void start(@NotNull Context context) {
        Companion.start(context);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        UserEditViewModel userEditViewModel = this.viewModel;
        if (userEditViewModel != null) {
            userEditViewModel.unbind(this);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_user_edit_hobby_tag;
    }

    @NotNull
    public final List<UserEditHobbyFragment> getMFragments() {
        return this.mFragments;
    }

    @Nullable
    public final RecyclerView getMRecyclerView() {
        return this.mRecyclerView;
    }

    @NotNull
    public final List<UserHobbyBean.UserHobby> getMUserHobbyList() {
        return this.mUserHobbyList;
    }

    @Nullable
    public final TextView getTvTagCount() {
        return this.tvTagCount;
    }

    @Nullable
    public final UserEditViewModel getViewModel() {
        return this.viewModel;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.hobby);
        this.mTitleBarHelper.f();
        this.tvTagCount = (TextView) findViewById(R.id.tv_tag_count);
        View findViewById = findViewById(R.id.save);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById<TextView>(R.id.save)");
        ViewExtendsKt.onClick$default(findViewById, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserEditHobbyTagActivity.m575initView$lambda3(UserEditHobbyTagActivity.this, view);
            }
        }, 1, null);
        UserEditViewModel userEditViewModel = this.viewModel;
        if (userEditViewModel != null) {
            userEditViewModel.bind(this, this);
        }
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.user_tag_selected);
        recyclerView.setLayoutManager(new FlowLayoutManager());
        recyclerView.setItemAnimator(null);
        recyclerView.setAdapter(new UserEditHobbyTagActivity$initView$2$1(this));
        this.mRecyclerView = recyclerView;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        UserEditViewModel userEditViewModel = this.viewModel;
        if (userEditViewModel != null) {
            userEditViewModel.getUserHobbyTag();
        }
    }

    public final void setCount(@NotNull String count, @Nullable String str) {
        Intrinsics.checkNotNullParameter(count, "count");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#6365FF")), 1, count.length() + 1, 34);
        TextView textView = this.tvTagCount;
        if (textView == null) {
            return;
        }
        textView.setText(spannableStringBuilder);
    }

    public final void setMRecyclerView(@Nullable RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    public final void setTvTagCount(@Nullable TextView textView) {
        this.tvTagCount = textView;
    }

    public final void setViewModel(@Nullable UserEditViewModel userEditViewModel) {
        this.viewModel = userEditViewModel;
    }

    @Override // androidx.lifecycle.Observer
    public void onChanged(@Nullable Map<String, ? extends Object> map) {
        Set<String> keySet;
        if (map == null || (keySet = map.keySet()) == null) {
            return;
        }
        for (String str : keySet) {
            if (Intrinsics.areEqual(str, "getUserHobbyTag")) {
                Object obj = map.get(str);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.beans.UserHobbyBean");
                refreshData((UserHobbyBean) obj);
            }
        }
    }
}
