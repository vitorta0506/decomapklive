package com.guochao.faceshow.aaspring.modulars.user.vip;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import b8.e;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.WhoSawMeBean;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.modulars.user.view.UserPhotoWhoSaw;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.TimeUtil;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class WhoSawMeActivity extends BaseRecyclerViewActivity<WhoSawMeBean.ListBean.Bean, WhoSawMeHolder> {

    /* renamed from: a  reason: collision with root package name */
    WhoSawMeZoomHelper f23279a;
    @BindView
    View recyclerContentArea;

    /* loaded from: classes3.dex */
    public static class WhoSawMeHolder extends BaseViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private UserCenterSexLevel f23280a;
        @BindView
        HeadPortraitView avatarBg;

        /* renamed from: b  reason: collision with root package name */
        private UserPhotoWhoSaw f23281b;

        /* renamed from: c  reason: collision with root package name */
        private WhoSawMeBean.ListBean.Bean f23282c;

        /* renamed from: d  reason: collision with root package name */
        private int f23283d;
        @BindView
        View dividerLine;

        /* renamed from: e  reason: collision with root package name */
        private c f23284e;
        @BindView
        ImageView iconFocus;
        @BindView
        View userCenterAgeLevel;
        @BindView
        TextView userName;
        @BindView
        View userSawPhotos;
        @BindView
        TextView userSign;
        @BindView
        TextView watchTime;

        /* loaded from: classes3.dex */
        class a implements UserPhotoWhoSaw.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ WhoSawMeActivity f23285a;

            /* renamed from: com.guochao.faceshow.aaspring.modulars.user.vip.WhoSawMeActivity$WhoSawMeHolder$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class C0228a implements WhoSawMeZoomHelper.OnFocusListener {
                C0228a() {
                }

                @Override // com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper.OnFocusListener
                public void onFocus() {
                    if (WhoSawMeHolder.this.f23284e != null) {
                        WhoSawMeHolder.this.f23284e.a(WhoSawMeHolder.this.f23283d);
                    }
                }
            }

            a(WhoSawMeActivity whoSawMeActivity) {
                this.f23285a = whoSawMeActivity;
            }

            @Override // com.guochao.faceshow.aaspring.modulars.user.view.UserPhotoWhoSaw.a
            public void a(View view, List<String> list, int i9) {
                WhoSawMeActivity whoSawMeActivity = this.f23285a;
                if (whoSawMeActivity.f23279a == null) {
                    whoSawMeActivity.f23279a = new WhoSawMeZoomHelper(whoSawMeActivity);
                }
                WhoSawMeZoomHelper whoSawMeZoomHelper = this.f23285a.f23279a;
                whoSawMeZoomHelper.bindData(WhoSawMeHolder.this.f23282c);
                whoSawMeZoomHelper.startZoom(list, view, i9, WhoSawMeHolder.this.f23281b.f23267c);
                whoSawMeZoomHelper.setOnFocusListener(new C0228a());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements hb.b<String> {
            b() {
            }

            @Override // hb.b
            /* renamed from: a */
            public void onResponse(String str) {
            }

            @Override // hb.b
            public /* synthetic */ void onFail(String str) {
                hb.a.a(this, str);
            }
        }

        /* loaded from: classes3.dex */
        public interface c {
            void a(int i9);
        }

        public WhoSawMeHolder(ViewGroup viewGroup, WhoSawMeActivity whoSawMeActivity) {
            super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_who_saw_me, viewGroup, false));
            ButterKnife.c(this, this.itemView);
            this.f23280a = new UserCenterSexLevel(this.userCenterAgeLevel, false, false);
            UserPhotoWhoSaw userPhotoWhoSaw = new UserPhotoWhoSaw(this.userSawPhotos);
            this.f23281b = userPhotoWhoSaw;
            userPhotoWhoSaw.setOnClickImageListener(new a(whoSawMeActivity));
        }

        public void g(int i9, WhoSawMeBean.ListBean.Bean bean, int i10) {
            this.f23283d = i9;
            this.f23282c = bean;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.dividerLine.getLayoutParams();
            if (i9 == i10 - 1) {
                marginLayoutParams.bottomMargin = DensityUtil.dp2px(70.0f);
                marginLayoutParams.height = 0;
            } else {
                marginLayoutParams.bottomMargin = 0;
            }
            if (TextUtils.isEmpty(bean.getSignature())) {
                this.userSign.setText(R.string.user_info_default_signature);
            } else {
                this.userSign.setVisibility(0);
                this.userSign.setText(bean.getSignature());
            }
            this.avatarBg.d(bean);
            this.userName.setText(bean.getNickName());
            this.f23280a.d(bean);
            this.f23281b.a(bean);
            this.watchTime.setText(TimeUtil.getWhoSawMeTime(System.currentTimeMillis() - bean.getCreateTime()));
            if (!e.g().getUserId().equals(this.f23282c.getUserId())) {
                this.iconFocus.setVisibility(0);
                if (bean.getIsAttention() > 0) {
                    this.iconFocus.setImageResource(R.mipmap.ugc_hi);
                    return;
                } else {
                    this.iconFocus.setImageResource(R.mipmap.icon_ugc_dynamic_focuson);
                    return;
                }
            }
            this.iconFocus.setVisibility(8);
        }

        @OnClick
        public void onViewClicked(View view) {
            if (view.getId() == R.id.icon_focus && DisableDoubleClickUtils.canClick(view, 500L)) {
                if (this.f23282c.getIsAttention() > 0) {
                    if (e.g().getUserId().equals(this.f23282c.getUserId())) {
                        return;
                    }
                    ChatActivity.navToChat(this.itemView.getContext(), this.f23282c.getUserId(), 1, this.f23282c.getNickName());
                    return;
                }
                ib.b.b(this.f23282c.getUserId(), FriendFromSource.DEFAULT, (Activity) view.getContext(), new b());
            }
        }

        public void setOnItemDataChangedListener(c cVar) {
            this.f23284e = cVar;
        }
    }

    /* loaded from: classes3.dex */
    public class WhoSawMeHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private WhoSawMeHolder f23289b;

        /* renamed from: c  reason: collision with root package name */
        private View f23290c;

        /* loaded from: classes3.dex */
        class a extends butterknife.internal.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ WhoSawMeHolder f23291a;

            a(WhoSawMeHolder whoSawMeHolder) {
                this.f23291a = whoSawMeHolder;
            }

            @Override // butterknife.internal.b
            public void doClick(View view) {
                this.f23291a.onViewClicked(view);
            }
        }

        @UiThread
        public WhoSawMeHolder_ViewBinding(WhoSawMeHolder whoSawMeHolder, View view) {
            this.f23289b = whoSawMeHolder;
            whoSawMeHolder.userSawPhotos = c.c(view, R.id.user_saw_photos, "field 'userSawPhotos'");
            View c10 = c.c(view, R.id.icon_focus, "field 'iconFocus' and method 'onViewClicked'");
            whoSawMeHolder.iconFocus = (ImageView) c.a(c10, R.id.icon_focus, "field 'iconFocus'", ImageView.class);
            this.f23290c = c10;
            c10.setOnClickListener(new a(whoSawMeHolder));
            whoSawMeHolder.avatarBg = (HeadPortraitView) c.d(view, R.id.avatar_view, "field 'avatarBg'", HeadPortraitView.class);
            whoSawMeHolder.userName = (TextView) c.d(view, R.id.user_name, "field 'userName'", TextView.class);
            whoSawMeHolder.userCenterAgeLevel = c.c(view, R.id.user_center_age_level, "field 'userCenterAgeLevel'");
            whoSawMeHolder.watchTime = (TextView) c.d(view, R.id.watch_time, "field 'watchTime'", TextView.class);
            whoSawMeHolder.dividerLine = c.c(view, R.id.divider_line, "field 'dividerLine'");
            whoSawMeHolder.userSign = (TextView) c.d(view, R.id.user_sign, "field 'userSign'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            WhoSawMeHolder whoSawMeHolder = this.f23289b;
            if (whoSawMeHolder != null) {
                this.f23289b = null;
                whoSawMeHolder.userSawPhotos = null;
                whoSawMeHolder.iconFocus = null;
                whoSawMeHolder.avatarBg = null;
                whoSawMeHolder.userName = null;
                whoSawMeHolder.userCenterAgeLevel = null;
                whoSawMeHolder.watchTime = null;
                whoSawMeHolder.dividerLine = null;
                whoSawMeHolder.userSign = null;
                this.f23290c.setOnClickListener(null);
                this.f23290c = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<WhoSawMeBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f23293a;

        a(int i9) {
            this.f23293a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable WhoSawMeBean whoSawMeBean, @NonNull FaceCastBaseResponse<WhoSawMeBean> faceCastBaseResponse) {
            if (whoSawMeBean != null && whoSawMeBean.getPage() != null && whoSawMeBean.getPage().getList() != null) {
                if (whoSawMeBean.getPage().getTotalPage() < this.f23293a) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                WhoSawMeActivity.this.addDatas(whoSawMeBean.getPage().getList());
                WhoSawMeActivity.this.notifyDataLoaded(true);
                return;
            }
            onFailure(new g7.a<>(new Exception(""), -1));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<WhoSawMeBean> aVar) {
            WhoSawMeActivity.this.notifyDataLoaded(false);
            WhoSawMeActivity.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements WhoSawMeHolder.c {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.user.vip.WhoSawMeActivity.WhoSawMeHolder.c
        public void a(int i9) {
            RecyclerView.Adapter adapter;
            if (WhoSawMeActivity.this.getRecyclerView() == null || (adapter = WhoSawMeActivity.this.getRecyclerView().getAdapter()) == null) {
                return;
            }
            adapter.notifyItemChanged(i9, Integer.valueOf((int) R.id.icon_focus));
        }
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, WhoSawMeActivity.class));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: b0 */
    public void convertItem(WhoSawMeHolder whoSawMeHolder, int i9, WhoSawMeBean.ListBean.Bean bean) {
        whoSawMeHolder.g(i9, bean, (getRecyclerView() == null || getRecyclerView().getAdapter() == null) ? 0 : getRecyclerView().getAdapter().getItemCount());
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: d0 */
    public WhoSawMeHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        WhoSawMeHolder whoSawMeHolder = new WhoSawMeHolder(viewGroup, this);
        whoSawMeHolder.setOnItemDataChangedListener(new b());
        return whoSawMeHolder;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: e0 */
    public void onItemClick(WhoSawMeHolder whoSawMeHolder, int i9, WhoSawMeBean.ListBean.Bean bean) {
        UserHomePageAct.start(this, bean.getUserId());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.layout_base_recycler_view;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post("tokens/user/userLook/whoLookMe").v("limit", 20).v(CrashHianalyticsData.TIME, "").v("type", "").v("page", Integer.valueOf(i9)).M(new a(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 23) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 8192);
        }
        setTitle(R.string.vip_who_saw_me);
        View emptyView = getEmptyView();
        emptyView.setBackgroundColor(ContextCompat.getColor(this, R.color.white));
        emptyView.setPadding(0, 0, 0, ScreenTools.dip2px(150.0f));
        emptyView.findViewById(R.id.empty_text).setVisibility(8);
        EventBus.getDefault().register(this);
        if (getRecyclerView().getItemAnimator() instanceof SimpleItemAnimator) {
            ((SimpleItemAnimator) getRecyclerView().getItemAnimator()).setSupportsChangeAnimations(false);
        }
        this.recyclerContentArea.setBackgroundColor(-1);
        setFooterView(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFocusEvent(y7.e eVar) {
        if (TextUtils.isEmpty(eVar.a())) {
            return;
        }
        WhoSawMeZoomHelper whoSawMeZoomHelper = this.f23279a;
        if (whoSawMeZoomHelper != null) {
            whoSawMeZoomHelper.onFocusEvent(eVar);
        }
        for (int i9 = 0; i9 < getList().size(); i9++) {
            if (eVar.a().equalsIgnoreCase(getList().get(i9).getUserId())) {
                getList().get(i9).setIsAttention(eVar.c() ? 1 : 0);
                if (getRecyclerView() != null && getRecyclerView().getAdapter() != null) {
                    getRecyclerView().getAdapter().notifyItemChanged(i9, Integer.valueOf((int) R.id.icon_focus));
                }
            }
        }
    }
}
