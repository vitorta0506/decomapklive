package com.guochao.faceshow.aaspring.modulars.onevone.pendant;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.BeautyItemCache;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.beauty.BeaultyFragment;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.face.FacePendantFragment;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.filter.FilterFragment;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.FragmentUtil;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class PendantDialog extends BaseDialogFragment implements q9.a {

    /* renamed from: d  reason: collision with root package name */
    private FragmentUtil f20963d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f20964e;
    @BindView
    View emptyView;
    @BindView
    TextView firstTab;
    @BindView
    ViewGroup fragmentContainer;

    /* renamed from: g  reason: collision with root package name */
    private boolean f20966g;

    /* renamed from: h  reason: collision with root package name */
    private int f20967h;

    /* renamed from: i  reason: collision with root package name */
    private c f20968i;
    @BindView
    ImageView iconClose;

    /* renamed from: j  reason: collision with root package name */
    private b f20969j;
    @BindView
    TextView secondTab;
    @BindView
    View tab1;
    @BindView
    View tab2;
    @BindView
    View tab3;
    @BindView
    ViewGroup tabLay;
    @BindView
    View tabLine;
    @BindView
    TextView thirdTab;

    /* renamed from: a  reason: collision with root package name */
    int f20960a = 7;

    /* renamed from: b  reason: collision with root package name */
    private String[] f20961b = {BaseApplication.getInstance().getString(R.string.effects), BaseApplication.getInstance().getString(R.string.live_room_skin_care), BaseApplication.getInstance().getString(R.string.filter)};

    /* renamed from: c  reason: collision with root package name */
    private List<Fragment> f20962c = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private boolean f20965f = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            LogUtils.i("zune", "调用成功");
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void onDismiss();
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a();

        void b(String str, ResourceListItemBean resourceListItemBean);
    }

    private Bundle P1(int i9) {
        Bundle bundle = new Bundle();
        bundle.putInt("type", this.f20960a);
        bundle.putBoolean("isTrtc", this.f20966g);
        return bundle;
    }

    private void R1() {
        this.firstTab.setText(this.f20961b[0]);
        this.secondTab.setText(this.f20961b[1]);
        this.thirdTab.setText(this.f20961b[2]);
        U1();
        this.f20963d.initFragments(R.id.fragment_container, getChildFragmentManager(), this.f20962c);
        this.f20963d.showFragment(this.f20962c.get(0));
    }

    private void S1() {
        FacePendantFragment facePendantFragment = new FacePendantFragment();
        facePendantFragment.setArguments(P1(0));
        this.f20962c.clear();
        this.f20962c.add(facePendantFragment);
        this.f20963d.initFragments(R.id.fragment_container, getChildFragmentManager(), this.f20962c);
        this.f20963d.showFragment(this.f20962c.get(0));
        this.tabLay.setVisibility(8);
        this.tabLine.setVisibility(8);
    }

    private void T1(int i9) {
        if (i9 != 5 && i9 != 6 && i9 != 7) {
            if (i9 == 8) {
                S1();
                return;
            } else if (i9 != 100) {
                return;
            }
        }
        R1();
    }

    private void U1() {
        this.f20962c.clear();
        if (this.f20965f) {
            FacePendantFragment facePendantFragment = new FacePendantFragment();
            facePendantFragment.setArguments(P1(0));
            this.f20962c.add(facePendantFragment);
        } else {
            this.tab1.setVisibility(8);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.tab2.getLayoutParams();
            marginLayoutParams.setMarginStart(0);
            this.tab2.setLayoutParams(marginLayoutParams);
        }
        BeaultyFragment beaultyFragment = new BeaultyFragment();
        beaultyFragment.setArguments(P1(1));
        FilterFragment filterFragment = new FilterFragment();
        filterFragment.setArguments(P1(2));
        this.f20962c.add(beaultyFragment);
        this.f20962c.add(filterFragment);
        V1(!this.f20965f ? 1 : 0);
    }

    private void V1(int i9) {
        this.f20967h = this.f20965f ? i9 : i9 - 1;
        this.firstTab.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_3));
        this.secondTab.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_3));
        this.thirdTab.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_3));
        this.tab1.setSelected(false);
        this.tab2.setSelected(false);
        this.tab3.setSelected(false);
        int i10 = this.f20960a;
        if (this.f20966g) {
            i10 = 1005;
        }
        t1(BeautyItemCacheManager.getLast(i10));
        if (i9 == 0) {
            this.firstTab.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_1));
            this.tab1.setSelected(true);
            EventTrackingUtils.getInstance().track(EventTrackingUtils.PENDANT_SPECIAL_EFFECT_CLICKED);
        } else if (i9 == 1) {
            this.secondTab.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_1));
            this.tab2.setSelected(true);
            EventTrackingUtils.getInstance().track(EventTrackingUtils.PENDANT_BEAUTY_CLICKED);
        } else if (i9 != 2) {
        } else {
            this.thirdTab.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_1));
            this.tab3.setSelected(true);
            EventTrackingUtils.getInstance().track(EventTrackingUtils.PENDANT_FILTER_CLICKED);
        }
    }

    public c Q1() {
        return this.f20968i;
    }

    public void W1(long j10, int i9, int i10) {
        post("tokens/resource/record/save").v("infoId", Long.valueOf(j10)).v("resourceCode", Integer.valueOf(i9)).v("moduleCode", Integer.valueOf(i10)).M(new a());
    }

    public void X1(boolean z10) {
        this.f20965f = z10;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        b bVar = this.f20969j;
        if (bVar != null) {
            bVar.onDismiss();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_pendant;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f20966g = arguments.getBoolean("isTrtc", false);
        }
        this.f20963d = new FragmentUtil();
        ViewGroup.LayoutParams layoutParams = this.fragmentContainer.getLayoutParams();
        layoutParams.height = getResources().getDisplayMetrics().heightPixels / 3;
        this.fragmentContainer.setLayoutParams(layoutParams);
        T1(this.f20960a);
        int i9 = this.f20960a;
        if (this.f20966g) {
            i9 = 1005;
        }
        t1(BeautyItemCacheManager.getLast(i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f20964e = true;
        super.onDismiss(dialogInterface);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.empty_view) {
            dismiss();
            return;
        }
        if (id2 != R.id.icon_close) {
            switch (id2) {
                case R.id.tab1 /* 2131364629 */:
                    if (this.f20962c.size() < 1) {
                        return;
                    }
                    V1(0);
                    this.f20963d.showFragment(this.f20962c.get(0));
                    return;
                case R.id.tab2 /* 2131364630 */:
                    if (this.f20962c.size() < (this.f20965f ? 2 : 1)) {
                        return;
                    }
                    V1(1);
                    this.f20963d.showFragment(this.f20962c.get(this.f20965f ? 1 : 0));
                    return;
                case R.id.tab3 /* 2131364631 */:
                    if (this.f20962c.size() < (this.f20965f ? 3 : 2)) {
                        return;
                    }
                    V1(2);
                    this.f20963d.showFragment(this.f20962c.get(this.f20965f ? 2 : 1));
                    return;
                default:
                    return;
            }
        } else if (DisableDoubleClickUtils.canClick(view)) {
            view.setSelected(true);
            c cVar = this.f20968i;
            if (cVar != null) {
                cVar.a();
            }
            for (int i9 = 0; i9 < this.f20962c.size(); i9++) {
                if (i9 == this.f20967h) {
                    Fragment fragment = this.f20962c.get(i9);
                    if (fragment instanceof FacePendantFragment) {
                        ((FacePendantFragment) fragment).a2();
                    }
                    if (fragment instanceof BeaultyFragment) {
                        ((BeaultyFragment) fragment).V1();
                    }
                    if (fragment instanceof FilterFragment) {
                        ((FilterFragment) fragment).W1();
                    }
                }
            }
        }
    }

    public void setOnDismissListener(b bVar) {
        this.f20969j = bVar;
    }

    public void setOnItemClickListener(c cVar) {
        this.f20968i = cVar;
    }

    public void setType(int i9) {
        this.f20960a = i9;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
        EventTrackingUtils.getInstance().track(EventTrackingUtils.PENDANT_DIALOG_CLICKED);
    }

    @Override // q9.a
    public void t1(BeautyItemCache beautyItemCache) {
        int i9 = this.f20967h;
        if (i9 == 0) {
            this.iconClose.setSelected(beautyItemCache.getLastFaceMotion() == null);
        } else if (i9 == 1) {
            this.iconClose.setSelected(beautyItemCache.getLastBeautyValue().isEmpty());
        } else if (i9 != 2) {
        } else {
            this.iconClose.setSelected(beautyItemCache.getLastFilter() == null);
        }
    }
}
