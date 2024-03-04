package com.guochao.faceshow.aaspring.modulars.dressmarket.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressSpecBean;
import com.guochao.faceshow.aaspring.modulars.dressmarket.dialog.BaseBuyDressDialog;
import com.guochao.faceshow.aaspring.modulars.dressmarket.holder.SpecHolder;
import com.guochao.faceshow.aaspring.modulars.dressmarket.marquee.FloatMarqueeFragment;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.DisTouchRecyclerView;
import com.guochao.faceshow.aaspring.modulars.vip.fragment.BuyVipContainerDialogFragment;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.views.e;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import p9.a;
/* loaded from: classes3.dex */
public abstract class BaseBuyDressDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    protected TextView f17634a;

    /* renamed from: b  reason: collision with root package name */
    protected DisTouchRecyclerView f17635b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f17636c;

    /* renamed from: d  reason: collision with root package name */
    protected ImageView f17637d;

    /* renamed from: e  reason: collision with root package name */
    protected ImageView f17638e;

    /* renamed from: f  reason: collision with root package name */
    protected final List<DressSpecBean> f17639f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    protected View f17640g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f17641h;

    /* renamed from: i  reason: collision with root package name */
    protected DressResponse.DressBean f17642i;

    /* renamed from: j  reason: collision with root package name */
    protected HeadPortraitView f17643j;

    /* renamed from: k  reason: collision with root package name */
    protected FrameLayout f17644k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f17645l;

    /* loaded from: classes3.dex */
    class a implements DialogInterface.OnKeyListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i9, KeyEvent keyEvent) {
            if (i9 == 4) {
                return BaseBuyDressDialog.this.f17645l;
            }
            return false;
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
                    while (i9 < BaseBuyDressDialog.this.f17639f.size()) {
                        BaseBuyDressDialog.this.f17639f.get(i9).setSelect(i9 == ((Integer) tag).intValue());
                        i9++;
                    }
                    if (BaseBuyDressDialog.this.f17635b.getAdapter() != null) {
                        BaseBuyDressDialog.this.f17635b.getAdapter().notifyDataSetChanged();
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
            specHolder.c(BaseBuyDressDialog.this.f17639f.get(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: b */
        public SpecHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new SpecHolder(LayoutInflater.from(BaseBuyDressDialog.this.getActivity()).inflate(R.layout.item_dress_up_spec, viewGroup, false), new a());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return BaseBuyDressDialog.this.f17639f.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements e.a {
        c() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                BuyVipContainerDialogFragment.P1(0, BaseBuyDressDialog.this.getChildFragmentManager());
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements e.a {
        d() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                BuyVipContainerDialogFragment.P1(4, BaseBuyDressDialog.this.getChildFragmentManager());
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements a.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DressSpecBean f17651a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements e.a {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.dressmarket.dialog.BaseBuyDressDialog$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class C0170a extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {
                C0170a() {
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                /* renamed from: a */
                public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
                    if (BaseBuyDressDialog.this.getDialog() != null) {
                        BaseBuyDressDialog.this.getDialog().setCanceledOnTouchOutside(true);
                    }
                    BaseBuyDressDialog baseBuyDressDialog = BaseBuyDressDialog.this;
                    baseBuyDressDialog.f17645l = false;
                    baseBuyDressDialog.U1();
                    p9.a.g().C(p9.a.g().f() - e.this.f17651a.getLastPrice(), false);
                    FloatMarqueeFragment.d dVar = new FloatMarqueeFragment.d();
                    dVar.f17681a = BaseBuyDressDialog.this.f17642i.getName();
                    dVar.f17682b = BaseBuyDressDialog.this.f17642i.getType();
                    EventBus.getDefault().post(dVar);
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<Integer> aVar) {
                    if (aVar.a() != 0 || aVar.d() == null) {
                        return;
                    }
                    if (aVar.d().intValue() == 0 || aVar.d().intValue() == 1) {
                        BaseBuyDressDialog.this.showToast(R.string.f_dress_pay_error);
                        BaseBuyDressDialog.this.dismissAllowingStateLoss();
                    }
                }
            }

            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    dialog.dismiss();
                    DressSpecBean dressSpecBean = null;
                    for (DressSpecBean dressSpecBean2 : BaseBuyDressDialog.this.f17639f) {
                        if (dressSpecBean2.isSelect()) {
                            dressSpecBean = dressSpecBean2;
                        }
                    }
                    if (dressSpecBean == null) {
                        return;
                    }
                    BaseBuyDressDialog.this.f17636c.setText("");
                    BaseBuyDressDialog.this.f17641h.setVisibility(0);
                    ((AnimationDrawable) BaseBuyDressDialog.this.f17641h.getDrawable()).start();
                    if (BaseBuyDressDialog.this.getDialog() != null) {
                        BaseBuyDressDialog.this.getDialog().setCanceledOnTouchOutside(false);
                    }
                    BaseBuyDressDialog.this.f17645l = true;
                    new PostRequest("tokens/mall/createOrder").y("goodId", Long.valueOf(BaseBuyDressDialog.this.f17642i.getMallId())).y("ruleId", Long.valueOf(dressSpecBean.getRuleId())).M(new C0170a());
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        e(DressSpecBean dressSpecBean) {
            this.f17651a = dressSpecBean;
        }

        @Override // p9.a.f
        public void onCustomRecharge() {
            RechargeDialog.showDialog(BaseBuyDressDialog.this.getChildFragmentManager(), 0, 6);
        }

        @Override // p9.a.f
        public void onResponse() {
            BaseBuyDressDialog baseBuyDressDialog = BaseBuyDressDialog.this;
            baseBuyDressDialog.alert("", baseBuyDressDialog.V1(this.f17651a), new a(), false).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence V1(DressSpecBean dressSpecBean) {
        String quantityString = getResources().getQuantityString(dressSpecBean.getQuantityTime(dressSpecBean.getUnit()), dressSpecBean.getDuration(), Integer.valueOf(dressSpecBean.getDuration()));
        return this.f17642i.getType() == 0 ? String.format(getString(R.string.f_dress_alert_buy_car), quantityString, this.f17642i.getName()) : this.f17642i.getType() == 2 ? String.format(getString(R.string.f_dress_alert_buy_chatshading), quantityString, this.f17642i.getName()) : this.f17642i.getType() == 1 ? String.format(getString(R.string.f_dress_alert_buy_pendant), quantityString, this.f17642i.getName()) : "";
    }

    private CharSequence X1(DressResponse.DressBean dressBean, boolean z10) {
        if (this.f17642i.getType() == 0) {
            String string = getString(R.string.f_dress_alert_privilege_car);
            Object[] objArr = new Object[2];
            objArr[0] = z10 ? "SVIP" : "VIP/SVIP";
            objArr[1] = z10 ? "SVIP" : "VIP/SVIP";
            return String.format(string, objArr);
        } else if (this.f17642i.getType() == 2) {
            String string2 = getString(R.string.f_dress_alert_privilege_chatshading);
            Object[] objArr2 = new Object[2];
            objArr2[0] = z10 ? "SVIP" : "VIP/SVIP";
            objArr2[1] = z10 ? "SVIP" : "VIP/SVIP";
            return String.format(string2, objArr2);
        } else if (this.f17642i.getType() == 1) {
            String string3 = getString(R.string.f_dress_alert_privilege_pendant);
            Object[] objArr3 = new Object[2];
            objArr3[0] = z10 ? "SVIP" : "VIP/SVIP";
            objArr3[1] = z10 ? "SVIP" : "VIP/SVIP";
            return String.format(string3, objArr3);
        } else {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y1(View view) {
        if (this.f17645l) {
            return;
        }
        dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z1(View view) {
        if (this.f17642i.getIsVip() == 1) {
            if (getCurrentUser().getVipLevel() == 0) {
                alert("", X1(this.f17642i, false), new c(), false).show();
            } else {
                b2();
            }
        } else if (this.f17642i.getIsVip() == 2) {
            if (getCurrentUser().getVipLevel() < 2) {
                alert("", X1(this.f17642i, true), new d(), false).show();
            } else {
                b2();
            }
        } else {
            b2();
        }
    }

    public static <T extends BaseBuyDressDialog> void a2(FragmentManager fragmentManager, Class<T> cls, DressResponse.DressBean dressBean) {
        try {
            T newInstance = cls.newInstance();
            Bundle bundle = new Bundle();
            bundle.putParcelable("dressBean", dressBean);
            newInstance.setArguments(bundle);
            newInstance.show(fragmentManager, cls.getSimpleName());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b2() {
        DressSpecBean dressSpecBean = null;
        for (DressSpecBean dressSpecBean2 : this.f17639f) {
            if (dressSpecBean2.isSelect()) {
                dressSpecBean = dressSpecBean2;
            }
        }
        if (dressSpecBean == null) {
            return;
        }
        p9.a.g().q(this, dressSpecBean.getLastPrice(), false, true, new e(dressSpecBean));
    }

    protected void U1() {
        if (!isDetached() && getActivity() != null && !getActivity().isDestroyed() && !getActivity().isFinishing()) {
            dismissAllowingStateLoss();
            if (getActivity() == null || getActivity().isDestroyed() || getActivity().isFinishing()) {
                return;
            }
            BuyDressSuccessDialog.V1(getActivity().getSupportFragmentManager(), 1, this.f17642i, null);
            return;
        }
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof BaseActivity) {
            BuyDressSuccessDialog.V1(((BaseActivity) currTopActivity).getSupportFragmentManager(), 1, this.f17642i, null);
        }
    }

    public void W1() {
        DressResponse.DressBean dressBean = this.f17642i;
        if (dressBean == null) {
            return;
        }
        if (dressBean.getDressMallRuleList() == null) {
            this.f17642i.setDressMallRuleList(new ArrayList());
        }
        for (int i9 = 0; i9 < this.f17642i.getDressMallRuleList().size(); i9++) {
            DressSpecBean dressSpecBean = this.f17642i.getDressMallRuleList().get(i9);
            if (i9 == 0) {
                dressSpecBean.setSelect(true);
            } else {
                dressSpecBean.setSelect(false);
            }
            this.f17639f.add(dressSpecBean);
        }
        if (this.f17635b.getAdapter() != null) {
            this.f17635b.getAdapter().notifyDataSetChanged();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.layout_dialog_buy_dress;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        view.findViewById(R.id.bg_view).setOnClickListener(new View.OnClickListener() { // from class: o8.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BaseBuyDressDialog.this.Y1(view2);
            }
        });
        if (getArguments() != null) {
            this.f17642i = (DressResponse.DressBean) getArguments().getParcelable("dressBean");
        }
        this.f17640g = view.findViewById(R.id.content_lay);
        this.f17634a = (TextView) view.findViewById(R.id.dress_name);
        this.f17637d = (ImageView) view.findViewById(R.id.dress_tag);
        this.f17638e = (ImageView) view.findViewById(R.id.dress_image);
        this.f17644k = (FrameLayout) view.findViewById(R.id.fl_head);
        this.f17643j = (HeadPortraitView) view.findViewById(R.id.avatar_view);
        this.f17635b = (DisTouchRecyclerView) view.findViewById(R.id.spec_content);
        this.f17641h = (ImageView) view.findViewById(R.id.buy_loading);
        this.f17638e.setVisibility(this.f17642i.getType() == 1 ? 8 : 0);
        this.f17644k.setVisibility(this.f17642i.getType() == 1 ? 0 : 8);
        this.f17643j.setVisibility(this.f17642i.getType() == 1 ? 0 : 8);
        this.f17635b.setLayoutManager(new GridLayoutManager((Context) getActivity(), 2, 1, false));
        this.f17635b.setAdapter(new b());
        W1();
        TextView textView = (TextView) view.findViewById(R.id.buy_now);
        this.f17636c = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: o8.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BaseBuyDressDialog.this.Z1(view2);
            }
        });
        DressResponse.DressBean dressBean = this.f17642i;
        if (dressBean == null) {
            return;
        }
        if (dressBean.getType() == 1) {
            UserBean userBean = new UserBean();
            UserVipData userVipData = new UserVipData();
            userVipData.setDressHead((!q7.a.e().j() || TextUtils.isEmpty(this.f17642i.getArThumbnailImage())) ? this.f17642i.getThumbnailImage() : this.f17642i.getArThumbnailImage());
            userBean.img = getCurrentUser().img;
            userBean.setUserVipMsg(userVipData);
            this.f17643j.j(userBean);
            return;
        }
        com.bumptech.glide.c.v(view).r((!q7.a.e().j() || TextUtils.isEmpty(this.f17642i.getArThumbnailImage())) ? this.f17642i.getThumbnailImage() : this.f17642i.getArThumbnailImage()).b0(R.mipmap.f_dress_empty).Q0(this.f17638e);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.BottomDialog);
        createBottomDialog.setCanceledOnTouchOutside(true);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        createBottomDialog.setOnKeyListener(new a());
        return createBottomDialog;
    }
}
