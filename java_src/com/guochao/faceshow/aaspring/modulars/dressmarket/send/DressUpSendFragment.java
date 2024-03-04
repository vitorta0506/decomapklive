package com.guochao.faceshow.aaspring.modulars.dressmarket.send;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressSpecBean;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.SendUserResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.holder.SpecHolder;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.bean.UserBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class DressUpSendFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private TabLayout f17721a;

    /* renamed from: b  reason: collision with root package name */
    private ViewPager f17722b;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f17724d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f17725e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f17726f;

    /* renamed from: g  reason: collision with root package name */
    private RecyclerView f17727g;

    /* renamed from: h  reason: collision with root package name */
    private HeadPortraitView f17728h;

    /* renamed from: j  reason: collision with root package name */
    private DressResponse.DressBean f17730j;

    /* renamed from: k  reason: collision with root package name */
    private c f17731k;

    /* renamed from: c  reason: collision with root package name */
    private final List<Fragment> f17723c = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private final List<DressSpecBean> f17729i = new ArrayList();

    /* loaded from: classes3.dex */
    class a extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        String[] f17732a;

        a(FragmentManager fragmentManager) {
            super(fragmentManager);
            this.f17732a = new String[]{DressUpSendFragment.this.getString(R.string.f_dress_send_friends), DressUpSendFragment.this.getString(R.string.f_dress_send_follows)};
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return DressUpSendFragment.this.f17723c.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        @NonNull
        public Fragment getItem(int i9) {
            return (Fragment) DressUpSendFragment.this.f17723c.get(i9);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i9) {
            return this.f17732a[i9];
        }
    }

    /* loaded from: classes3.dex */
    class b extends RecyclerView.Adapter<SpecHolder> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Object tag = view.getTag();
                if (tag instanceof Integer) {
                    int i9 = 0;
                    while (i9 < DressUpSendFragment.this.f17729i.size()) {
                        ((DressSpecBean) DressUpSendFragment.this.f17729i.get(i9)).setSelect(i9 == ((Integer) tag).intValue());
                        i9++;
                    }
                    if (DressUpSendFragment.this.f17727g.getAdapter() != null) {
                        DressUpSendFragment.this.f17727g.getAdapter().notifyDataSetChanged();
                    }
                    if (DressUpSendFragment.this.getActivity() instanceof DressUpSendActivity) {
                        ((DressUpSendActivity) DressUpSendFragment.this.getActivity()).y0();
                    }
                }
            }
        }

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: a */
        public void onBindViewHolder(@NonNull SpecHolder specHolder, int i9) {
            specHolder.itemView.setTag(Integer.valueOf(i9));
            specHolder.c((DressSpecBean) DressUpSendFragment.this.f17729i.get(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: b */
        public SpecHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new SpecHolder(LayoutInflater.from(DressUpSendFragment.this.getActivity()).inflate(R.layout.item_dress_up_spec, viewGroup, false), new a());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DressUpSendFragment.this.f17729i.size();
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(SendUserResponse.SendUser sendUser);

        void b(SendUserResponse.SendUser sendUser);
    }

    public static DressUpSendFragment S1(DressResponse.DressBean dressBean) {
        DressUpSendFragment dressUpSendFragment = new DressUpSendFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("dressBean", dressBean);
        dressUpSendFragment.setArguments(bundle);
        return dressUpSendFragment;
    }

    public DressSpecBean T1() {
        for (DressSpecBean dressSpecBean : this.f17729i) {
            if (dressSpecBean.isSelect()) {
                return dressSpecBean;
            }
        }
        return null;
    }

    public void U1() {
        RecyclerView.Adapter adapter;
        for (Fragment fragment : getChildFragmentManager().getFragments()) {
            if ((fragment instanceof DressUpSendContentFragment) && (adapter = ((DressUpSendContentFragment) fragment).getRecyclerView().getAdapter()) != null) {
                adapter.notifyDataSetChanged();
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_dress_up_send;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getArguments() != null) {
            this.f17730j = (DressResponse.DressBean) getArguments().getParcelable("dressBean");
        }
        this.f17721a = (TabLayout) view.findViewById(R.id.tablayout);
        this.f17724d = (ImageView) view.findViewById(R.id.thumb);
        this.f17726f = (TextView) view.findViewById(R.id.name);
        this.f17725e = (ImageView) view.findViewById(R.id.dress_tag);
        this.f17727g = (RecyclerView) view.findViewById(R.id.spec_content);
        this.f17722b = (ViewPager) view.findViewById(R.id.view_pager);
        this.f17728h = (HeadPortraitView) view.findViewById(R.id.avatar_view);
        this.f17724d.setVisibility(this.f17730j.getType() == 1 ? 8 : 0);
        this.f17728h.setVisibility(this.f17730j.getType() == 1 ? 0 : 8);
        DressUpSendContentFragment U1 = DressUpSendContentFragment.U1(0);
        U1.setOnSelectUserChangedListener(this.f17731k);
        this.f17723c.add(U1);
        DressUpSendContentFragment U12 = DressUpSendContentFragment.U1(1);
        U12.setOnSelectUserChangedListener(this.f17731k);
        this.f17723c.add(U12);
        this.f17722b.setAdapter(new a(getChildFragmentManager()));
        this.f17721a.setupWithViewPager(this.f17722b);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        int i9;
        DressResponse.DressBean dressBean = this.f17730j;
        if (dressBean == null) {
            return;
        }
        if (dressBean.getType() == 1) {
            UserBean userBean = new UserBean();
            UserVipData userVipData = new UserVipData();
            userVipData.setDressHead((!q7.a.e().j() || TextUtils.isEmpty(this.f17730j.getArThumbnailImage())) ? this.f17730j.getThumbnailImage() : this.f17730j.getArThumbnailImage());
            userBean.img = getCurrentUser().img;
            userBean.setUserVipMsg(userVipData);
            this.f17728h.j(userBean);
        } else {
            hc.a.h(this.f17724d, "", R.mipmap.vvip_rc_car);
            com.bumptech.glide.c.v(this.f17724d).r((!q7.a.e().j() || TextUtils.isEmpty(this.f17730j.getArThumbnailImage())) ? this.f17730j.getThumbnailImage() : this.f17730j.getArThumbnailImage()).b0(R.mipmap.f_dress_empty).Q0(this.f17724d);
        }
        if (this.f17730j.getIsVip() == 1) {
            i9 = R.mipmap.dress_up_vip;
        } else if (this.f17730j.getIsVip() == 2) {
            i9 = R.mipmap.dress_up_svip;
        } else if (this.f17730j.getTagType() == 1) {
            i9 = R.mipmap.dress_up_hot;
        } else {
            i9 = this.f17730j.getTagType() == 2 ? R.mipmap.dress_up_new : -1;
        }
        this.f17726f.setText(this.f17730j.getName());
        if (i9 > 0) {
            this.f17725e.setImageResource(i9);
        } else {
            this.f17725e.setVisibility(8);
        }
        this.f17727g.setLayoutManager(new GridLayoutManager((Context) getActivity(), 2, 1, false));
        this.f17727g.setAdapter(new b());
        DressResponse.DressBean dressBean2 = this.f17730j;
        if (dressBean2 == null || dressBean2.getDressMallRuleList() == null) {
            return;
        }
        for (DressSpecBean dressSpecBean : this.f17730j.getDressMallRuleList()) {
            if (dressSpecBean.getRuleId() == this.f17730j.getDefaultRuleId()) {
                dressSpecBean.setSelect(true);
            } else {
                dressSpecBean.setSelect(false);
            }
            this.f17729i.add(dressSpecBean);
        }
        if (this.f17727g.getAdapter() != null) {
            this.f17727g.getAdapter().notifyDataSetChanged();
        }
    }

    public void setOnSelectUserChangedListener(c cVar) {
        this.f17731k = cVar;
    }
}
