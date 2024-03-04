package com.guochao.faceshow.aaspring.modulars.user.tag;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.UserHobbyBean;
import com.guochao.faceshow.aaspring.views.FlowLayout.FlowLayoutManager;
import com.guochao.faceshow.aaspring.views.v;
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
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 22\u00020\u00012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0002:\u000223B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020$H\u0016J\b\u0010(\u001a\u00020$H\u0016J \u0010)\u001a\u00020$2\u0016\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003H\u0016J\u0010\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020-H\u0002J\u0016\u0010.\u001a\u00020$2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020100H\u0002R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0019\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\fR\u0019\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u00064"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "Landroidx/lifecycle/Observer;", "", "", "", "()V", "mRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getMRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setMRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "mTotalLikedTagList", "", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;", "getMTotalLikedTagList", "()Ljava/util/List;", "mTotalRecyclerView", "getMTotalRecyclerView", "setMTotalRecyclerView", "mUserLikedTagList", "getMUserLikedTagList", "tvTagCount", "Landroid/widget/TextView;", "getTvTagCount", "()Landroid/widget/TextView;", "setTvTagCount", "(Landroid/widget/TextView;)V", "viewModel", "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;", "setViewModel", "(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V", "finish", "", "getLayoutId", "", "initView", "loadData", "onChanged", "t", "refreshData", "hobbyBean", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;", "setViewPagerData", "hobbies", "", "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;", "Companion", "UpdateUserLikedTagEvent", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserEditLikedTagActivity extends BaseActivity implements Observer<Map<String, ? extends Object>> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private RecyclerView mRecyclerView;
    @Nullable
    private RecyclerView mTotalRecyclerView;
    @Nullable
    private TextView tvTagCount;
    @Nullable
    private UserEditViewModel viewModel = new UserEditViewModel();
    @NotNull
    private final List<UserHobbyBean.UserHobby> mUserLikedTagList = new ArrayList();
    @NotNull
    private final List<UserHobbyBean.UserHobby> mTotalLikedTagList = new ArrayList();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$Companion;", "", "()V", "start", "", "context", "Landroid/content/Context;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
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
            context.startActivity(new Intent(context, UserEditLikedTagActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00050\u0003¢\u0006\u0002\u0010\u0006R,\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00050\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$UpdateUserLikedTagEvent;", "", "map", "Ljava/util/HashMap;", "", "", "(Ljava/util/HashMap;)V", "getMap", "()Ljava/util/HashMap;", "setMap", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class UpdateUserLikedTagEvent {
        @NotNull
        private HashMap<String, List<String>> map;

        public UpdateUserLikedTagEvent(@NotNull HashMap<String, List<String>> map) {
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
    public static final void m577initView$lambda3(UserEditLikedTagActivity this$0, View view) {
        boolean endsWith$default;
        String sb2;
        String tags;
        Integer hobbyId;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StringBuilder sb3 = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        for (UserHobbyBean.UserHobby userHobby : this$0.mUserLikedTagList) {
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
            userEditViewModel.updateUserLikedTag(sb2, arrayList);
        }
        this$0.onBackPressed();
    }

    private final void refreshData(UserHobbyBean userHobbyBean) {
        RecyclerView.Adapter adapter;
        List<UserHobbyBean.UserHobby> userHobbies = userHobbyBean.getUserHobbies();
        if (userHobbies != null) {
            this.mUserLikedTagList.clear();
            this.mUserLikedTagList.addAll(userHobbies);
        }
        TextView textView = this.tvTagCount;
        if (textView != null) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%s/10", Arrays.copyOf(new Object[]{Integer.valueOf(this.mUserLikedTagList.size())}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            textView.setText(format);
        }
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null && (adapter = recyclerView.getAdapter()) != null) {
            adapter.notifyDataSetChanged();
        }
        List<UserHobbyBean.HobbyBean> sysHobbies = userHobbyBean.getSysHobbies();
        if (sysHobbies != null) {
            setViewPagerData(sysHobbies);
        }
    }

    private final void setViewPagerData(List<UserHobbyBean.HobbyBean> list) {
        for (UserHobbyBean.HobbyBean hobbyBean : list) {
            List<UserHobbyBean.UserHobby> hobbyList = hobbyBean.getHobbyList();
            if (hobbyList != null) {
                for (UserHobbyBean.UserHobby userHobby : hobbyList) {
                    for (UserHobbyBean.UserHobby userHobby2 : this.mUserLikedTagList) {
                        if (Intrinsics.areEqual(userHobby.getHobbyId(), userHobby2 != null ? userHobby2.getHobbyId() : null)) {
                            userHobby.setMIsSelect(Boolean.TRUE);
                        }
                    }
                }
            }
            List<UserHobbyBean.UserHobby> hobbyList2 = hobbyBean.getHobbyList();
            if (hobbyList2 != null) {
                this.mTotalLikedTagList.clear();
                this.mTotalLikedTagList.addAll(hobbyList2);
            }
        }
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.user_tag_total);
        recyclerView.setLayoutManager(new FlowLayoutManager());
        recyclerView.setItemAnimator(null);
        recyclerView.setAdapter(new UserEditLikedTagActivity$setViewPagerData$2$1(this));
        this.mTotalRecyclerView = recyclerView;
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
        return R.layout.activity_user_edit_liked_tag;
    }

    @Nullable
    public final RecyclerView getMRecyclerView() {
        return this.mRecyclerView;
    }

    @NotNull
    public final List<UserHobbyBean.UserHobby> getMTotalLikedTagList() {
        return this.mTotalLikedTagList;
    }

    @Nullable
    public final RecyclerView getMTotalRecyclerView() {
        return this.mTotalRecyclerView;
    }

    @NotNull
    public final List<UserHobbyBean.UserHobby> getMUserLikedTagList() {
        return this.mUserLikedTagList;
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
        setEndText(getString(R.string.complete), R.color.color_ugc_app_primary);
        this.tvTagCount = (TextView) findViewById(R.id.tv_tag_count);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new v.e() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.m
                @Override // com.guochao.faceshow.aaspring.views.v.e
                public final void onClick(View view) {
                    UserEditLikedTagActivity.m577initView$lambda3(UserEditLikedTagActivity.this, view);
                }
            });
        }
        UserEditViewModel userEditViewModel = this.viewModel;
        if (userEditViewModel != null) {
            userEditViewModel.bind(this, this);
        }
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.user_tag_selected);
        recyclerView.setLayoutManager(new FlowLayoutManager());
        recyclerView.setItemAnimator(null);
        recyclerView.setAdapter(new UserEditLikedTagActivity$initView$2$1(this));
        this.mRecyclerView = recyclerView;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        UserEditViewModel userEditViewModel = this.viewModel;
        if (userEditViewModel != null) {
            userEditViewModel.getUserLikedTag();
        }
    }

    public final void setMRecyclerView(@Nullable RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    public final void setMTotalRecyclerView(@Nullable RecyclerView recyclerView) {
        this.mTotalRecyclerView = recyclerView;
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
            if (Intrinsics.areEqual(str, "getUserLikedTag")) {
                Object obj = map.get(str);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.beans.UserHobbyBean");
                refreshData((UserHobbyBean) obj);
            }
        }
    }
}
