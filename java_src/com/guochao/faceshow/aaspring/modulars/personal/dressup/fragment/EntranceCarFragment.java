package com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment;

import android.content.Intent;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import butterknife.OnClick;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.DressUpData;
import com.guochao.faceshow.aaspring.beans.PageBeanData;
import com.guochao.faceshow.aaspring.beans.UserCenterBean;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.adapter.BackPackAdapter;
import com.guochao.faceshow.aaspring.modulars.vip.activity.BuyVipGuideActivity;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.VipLevelDrawableUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.utils.TranslateUtils;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes3.dex */
public class EntranceCarFragment extends BaseRecyclerViewFragment<DressUpData, BaseViewHolder> implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private DressUpData f21503a;

    /* renamed from: b  reason: collision with root package name */
    private long f21504b;

    /* renamed from: c  reason: collision with root package name */
    private View f21505c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f21506d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f21507e;

    /* renamed from: f  reason: collision with root package name */
    public TextView f21508f;

    /* renamed from: g  reason: collision with root package name */
    DressUpData f21509g = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements GCRequestJava.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21510a;

        a(int i9) {
            this.f21510a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            if (this.f21510a == 1) {
                EntranceCarFragment.this.dismissProgressDialog();
                EntranceCarFragment.this.showEmptyView();
            }
            EntranceCarFragment.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements GCRequestJava.d<PageBeanData.PageBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21512a;

        b(int i9) {
            this.f21512a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<PageBeanData.PageBean> response) {
            PageBeanData.PageBean data = response.getData();
            if (this.f21512a == 1) {
                EntranceCarFragment.this.dismissProgressDialog();
            }
            if (data != null && data.getList() != null && data.getList().size() != 0) {
                for (DressUpData dressUpData : data.getList()) {
                    if (dressUpData.getIsUse() == 1) {
                        EntranceCarFragment.this.f21503a.setCheck(false);
                        dressUpData.setCheck(true);
                    }
                }
                EntranceCarFragment.this.f21504b = i.u().s().getServerTimeDiff() + System.currentTimeMillis();
                if (this.f21512a == 1) {
                    data.getList().add(0, EntranceCarFragment.this.f21503a);
                    EntranceCarFragment.this.setDatas(data.getList());
                } else {
                    EntranceCarFragment.this.addDatas(data.getList());
                }
                EntranceCarFragment.this.notifyDataLoaded(data.getTotalPage() > EntranceCarFragment.this.getCurrentPage());
                return;
            }
            if (this.f21512a == 1) {
                EntranceCarFragment.this.clearAll();
                EntranceCarFragment.this.showEmptyView();
            }
            EntranceCarFragment.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements r9.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DressUpData f21514a;

        c(DressUpData dressUpData) {
            this.f21514a = dressUpData;
        }

        @Override // r9.a
        public void a() {
            com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.remove(this.f21514a.getDressUpId());
            if (EntranceCarFragment.this.getRecyclerView().getAdapter() != null) {
                EntranceCarFragment.this.getRecyclerView().getAdapter().notifyDataSetChanged();
            }
        }

        @Override // r9.a
        public void onErrorCallback() {
            com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.remove(this.f21514a.getDressUpId());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            EntranceCarFragment.this.a2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<UserCenterBean> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UserCenterBean userCenterBean, @NonNull FaceCastBaseResponse<UserCenterBean> faceCastBaseResponse) {
            if (userCenterBean != null) {
                EntranceCarFragment.this.getCurrentUser().setUserVipMsg(userCenterBean.getUserVipMsg());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UserCenterBean> aVar) {
        }
    }

    private void T1(DressUpData dressUpData) {
        post("tokens/user/info/cancelDressUp").B("types", 2).L();
    }

    private void V1(DressUpData dressUpData) {
        String dressUpId;
        String str = "";
        if (this.f21507e) {
            if (TextUtils.isEmpty(dressUpData.getDressUpId())) {
                dressUpId = "";
            } else {
                dressUpId = Language.ARABIC + dressUpData.getDressUpId();
            }
            if (!TextUtils.isEmpty(dressUpData.getArFileUrlV2())) {
                str = dressUpData.getArFileUrlV2();
            }
        } else {
            dressUpId = TextUtils.isEmpty(dressUpData.getDressUpId()) ? "" : dressUpData.getDressUpId();
            if (!TextUtils.isEmpty(dressUpData.getFileUrlV2())) {
                str = dressUpData.getFileUrlV2();
            }
        }
        if (TranslateUtils.getTranslateFile(FilePathProvider.getNXShowPath("Car"), dressUpId + "V2.svga") || com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.get(dressUpData.getDressUpId()) != null) {
            return;
        }
        com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.a(str, FilePathProvider.getNXShowPath("Car"), dressUpId, true, new c(dressUpData));
        com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.put(dressUpData.getDressUpId(), dressUpData.getFileUrlV2());
    }

    public static EntranceCarFragment W1() {
        return new EntranceCarFragment();
    }

    private void Z1(DressUpData dressUpData) {
        PostRequest post = post(" tokens/user/info/setDressUp");
        int i9 = dressUpData.f16306id;
        post.D("dressUpId", i9 <= 0 ? dressUpData.getDressUpId() : String.valueOf(i9)).B("types", 2).M(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2() {
        post(Contants.getInfoDetailV2).M(new e());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: U1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, DressUpData dressUpData) {
        if (i9 == getList().size() - 1) {
            ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).bottomMargin = DensityUtil.dp2px(169.0f);
        } else if (getList().size() % 2 == 0 && i9 == getList().size() - 2) {
            ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).bottomMargin = DensityUtil.dp2px(169.0f);
        } else {
            ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).bottomMargin = DensityUtil.dp2px(4.0f);
        }
        if (dressUpData.getItemType() != 1) {
            TextView textView = (TextView) baseViewHolder.getView(R.id.tv_entrance_car_name);
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.mvpIV);
            BackPackAdapter.setImageResourceDressUp((ImageView) baseViewHolder.getView(R.id.iv_entrance_car), dressUpData);
            String name = dressUpData.getName();
            if (dressUpData.getBagAttribute() != null && dressUpData.getBagAttribute().intValue() == 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(name);
                sb2.append(getString(R.string.signin_task_zuojia_chips));
                sb2.append(x.f19108w);
                sb2.append(dressUpData.getSpNum() <= 0 ? 1 : dressUpData.getSpNum());
                name = sb2.toString();
            }
            if (dressUpData.getTypes() != 1 && dressUpData.getTypes() != 2) {
                imageView.setVisibility(8);
                SpannableString spannableString = new SpannableString(name);
                ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(getResources().getColor(R.color.color_ugc_text_level_1));
                ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(getResources().getColor(R.color.gift_chips_number));
                if (dressUpData.getBagAttribute() != null && dressUpData.getBagAttribute().intValue() == 0) {
                    spannableString.setSpan(foregroundColorSpan, 0, name.indexOf(x.f19108w), 33);
                    spannableString.setSpan(foregroundColorSpan2, name.indexOf(x.f19108w), name.length(), 33);
                } else {
                    spannableString.setSpan(foregroundColorSpan, 0, name.length(), 33);
                }
                textView.setText(spannableString);
            } else {
                SpannableString spannableString2 = new SpannableString(name + "   ");
                ForegroundColorSpan foregroundColorSpan3 = new ForegroundColorSpan(getResources().getColor(R.color.color_ugc_text_level_1));
                ForegroundColorSpan foregroundColorSpan4 = new ForegroundColorSpan(getResources().getColor(R.color.gift_chips_number));
                if (dressUpData.getBagAttribute() != null && dressUpData.getBagAttribute().intValue() == 0) {
                    spannableString2.setSpan(foregroundColorSpan3, 0, name.indexOf(x.f19108w), 33);
                    spannableString2.setSpan(foregroundColorSpan4, name.indexOf(x.f19108w), name.length(), 33);
                } else {
                    spannableString2.setSpan(foregroundColorSpan3, 0, name.length(), 33);
                }
                imageView.setVisibility(0);
                imageView.setImageResource(VipLevelDrawableUtils.getVipImgByLevel(dressUpData.getTypes()));
                textView.setText(spannableString2);
            }
            if (dressUpData.beFrom == DressUpData.BE_FROM_MVP) {
                imageView.setVisibility(0);
                com.bumptech.glide.c.v(imageView).r(dressUpData.mvpUrl).m().Q0(imageView);
            }
            TextView textView2 = (TextView) baseViewHolder.getView(R.id.tv_time_limit);
            if (dressUpData.beFrom == DressUpData.BE_FROM_MVP) {
                textView2.setText(TimeUtil.getDressUpTimeMVP(getActivity(), dressUpData.getCanItBeUsed() == 1));
            } else {
                textView2.setText(TimeUtil.getDressUpTime(getActivity(), dressUpData.getExpireTime(), dressUpData.getTypes(), this.f21504b));
            }
            if (Objects.equals(getString(R.string.lost_effectiveness), textView2.getText())) {
                baseViewHolder.getView(R.id.mask).setVisibility(0);
            } else {
                baseViewHolder.getView(R.id.mask).setVisibility(8);
            }
            if (dressUpData.getBagAttribute() != null && dressUpData.getBagAttribute().intValue() == 0) {
                textView2.setText(getString(R.string.signin_task_car_chips_tip));
            }
        } else {
            ((TextView) baseViewHolder.getView(R.id.tv_title_name)).setText(dressUpData.getTitleName());
            ((ImageView) baseViewHolder.getView(R.id.img_nouse)).setImageResource(R.mipmap.ic_nocar);
        }
        ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.iv_is_check);
        if (dressUpData.isCheck()) {
            imageView2.setVisibility(0);
        } else {
            imageView2.setVisibility(4);
        }
        baseViewHolder.itemView.setSelected(dressUpData.isSelected());
    }

    public void X1() {
        if (this.f21509g.isCheck()) {
            return;
        }
        int indexOf = getList().indexOf(this.f21509g);
        if (this.f21509g.getCanItBeUsed() == 1) {
            if (indexOf == 0) {
                for (DressUpData dressUpData : getList()) {
                    dressUpData.setCheck(false);
                }
                this.f21509g.setCheck(true);
                T1(this.f21509g);
                if (getRecyclerView().getAdapter() != null) {
                    getRecyclerView().getAdapter().notifyDataSetChanged();
                }
            } else {
                DressUpData dressUpData2 = this.f21509g;
                if (dressUpData2.beFrom == DressUpData.BE_FROM_MVP && dressUpData2.received != 1) {
                    MVPActivity.Companion.start(getActivity(), MVPActivity.TOAST_TYPE_GET_CAR, "4");
                    return;
                }
                for (DressUpData dressUpData3 : getList()) {
                    dressUpData3.setCheck(false);
                }
                if (this.f21509g.beFrom == DressUpData.BE_FROM_MVP) {
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_use_click, "0");
                }
                this.f21509g.setCheck(true);
                if (!TextUtils.isEmpty(this.f21509g.getDressUpId())) {
                    getCurrentUser().getUserVipMsg().setDressCarId(this.f21509g.getDressUpId());
                }
                if (!TextUtils.isEmpty(this.f21509g.getArFileUrl())) {
                    getCurrentUser().getUserVipMsg().setArDressCarSource(this.f21509g.getArFileUrl());
                }
                if (!TextUtils.isEmpty(this.f21509g.getFileUrl())) {
                    getCurrentUser().getUserVipMsg().setDressCarSource(this.f21509g.getFileUrl());
                }
                if (!TextUtils.isEmpty(this.f21509g.getArFileUrlV2())) {
                    getCurrentUser().getUserVipMsg().setArDressCarSourceV2(this.f21509g.getArFileUrlV2());
                }
                if (!TextUtils.isEmpty(this.f21509g.getFileUrlV2())) {
                    getCurrentUser().getUserVipMsg().setDressCarSourceV2(this.f21509g.getFileUrlV2());
                }
                Z1(this.f21509g);
                V1(this.f21509g);
                ToastUtils.showToast(getActivity(), (int) R.string.set_success);
                if (getRecyclerView().getAdapter() != null) {
                    getRecyclerView().getAdapter().notifyDataSetChanged();
                }
            }
            this.f21508f.setEnabled(false);
            this.f21508f.setText(R.string.mvp_gift_useed);
        } else if (this.f21509g.getTypes() == 1) {
            if (BaseConfig.isChinese()) {
                com.guochao.faceshow.aaspring.modulars.personal.b.g(0, 0, getParentFragmentManager());
            } else {
                startActivity(new Intent(getActivity(), BuyVipGuideActivity.class));
            }
        } else if (this.f21509g.getTypes() == 2) {
            if (BaseConfig.isChinese()) {
                com.guochao.faceshow.aaspring.modulars.personal.b.g(1, 20, getParentFragmentManager());
            } else {
                startActivity(new Intent(getActivity(), BuyVipGuideActivity.class).putExtra("currentItem", 1));
            }
        } else if (this.f21509g.beFrom == DressUpData.BE_FROM_MVP) {
            MVPActivity.Companion.start(getActivity(), MVPActivity.TOAST_TYPE_CHARGE, "4");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: Y1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, DressUpData dressUpData) {
        if (baseViewHolder == null || dressUpData == null) {
            return;
        }
        this.f21509g = dressUpData;
        for (DressUpData dressUpData2 : getList()) {
            dressUpData2.setSelected(false);
        }
        dressUpData.setSelected(true);
        Pair dressUpTimePair = TimeUtil.getDressUpTimePair(getActivity(), dressUpData, this.f21504b);
        getRecyclerView().getAdapter().notifyDataSetChanged();
        this.f21508f.setEnabled(((Boolean) dressUpTimePair.first).booleanValue());
        this.f21508f.setText((CharSequence) dressUpTimePair.second);
        this.f21508f.setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().e(true).b(true).d(false).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public int getItemViewType(int i9) {
        return getList().get(i9).getItemType() == 1 ? BaseConfig.DRESS_UP_TITLE : BaseConfig.DRESS_UP_ITEM_CONTENT;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_dress_up;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        this.f21508f = (TextView) view.findViewById(R.id.confirmUse);
        this.f21507e = Language.ARABIC.equalsIgnoreCase(q7.a.e().c());
        this.f21505c = view.findViewById(R.id.empty_view);
        TextView textView = (TextView) view.findViewById(R.id.empty_text);
        this.f21506d = textView;
        textView.setText(getString(R.string.vip_no_entrance_car));
        this.f21506d.setTextSize(14.0f);
        ((ViewGroup.MarginLayoutParams) this.f21506d.getLayoutParams()).topMargin = DensityUtil.dp2px(15.0f);
        ((ViewGroup.MarginLayoutParams) this.f21505c.getLayoutParams()).bottomMargin = DensityUtil.dp2px(150.0f);
        setFooterView(8);
        com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a = new HashMap();
        DressUpData dressUpData = new DressUpData();
        this.f21503a = dressUpData;
        dressUpData.setCheck(true);
        this.f21503a.setItemType(1);
        this.f21503a.setCanItBeUsed(1);
        this.f21503a.setTitleName(getString(R.string.vip_nonuse_admission_car));
        getRecyclerView().setLayoutManager(new GridLayoutManager(getActivity(), 2));
        getRecyclerView().setBackgroundColor(ContextCompat.getColor(view.getContext(), R.color.color_ugc_divider));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        if (i9 == 1) {
            showProgressDialog(null);
        }
        new GCRequestJava("api/token/user/current/user/dress/live/effect/info").putBody("types", 1).putBody("page", Integer.valueOf(i9)).putBody("limit", 20).j(new b(i9)).d(new a(i9)).request();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void notifyDataLoaded(boolean z10) {
        super.notifyDataLoaded(z10);
        getRefreshableLayout().L(z10);
    }

    @Override // android.view.View.OnClickListener
    @OnClick
    public void onClick(View view) {
        if (view.getId() != R.id.confirmUse) {
            return;
        }
        X1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getList().size() > 1) {
            loadData(1);
            this.f21508f.setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        if (i9 == 1088) {
            return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_dress_up_title, viewGroup, false));
        }
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_entrance_car, viewGroup, false));
    }
}
