package com.guochao.faceshow.aaspring.modulars.ugc.publish.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.MediaLocalData;
import com.guochao.faceshow.aaspring.beans.PublishUgcBean;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.beans.VisibleUserBean;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.live.fragment.HealthLiveTipsFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.PublishImageSelector;
import com.guochao.faceshow.aaspring.utils.ActivityTransitionAnimUtils;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UgcAndVideoSendUtils;
import com.guochao.faceshow.aaspring.utils.location.FcLocation;
import com.guochao.faceshow.aaspring.utils.location.LocationService;
import com.guochao.faceshow.aaspring.views.AtTopicUgcEditText;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.bean.UgcPoiBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.SensitiveWordFilter;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.guochao.faceshow.views.ObservableScrollView;
import com.guochao.faceshow.views.e;
import java.util.ArrayList;
import java.util.List;
import ka.a;
import org.greenrobot.eventbus.EventBus;
import y7.o;
/* loaded from: classes3.dex */
public class PublishUgcActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private PublishImageSelector f22923a;

    /* renamed from: b  reason: collision with root package name */
    private PublishUgcBean f22924b = new PublishUgcBean();

    /* renamed from: c  reason: collision with root package name */
    private int f22925c;

    /* renamed from: d  reason: collision with root package name */
    private UgcPoiBean.ListBean f22926d;

    /* renamed from: e  reason: collision with root package name */
    private int f22927e;
    @BindView
    AtTopicUgcEditText etUgcPublish;

    /* renamed from: f  reason: collision with root package name */
    private VisibleUserBean f22928f;
    @BindView
    LinearLayout firstTip;
    @BindView
    ImageView forbidCommentBtn;

    /* renamed from: g  reason: collision with root package name */
    private int f22929g;
    @BindView
    LinearLayout publishImageLay;
    @BindView
    ObservableScrollView scrollView;
    @BindView
    TextView tvViewRange;
    @BindView
    TextView tvVisibleKey;
    @BindView
    TextView tvWithLocation;
    @BindView
    ImageView viewRangeBtn;

    /* loaded from: classes3.dex */
    class a implements PublishImageSelector.c {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.ugc.publish.PublishImageSelector.c
        public void a() {
            PublishUgcActivity.this.n0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends v.d {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements UgcAndVideoSendUtils.UgcAndVideoSendCallBack {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.ugc.publish.activity.PublishUgcActivity$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class C0226a extends SimpleObserver<MediaLocalData> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ List f22933a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ List f22934b;

                C0226a(List list, List list2) {
                    this.f22933a = list;
                    this.f22934b = list2;
                }

                @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                public void onNext(MediaLocalData mediaLocalData) {
                    super.onNext((C0226a) mediaLocalData);
                    PublishUgcActivity.i0(PublishUgcActivity.this);
                    if (PublishUgcActivity.this.f22925c == this.f22933a.size()) {
                        PublishUgcActivity.this.f22924b.setImgList(this.f22934b);
                        PublishUgcActivity.this.f22924b.setUuid((int) (System.currentTimeMillis() / 1000));
                        ba.a.r().v(PublishUgcActivity.this.f22924b);
                        PublishUgcActivity publishUgcActivity = PublishUgcActivity.this;
                        publishUgcActivity.o0(publishUgcActivity.f22924b);
                    }
                }
            }

            /* renamed from: com.guochao.faceshow.aaspring.modulars.ugc.publish.activity.PublishUgcActivity$b$a$b  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class C0227b implements e.a {
                C0227b() {
                }

                @Override // com.guochao.faceshow.views.e.a
                public void onClick(Dialog dialog, boolean z10) {
                    PublishUgcActivity.this.finish();
                }

                @Override // com.guochao.faceshow.views.e.a
                public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                    com.guochao.faceshow.views.d.a(this, eVar);
                }
            }

            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.UgcAndVideoSendUtils.UgcAndVideoSendCallBack
            public void onFailure(String str) {
                PublishUgcActivity.this.alert("", str, new C0227b());
            }

            @Override // com.guochao.faceshow.aaspring.utils.UgcAndVideoSendUtils.UgcAndVideoSendCallBack
            public void onSuccessful() {
                PublishUgcActivity.this.showProgressDialog(null);
                PublishUgcActivity publishUgcActivity = PublishUgcActivity.this;
                SpUtils.setBool(publishUgcActivity, PublishUgcActivity.this.getCurrentUser().getUserId() + "Range", PublishUgcActivity.this.viewRangeBtn.isSelected());
                PublishUgcActivity publishUgcActivity2 = PublishUgcActivity.this;
                SpUtils.setBool(publishUgcActivity2, PublishUgcActivity.this.getCurrentUser().getUserId() + "Forbid", PublishUgcActivity.this.forbidCommentBtn.isSelected());
                List<MediaLocalData> i9 = PublishUgcActivity.this.f22923a.i();
                PublishUgcActivity.this.f22925c = 0;
                PublishUgcActivity.this.f22924b.setContent(PublishUgcActivity.this.etUgcPublish.getText().toString().trim());
                ArrayList arrayList = new ArrayList();
                if (i9 != null && !i9.isEmpty()) {
                    PublishUgcActivity.this.mTitleBarHelper.r(false);
                    for (int i10 = 0; i10 < i9.size(); i10++) {
                        if (i9.get(i10).copy(i9.get(i10), true) != null) {
                            arrayList.add(i9.get(i10));
                            i9.get(i10).copy(i9.get(i10), true).subscribe(new C0226a(i9, arrayList));
                        }
                    }
                    return;
                }
                PublishUgcActivity.this.f22924b.setUuid((int) (System.currentTimeMillis() / 1000));
                ba.a.r().v(PublishUgcActivity.this.f22924b);
                PublishUgcActivity publishUgcActivity3 = PublishUgcActivity.this;
                publishUgcActivity3.o0(publishUgcActivity3.f22924b);
            }
        }

        b() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            if (DisableDoubleClickUtils.canClick(view) && PublishUgcActivity.this.n0()) {
                if (!TextUtils.isEmpty(SensitiveWordFilter.getInstance().checkKeyword(PublishUgcActivity.this.etUgcPublish.getText().toString().trim()))) {
                    ToastUtils.showToast(PublishUgcActivity.this.getActivity(), PublishUgcActivity.this.getString(R.string.minganci_ugc));
                } else {
                    UgcAndVideoSendUtils.getUgcAndVideoPermissions(PublishUgcActivity.this.getActivity(), 0, new a());
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends AtTopicUgcEditText.b {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.views.AtTopicUgcEditText.b
        public void a() {
            PublishUgcActivity.this.n0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements ObservableScrollView.a {
        d() {
        }

        @Override // com.guochao.faceshow.views.ObservableScrollView.a
        public void a(ObservableScrollView observableScrollView, int i9, int i10, int i11, int i12) {
            PublishUgcActivity publishUgcActivity = PublishUgcActivity.this;
            SoftKeyBoardUtils.closeSoftKeyBoard(publishUgcActivity, publishUgcActivity.etUgcPublish);
        }
    }

    /* loaded from: classes3.dex */
    class e extends SimpleObserver<te.a> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends a.d {
            a() {
            }

            @Override // ka.a.d, ka.a.e
            public void e(te.a aVar) {
                super.e(aVar);
                SearchUgcLocationActivity.v0(PublishUgcActivity.this.getActivity(), PublishUgcActivity.this.f22926d, 123);
            }
        }

        e() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            super.onNext((e) aVar);
            if (aVar.f58133b) {
                if (ContextCompat.checkSelfPermission(PublishUgcActivity.this.getActivity(), "android.permission.ACCESS_FINE_LOCATION") == 0 && ContextCompat.checkSelfPermission(PublishUgcActivity.this.getActivity(), "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                    SearchUgcLocationActivity.v0(PublishUgcActivity.this.getActivity(), PublishUgcActivity.this.f22926d, 123);
                }
            } else if (aVar.f58134c) {
                LocationService.showFocusDialog(PublishUgcActivity.this.getActivity(), new a());
            }
        }
    }

    public PublishUgcActivity() {
        this.f22927e = i.u().s().getIsFringManager() == 1 ? 2000 : 1000;
    }

    static /* synthetic */ int i0(PublishUgcActivity publishUgcActivity) {
        int i9 = publishUgcActivity.f22925c;
        publishUgcActivity.f22925c = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n0() {
        PublishImageSelector publishImageSelector;
        boolean z10 = this.etUgcPublish.getText().toString().trim().length() <= this.f22927e ? ((this.etUgcPublish.getText() == null || TextUtils.isEmpty(this.etUgcPublish.getText().toString().trim())) && ((publishImageSelector = this.f22923a) == null || publishImageSelector.i().isEmpty())) ? false : true : false;
        if (z10) {
            setEndIcon(R.mipmap.ic_ugc_publish);
        } else {
            setEndIcon(R.mipmap.ic_ugc_publish_disable);
        }
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.r(z10);
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(PublishUgcBean publishUgcBean) {
        dismissProgressDialog();
        DynamicBean dynamic = PublishUgcBean.toDynamic(publishUgcBean);
        o oVar = new o();
        oVar.b(dynamic);
        EventBus.getDefault().post(oVar);
        startActivity(new Intent(getActivity(), MainActivity.class).addFlags(608174080));
        finish();
    }

    private void p0() {
        this.tvViewRange.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_2));
        this.f22924b.setInvisibleList(null);
        this.tvVisibleKey.setText(R.string.who_can_look);
        int i9 = this.f22929g;
        if (i9 == 0) {
            this.tvViewRange.setText(R.string.ugc_fans_only);
            this.f22924b.setShield(5);
        } else if (i9 == 1) {
            this.tvViewRange.setText(R.string.ugc_friend_only);
            this.f22924b.setShield(3);
        } else {
            if (i9 == 2) {
                this.tvViewRange.setText(R.string.open_video);
                this.f22924b.setShield(0);
            } else if (i9 == 3) {
                this.tvViewRange.setText(R.string.private_video);
                this.f22924b.setShield(6);
            } else if (i9 == 4) {
                this.tvViewRange.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_app_tips));
                this.tvVisibleKey.setText(R.string.not_allow);
                VisibleUserBean visibleUserBean = this.f22928f;
                if (visibleUserBean != null && !visibleUserBean.isAllSelected() && this.f22928f.getSelectInvisibleUsers() != null && !this.f22928f.getSelectInvisibleUsers().isEmpty()) {
                    List<IM_User> selectInvisibleUsers = this.f22928f.getSelectInvisibleUsers();
                    if (selectInvisibleUsers == null) {
                        VisibleUserBean visibleUserBean2 = this.f22928f;
                        ArrayList arrayList = new ArrayList();
                        visibleUserBean2.setSelectInvisibleUsers(arrayList);
                        selectInvisibleUsers = arrayList;
                    }
                    if (selectInvisibleUsers.size() > 0) {
                        this.tvViewRange.setText(this.f22928f.getSelectInvisibleName());
                        ArrayList arrayList2 = new ArrayList();
                        for (int i10 = 0; i10 < selectInvisibleUsers.size(); i10++) {
                            arrayList2.add(String.valueOf(selectInvisibleUsers.get(i10).getCurrentUserId()));
                        }
                        this.f22924b.setInvisibleList(arrayList2);
                    }
                    this.f22924b.setShield(7);
                    return;
                }
                this.tvViewRange.setText(R.string.ugc_no_visible_all_fans);
                this.f22924b.setShield(8);
            }
        }
    }

    public static void q0(Context context, UgcTopicBean ugcTopicBean) {
        Intent intent = new Intent(context, PublishUgcActivity.class);
        intent.putExtra("data", ugcTopicBean);
        intent.addFlags(536870912);
        ActivityTransitionAnimUtils.startActivityByDownToUp(context, intent);
    }

    public static void start(Context context) {
        q0(context, null);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.do_nothing, R.anim.exit_down);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_publish_ugc;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.etUgcPublish.setActivity(this);
        setTitle(getString(R.string.self_moment_empty_text));
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightIconClickListener(new b());
        }
        UgcTopicBean ugcTopicBean = (UgcTopicBean) getIntent().getParcelableExtra("data");
        if (ugcTopicBean != null) {
            this.etUgcPublish.setText(String.format("#%s ", StringUtils.addInvisibleCharBeforeWhiteSpace(ugcTopicBean.getTopicName())));
        }
        this.etUgcPublish.setFilters(new InputFilter[]{new InputFilter.LengthFilter(this.f22927e)});
        if (SpUtils.getBool(this, "PublishViewRangeTip", true)) {
            this.firstTip.setVisibility(0);
        } else {
            this.firstTip.setVisibility(8);
        }
        this.etUgcPublish.setOnTextChangedListener(new c());
        this.etUgcPublish.requestFocus();
        boolean bool = SpUtils.getBool(this, getCurrentUser().getUserId() + "Range", false);
        boolean bool2 = SpUtils.getBool(this, getCurrentUser().getUserId() + "Forbid", false);
        this.f22928f = (VisibleUserBean) com.guochao.faceshow.aaspring.manager.b.a("dynamic", VisibleUserBean.class.getSimpleName(), VisibleUserBean.class);
        Integer num = (Integer) com.guochao.faceshow.aaspring.manager.b.a("dynamic", "VisiblePositionV2", Integer.class);
        this.f22929g = num == null ? 2 : num.intValue();
        this.viewRangeBtn.setSelected(bool);
        this.forbidCommentBtn.setSelected(bool2);
        p0();
        this.f22924b.setIsNearbySeat(this.viewRangeBtn.isSelected() ? 1 : 0);
        this.f22924b.setIsComment(this.forbidCommentBtn.isSelected() ? 1 : 0);
        this.scrollView.setScrollViewListener(new d());
        n0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        PublishImageSelector publishImageSelector = this.f22923a;
        if (publishImageSelector != null) {
            publishImageSelector.k(i9, i10, intent);
        }
        AtTopicUgcEditText atTopicUgcEditText = this.etUgcPublish;
        if (atTopicUgcEditText != null) {
            atTopicUgcEditText.u(i9, i10, intent);
        }
        if (i9 == 122 && i10 == -1 && intent != null) {
            this.f22928f = (VisibleUserBean) MemoryCache.getInstance().remove(Contants.PARAMS_KEY1);
            this.f22929g = intent.getIntExtra(Contants.PARAMS_KEY2, 0);
            com.guochao.faceshow.aaspring.manager.b.f("dynamic", VisibleUserBean.class.getSimpleName(), this.f22928f);
            com.guochao.faceshow.aaspring.manager.b.f("dynamic", "VisiblePositionV2", Integer.valueOf(this.f22929g));
            p0();
        }
        if (i9 == 123 && i10 == -1 && intent != null) {
            UgcPoiBean.ListBean listBean = (UgcPoiBean.ListBean) MemoryCache.getInstance().remove(Contants.PARAMS_KEY1);
            this.f22926d = listBean;
            if (listBean != null && PushUtils.CHAT_PUSH_TYPE.equals(listBean.getVicinity())) {
                this.tvWithLocation.setText(getString(R.string.ugc_no_location));
                this.f22924b.setAddress("");
                this.f22924b.setIsShowSeat(1);
                this.f22924b.setIsPoi(0);
            } else {
                UgcPoiBean.ListBean listBean2 = this.f22926d;
                if (listBean2 != null) {
                    this.tvWithLocation.setText(listBean2.getName());
                    this.f22924b.setLatitude(this.f22926d.getLat());
                    this.f22924b.setLongitude(this.f22926d.getLng());
                    this.f22924b.setAddress(this.f22926d.getName());
                    this.f22924b.setIsShowSeat(0);
                    this.f22924b.setIsPoi(1);
                }
            }
            UgcPoiBean.ListBean listBean3 = this.f22926d;
            if (listBean3 != null && !PushUtils.CHAT_PUSH_TYPE.equals(listBean3.getVicinity())) {
                MemoryCache.getInstance().put(FcLocation.create(Double.parseDouble(this.f22926d.getLat()), Double.parseDouble(this.f22926d.getLng())));
            }
        }
        n0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        PublishImageSelector publishImageSelector = new PublishImageSelector(this.publishImageLay);
        this.f22923a = publishImageSelector;
        publishImageSelector.j(bundle);
        this.f22923a.n(new a());
        if (HealthLiveTipsFragment.checkShouldShow(2)) {
            HealthLiveTipsFragment.getInstance(2).show(getSupportFragmentManager(), "ugc");
            this.mTitleBarHelper.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PublishImageSelector publishImageSelector = this.f22923a;
        if (publishImageSelector != null) {
            publishImageSelector.l(bundle);
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.add_location_lay /* 2131361924 */:
                new com.tbruyelle.rxpermissions2.a(this).p("android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION").subscribe(new e());
                return;
            case R.id.add_topic_lay /* 2131361926 */:
                this.etUgcPublish.v();
                return;
            case R.id.forbid_comment_btn /* 2131362872 */:
                ImageView imageView = this.forbidCommentBtn;
                imageView.setSelected(!imageView.isSelected());
                this.f22924b.setIsComment(this.forbidCommentBtn.isSelected() ? 1 : 0);
                return;
            case R.id.limit_look_at /* 2131363416 */:
                this.firstTip.setVisibility(8);
                SpUtils.setBool(this, "PublishViewRangeTip", false);
                VisibleUserActivity.n0(this, this.f22928f, this.f22929g, 122);
                return;
            case R.id.view_range_btn /* 2131365382 */:
                ImageView imageView2 = this.viewRangeBtn;
                imageView2.setSelected(!imageView2.isSelected());
                this.f22924b.setIsNearbySeat(this.viewRangeBtn.isSelected() ? 1 : 0);
                return;
            default:
                return;
        }
    }
}
