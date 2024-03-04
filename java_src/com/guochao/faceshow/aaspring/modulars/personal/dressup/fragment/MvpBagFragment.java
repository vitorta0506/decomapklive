package com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment;

import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import butterknife.OnClick;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.DressUpData;
import com.guochao.faceshow.aaspring.beans.MvpBagBean;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.viewmodel.MvpBagModel;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.TimeUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
/* loaded from: classes3.dex */
public class MvpBagFragment extends BaseRecyclerViewFragment<DressUpData, BaseViewHolder> implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private DressUpData f21522a;

    /* renamed from: b  reason: collision with root package name */
    private View f21523b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f21524c;

    /* renamed from: d  reason: collision with root package name */
    MvpBagModel f21525d = new MvpBagModel();

    /* renamed from: e  reason: collision with root package name */
    public TextView f21526e;

    /* renamed from: f  reason: collision with root package name */
    private DressUpData f21527f;

    /* loaded from: classes3.dex */
    class a implements Observer<List<MvpBagBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21528a;

        a(int i9) {
            this.f21528a = i9;
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(List<MvpBagBean> list) {
            for (DressUpData dressUpData : MvpBagFragment.this.getList()) {
                for (MvpBagBean mvpBagBean : list) {
                    if (String.valueOf(mvpBagBean.getId()).equals(dressUpData.getDressUpId())) {
                        MvpBagFragment.this.notifyDataLoaded(false);
                        return;
                    }
                }
            }
            if (this.f21528a == 1) {
                MvpBagFragment.this.dismissProgressDialog();
            }
            if (list == null) {
                list = new ArrayList<>();
            }
            ArrayList<DressUpData> arrayList = new ArrayList();
            for (MvpBagBean mvpBagBean2 : list) {
                arrayList.add(DressUpData.obtain(mvpBagBean2));
            }
            if (arrayList.size() == 0) {
                if (this.f21528a == 1) {
                    MvpBagFragment.this.clearAll();
                    MvpBagFragment.this.showEmptyView();
                }
                MvpBagFragment.this.notifyDataLoaded(false);
                return;
            }
            for (DressUpData dressUpData2 : arrayList) {
                if (dressUpData2.getIsUse() == 1) {
                    MvpBagFragment.this.f21522a.setCheck(false);
                    dressUpData2.setCheck(true);
                }
            }
            if (this.f21528a == 1) {
                arrayList.add(0, MvpBagFragment.this.f21522a);
                MvpBagFragment.this.setDatas(arrayList);
            } else {
                MvpBagFragment.this.addDatas(arrayList);
            }
            MvpBagFragment.this.notifyDataLoaded(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Function2<Response<Integer>, Continuation<? super Unit>, Object> {
        b() {
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public Object mo1invoke(Response<Integer> response, Continuation<? super Unit> continuation) {
            if (response.isSuccessful() && response.getData().intValue() == 1) {
                MvpBagFragment.this.X1();
                return null;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Function2<Response<Integer>, Continuation<? super Unit>, Object> {
        c() {
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public Object mo1invoke(Response<Integer> response, Continuation<? super Unit> continuation) {
            if (response.isSuccessful() && response.getData().intValue() == 1) {
                MvpBagFragment.this.X1();
                return null;
            }
            return null;
        }
    }

    public static MvpBagFragment T1() {
        return new MvpBagFragment();
    }

    private void W1(DressUpData dressUpData) {
        MvpBagModel mvpBagModel = this.f21525d;
        mvpBagModel.dressUp(dressUpData.mvpId + "", new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: S1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, DressUpData dressUpData) {
        String string;
        if (i9 == getList().size() - 1) {
            ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).bottomMargin = DensityUtil.dp2px(169.0f);
        } else if (getList().size() % 2 == 0 && i9 == getList().size() - 2) {
            ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).bottomMargin = DensityUtil.dp2px(169.0f);
        } else {
            ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).bottomMargin = DensityUtil.dp2px(4.0f);
        }
        if (dressUpData.getItemType() != 1) {
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.imageView);
            com.bumptech.glide.c.v(imageView).r(dressUpData.getUrl()).m().Q0(imageView);
            TextView textView = (TextView) baseViewHolder.getView(R.id.tv_time_limit);
            ((TextView) baseViewHolder.getView(R.id.tv_picture_frame_name)).setText(dressUpData.getName());
            if (dressUpData.valid == 0) {
                string = getString(R.string.lost_effectiveness);
            } else {
                string = getString(R.string.mvp_tag_valid);
            }
            textView.setText(string);
            if (Objects.equals(getString(R.string.lost_effectiveness), textView.getText())) {
                baseViewHolder.getView(R.id.mask).setVisibility(0);
            } else {
                baseViewHolder.getView(R.id.mask).setVisibility(8);
            }
        } else {
            ((TextView) baseViewHolder.getView(R.id.tv_title_name)).setText(dressUpData.getTitleName());
            ((ImageView) baseViewHolder.getView(R.id.img_nouse)).setImageResource(R.mipmap.ic_nomvp);
        }
        ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.iv_is_check);
        if (dressUpData.isCheck()) {
            imageView2.setVisibility(0);
        } else {
            imageView2.setVisibility(4);
        }
        baseViewHolder.itemView.setSelected(dressUpData.isSelected());
    }

    public void U1() {
        if (this.f21527f.isCheck()) {
            return;
        }
        if (this.f21527f.getCanItBeUsed() == 1) {
            if (getList().indexOf(this.f21527f) == 0) {
                for (DressUpData dressUpData : getList()) {
                    dressUpData.setCheck(false);
                }
                this.f21527f.setCheck(true);
                this.f21525d.cancelDressUp(new b());
                if (getRecyclerView().getAdapter() != null) {
                    getRecyclerView().getAdapter().notifyDataSetChanged();
                    return;
                }
                return;
            }
            DressUpData dressUpData2 = this.f21527f;
            if (dressUpData2.valid == 1) {
                if (dressUpData2.received == 1) {
                    getString(R.string.setting_dressuo);
                    for (DressUpData dressUpData3 : getList()) {
                        dressUpData3.setCheck(false);
                    }
                    this.f21527f.setCheck(true);
                    W1(this.f21527f);
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_use_click, "3");
                    ToastUtils.showToast(getActivity(), (int) R.string.set_success);
                    if (getRecyclerView().getAdapter() != null) {
                        getRecyclerView().getAdapter().notifyDataSetChanged();
                    }
                    this.f21526e.setEnabled(false);
                    this.f21526e.setText(R.string.mvp_gift_useed);
                    return;
                }
                MVPActivity.Companion.start(getContext(), MVPActivity.TOAST_TYPE_GET_BADGE, MVPActivity.FROM_BAG_BADGE);
                return;
            }
            MVPActivity.Companion.start(getContext(), MVPActivity.TOAST_TYPE_CHARGE, MVPActivity.FROM_BAG_BADGE);
            return;
        }
        MVPActivity.Companion.start(getContext(), MVPActivity.TOAST_TYPE_CHARGE, MVPActivity.FROM_BAG_BADGE);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: V1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, DressUpData dressUpData) {
        if (baseViewHolder == null || dressUpData == null) {
            return;
        }
        this.f21527f = dressUpData;
        for (DressUpData dressUpData2 : getList()) {
            dressUpData2.setSelected(false);
        }
        dressUpData.setSelected(true);
        Pair dressUpTimePairMvp = TimeUtil.getDressUpTimePairMvp(getActivity(), dressUpData);
        getRecyclerView().getAdapter().notifyDataSetChanged();
        this.f21526e.setEnabled(((Boolean) dressUpTimePairMvp.first).booleanValue());
        this.f21526e.setText((CharSequence) dressUpTimePairMvp.second);
        this.f21526e.setVisibility(0);
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
        this.f21526e = (TextView) view.findViewById(R.id.confirmUse);
        this.f21523b = view.findViewById(R.id.empty_view);
        TextView textView = (TextView) view.findViewById(R.id.empty_text);
        this.f21524c = textView;
        textView.setText("");
        this.f21524c.setTextSize(14.0f);
        ((ViewGroup.MarginLayoutParams) this.f21524c.getLayoutParams()).topMargin = DensityUtil.dp2px(15.0f);
        ((ViewGroup.MarginLayoutParams) this.f21523b.getLayoutParams()).bottomMargin = DensityUtil.dp2px(150.0f);
        setFooterView(8);
        DressUpData dressUpData = new DressUpData();
        this.f21522a = dressUpData;
        dressUpData.setCheck(true);
        this.f21522a.setItemType(1);
        this.f21522a.setCanItBeUsed(1);
        this.f21522a.setTitleName(getString(R.string.mvp_tag_not_use));
        getRecyclerView().setLayoutManager(new GridLayoutManager(getActivity(), 2));
        getRecyclerView().setBackgroundColor(ContextCompat.getColor(view.getContext(), R.color.color_ugc_divider));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        if (i9 == 1) {
            showProgressDialog(null);
        }
        if (i9 != 1) {
            this.f21525d.loadMvpBagData(i9 != 1);
        }
        this.f21525d.getMvpLiveData().observe(this, new a(i9));
    }

    @Override // android.view.View.OnClickListener
    @OnClick
    public void onClick(View view) {
        if (view.getId() != R.id.confirmUse) {
            return;
        }
        U1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f21525d.loadMvpBagData(false);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        if (i9 == 1088) {
            return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_dress_up_title, viewGroup, false));
        }
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_mvp_tag, viewGroup, false));
    }
}
