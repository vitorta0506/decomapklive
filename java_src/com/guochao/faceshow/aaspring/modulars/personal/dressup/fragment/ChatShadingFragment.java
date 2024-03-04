package com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment;

import android.content.Intent;
import android.text.SpannableString;
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
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.VipLevelDrawableUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.TimeUtil;
import java.util.Objects;
/* loaded from: classes3.dex */
public class ChatShadingFragment extends BaseRecyclerViewFragment<DressUpData, BaseViewHolder> implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private DressUpData f21487a;

    /* renamed from: b  reason: collision with root package name */
    private long f21488b;

    /* renamed from: c  reason: collision with root package name */
    private View f21489c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f21490d;

    /* renamed from: e  reason: collision with root package name */
    public TextView f21491e;

    /* renamed from: f  reason: collision with root package name */
    private DressUpData f21492f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements GCRequestJava.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21493a;

        a(int i9) {
            this.f21493a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            if (this.f21493a == 1) {
                ChatShadingFragment.this.showEmptyView();
                ChatShadingFragment.this.dismissProgressDialog();
            }
            ChatShadingFragment.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements GCRequestJava.d<PageBeanData.PageBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21495a;

        b(int i9) {
            this.f21495a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<PageBeanData.PageBean> response) {
            PageBeanData.PageBean data = response.getData();
            if (this.f21495a == 1) {
                ChatShadingFragment.this.dismissProgressDialog();
            }
            if (data != null && data.getList() != null && data.getList().size() != 0) {
                for (DressUpData dressUpData : data.getList()) {
                    if (dressUpData.getIsUse() == 1) {
                        ChatShadingFragment.this.f21487a.setCheck(false);
                        dressUpData.setCheck(true);
                    }
                }
                ChatShadingFragment.this.f21488b = i.u().s().getServerTimeDiff() + System.currentTimeMillis();
                if (this.f21495a == 1) {
                    data.getList().add(0, ChatShadingFragment.this.f21487a);
                    ChatShadingFragment.this.setDatas(data.getList());
                } else {
                    ChatShadingFragment.this.addDatas(data.getList());
                }
                ChatShadingFragment.this.notifyDataLoaded(data.getTotalPage() > ChatShadingFragment.this.getCurrentPage());
                return;
            }
            if (this.f21495a == 1) {
                ChatShadingFragment.this.clearAll();
                ChatShadingFragment.this.showEmptyView();
            }
            ChatShadingFragment.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ChatShadingFragment.this.Z1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<UserCenterBean> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UserCenterBean userCenterBean, @NonNull FaceCastBaseResponse<UserCenterBean> faceCastBaseResponse) {
            if (userCenterBean != null) {
                ChatShadingFragment.this.getCurrentUser().setUserVipMsg(userCenterBean.getUserVipMsg());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UserCenterBean> aVar) {
        }
    }

    private void T1(DressUpData dressUpData) {
        post("tokens/user/info/cancelDressUp").B("types", 3).L();
    }

    public static ChatShadingFragment V1() {
        return new ChatShadingFragment();
    }

    private void Y1(DressUpData dressUpData) {
        PostRequest post = post(" tokens/user/info/setDressUp");
        int i9 = dressUpData.f16306id;
        post.D("dressUpId", i9 <= 0 ? dressUpData.getDressUpId() : String.valueOf(i9)).B("types", 3).M(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1() {
        post(Contants.getInfoDetailV2).M(new d());
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
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_chat_shading);
            TextView textView = (TextView) baseViewHolder.getView(R.id.tv_chat_shading_name);
            TextView textView2 = (TextView) baseViewHolder.getView(R.id.tv_time_limit);
            ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.mvpIV);
            if (getActivity() != null) {
                BackPackAdapter.setImageResourceDressUp(imageView, dressUpData);
            }
            String name = dressUpData.getName();
            if (dressUpData.getBagAttribute() != null && dressUpData.getBagAttribute().intValue() == 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(name);
                sb2.append(getString(R.string.signin_task_gongliao_chips));
                sb2.append(x.f19108w);
                sb2.append(dressUpData.getSpNum() <= 0 ? 1 : dressUpData.getSpNum());
                name = sb2.toString();
            }
            if (dressUpData.getTypes() != 1 && dressUpData.getTypes() != 2) {
                imageView2.setVisibility(8);
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
                imageView2.setVisibility(0);
                imageView2.setImageResource(VipLevelDrawableUtils.getVipImgByLevel(dressUpData.getTypes()));
                textView.setText(spannableString2);
            }
            if (dressUpData.beFrom == DressUpData.BE_FROM_MVP) {
                imageView2.setVisibility(0);
                com.bumptech.glide.c.v(imageView2).r(dressUpData.mvpUrl).m().Q0(imageView2);
            }
            if (dressUpData.beFrom == DressUpData.BE_FROM_MVP) {
                textView2.setText(TimeUtil.getDressUpTimeMVP(getActivity(), dressUpData.getCanItBeUsed() == 1));
            } else {
                textView2.setText(TimeUtil.getDressUpTime(getActivity(), dressUpData.getExpireTime(), dressUpData.getTypes(), this.f21488b));
            }
            if (Objects.equals(getString(R.string.lost_effectiveness), textView2.getText())) {
                baseViewHolder.getView(R.id.mask).setVisibility(0);
            } else {
                baseViewHolder.getView(R.id.mask).setVisibility(8);
            }
            if (dressUpData.getBagAttribute() != null && dressUpData.getBagAttribute().intValue() == 0) {
                textView2.setText(getString(R.string.signin_task_chat_chips_tip));
            }
        } else {
            ((TextView) baseViewHolder.getView(R.id.tv_title_name)).setText(dressUpData.getTitleName());
            ((ImageView) baseViewHolder.getView(R.id.img_nouse)).setImageResource(R.mipmap.ic_nochatbg);
        }
        ImageView imageView3 = (ImageView) baseViewHolder.getView(R.id.iv_is_check);
        if (dressUpData.isCheck()) {
            imageView3.setVisibility(0);
        } else {
            imageView3.setVisibility(4);
        }
        baseViewHolder.itemView.setSelected(dressUpData.isSelected());
    }

    public void W1() {
        if (this.f21492f.isCheck()) {
            return;
        }
        int indexOf = getList().indexOf(this.f21492f);
        if (this.f21492f.getCanItBeUsed() == 1) {
            if (indexOf == 0) {
                for (DressUpData dressUpData : getList()) {
                    dressUpData.setCheck(false);
                }
                this.f21492f.setCheck(true);
                T1(this.f21492f);
                if (getRecyclerView().getAdapter() != null) {
                    getRecyclerView().getAdapter().notifyDataSetChanged();
                }
            } else {
                DressUpData dressUpData2 = this.f21492f;
                if (dressUpData2.beFrom == DressUpData.BE_FROM_MVP && dressUpData2.received != 1) {
                    MVPActivity.Companion.start(getActivity(), MVPActivity.TOAST_TYPE_GET_CHAT, "5");
                    return;
                }
                for (DressUpData dressUpData3 : getList()) {
                    dressUpData3.setCheck(false);
                }
                this.f21492f.setCheck(true);
                if (this.f21492f.beFrom == DressUpData.BE_FROM_MVP) {
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_use_click, "1");
                }
                Y1(this.f21492f);
                ToastUtils.showToast(getActivity(), (int) R.string.set_success);
                if (getRecyclerView().getAdapter() != null) {
                    getRecyclerView().getAdapter().notifyDataSetChanged();
                }
            }
            this.f21491e.setEnabled(false);
            this.f21491e.setText(R.string.mvp_gift_useed);
        } else if (this.f21492f.getTypes() == 1) {
            if (BaseConfig.isChinese()) {
                com.guochao.faceshow.aaspring.modulars.personal.b.g(0, 0, getParentFragmentManager());
            } else {
                startActivity(new Intent(getActivity(), BuyVipGuideActivity.class));
            }
        } else if (this.f21492f.getTypes() == 2) {
            if (BaseConfig.isChinese()) {
                com.guochao.faceshow.aaspring.modulars.personal.b.g(1, 21, getParentFragmentManager());
            } else {
                startActivity(new Intent(getActivity(), BuyVipGuideActivity.class).putExtra("currentItem", 1));
            }
        } else if (this.f21492f.beFrom == DressUpData.BE_FROM_MVP) {
            MVPActivity.Companion.start(getActivity(), MVPActivity.TOAST_TYPE_CHARGE, "5");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: X1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, DressUpData dressUpData) {
        if (baseViewHolder == null || dressUpData == null) {
            return;
        }
        this.f21492f = dressUpData;
        for (DressUpData dressUpData2 : getList()) {
            dressUpData2.setSelected(false);
        }
        dressUpData.setSelected(true);
        Pair dressUpTimePair = TimeUtil.getDressUpTimePair(getActivity(), dressUpData, this.f21488b);
        getRecyclerView().getAdapter().notifyDataSetChanged();
        this.f21491e.setEnabled(((Boolean) dressUpTimePair.first).booleanValue());
        this.f21491e.setText((CharSequence) dressUpTimePair.second);
        this.f21491e.setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public e getFragmentConfig() {
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
        this.f21491e = (TextView) view.findViewById(R.id.confirmUse);
        this.f21489c = view.findViewById(R.id.empty_view);
        TextView textView = (TextView) view.findViewById(R.id.empty_text);
        this.f21490d = textView;
        textView.setText(getString(R.string.vip_no_chat_shading));
        this.f21490d.setTextSize(14.0f);
        ((ViewGroup.MarginLayoutParams) this.f21490d.getLayoutParams()).topMargin = DensityUtil.dp2px(15.0f);
        ((ViewGroup.MarginLayoutParams) this.f21489c.getLayoutParams()).bottomMargin = DensityUtil.dp2px(150.0f);
        setFooterView(8);
        DressUpData dressUpData = new DressUpData();
        this.f21487a = dressUpData;
        dressUpData.setCheck(true);
        this.f21487a.setItemType(1);
        this.f21487a.setTitleName(getString(R.string.vip_nonuse_chat_shading));
        this.f21487a.setCanItBeUsed(1);
        getRecyclerView().setLayoutManager(new GridLayoutManager(getActivity(), 2));
        getRecyclerView().setBackgroundColor(ContextCompat.getColor(view.getContext(), R.color.color_ugc_divider));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        if (i9 == 1) {
            showProgressDialog(null);
        }
        new GCRequestJava("api/token/user/current/user/dress/public/chat/info").putBody("types", 1).putBody("page", Integer.valueOf(i9)).putBody("limit", 20).j(new b(i9)).d(new a(i9)).request();
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
        W1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getList().size() > 1) {
            loadData(1);
            this.f21491e.setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        if (i9 == 1088) {
            return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_dress_up_title, viewGroup, false));
        }
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_chat_shading, viewGroup, false));
    }
}
