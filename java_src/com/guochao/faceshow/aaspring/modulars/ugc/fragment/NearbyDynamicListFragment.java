package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.UgcDistanceTypeBean;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.AppSettings;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.location.FcLocation;
import com.guochao.faceshow.aaspring.utils.location.LocationHelper;
import com.guochao.faceshow.aaspring.utils.location.LocationService;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.List;
/* loaded from: classes3.dex */
public class NearbyDynamicListFragment extends UgcDynamicListFragment {

    /* renamed from: k  reason: collision with root package name */
    public static final String[] f22747k = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};

    /* renamed from: a  reason: collision with root package name */
    boolean f22748a;

    /* renamed from: b  reason: collision with root package name */
    String f22749b;

    /* renamed from: c  reason: collision with root package name */
    int f22750c;

    /* renamed from: d  reason: collision with root package name */
    int f22751d;
    @BindView
    TextView disTV;

    /* renamed from: f  reason: collision with root package name */
    PopupWindow f22753f;

    /* renamed from: g  reason: collision with root package name */
    View f22754g;

    /* renamed from: h  reason: collision with root package name */
    TextView f22755h;

    /* renamed from: i  reason: collision with root package name */
    int f22756i;
    @BindView
    ImageView mImageView;
    @BindView
    SeekBar mSeekBar;
    @BindView
    View mView;
    @BindView
    View mViewDistanceArea;

    /* renamed from: e  reason: collision with root package name */
    int f22752e = 600;

    /* renamed from: j  reason: collision with root package name */
    boolean f22757j = false;

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22758a;

        a(int i9) {
            this.f22758a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            NearbyDynamicListFragment.this.a2(this.f22758a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements SeekBar.OnSeekBarChangeListener {
        b() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i9, boolean z10) {
            if (z10) {
                NearbyDynamicListFragment nearbyDynamicListFragment = NearbyDynamicListFragment.this;
                int i10 = i9 + 1;
                nearbyDynamicListFragment.f22750c = i10;
                nearbyDynamicListFragment.a2(i10);
                NearbyDynamicListFragment.this.Z1(i10);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            NearbyDynamicListFragment nearbyDynamicListFragment = NearbyDynamicListFragment.this;
            int i9 = nearbyDynamicListFragment.f22751d;
            int i10 = nearbyDynamicListFragment.f22750c;
            if (i9 == i10) {
                return;
            }
            nearbyDynamicListFragment.f22751d = i10;
            FragmentActivity activity = nearbyDynamicListFragment.getActivity();
            SpUtils.setInt(activity, "last_default_progress" + NearbyDynamicListFragment.this.getCurrentUser().getUserId(), NearbyDynamicListFragment.this.f22750c);
            NearbyDynamicListFragment nearbyDynamicListFragment2 = NearbyDynamicListFragment.this;
            nearbyDynamicListFragment2.f22757j = true;
            nearbyDynamicListFragment2.reload();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnTouchListener {
        c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            NearbyDynamicListFragment nearbyDynamicListFragment = NearbyDynamicListFragment.this;
            nearbyDynamicListFragment.f22753f = nearbyDynamicListFragment.Y1();
            NearbyDynamicListFragment.this.mSeekBar.getLocationInWindow(new int[2]);
            NearbyDynamicListFragment nearbyDynamicListFragment2 = NearbyDynamicListFragment.this;
            boolean z10 = nearbyDynamicListFragment2.f22748a;
            nearbyDynamicListFragment2.a2(nearbyDynamicListFragment2.mSeekBar.getProgress());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends SimpleObserver<te.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f22762a;

        d(boolean z10) {
            this.f22762a = z10;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            super.onNext((d) aVar);
            NearbyDynamicListFragment nearbyDynamicListFragment = NearbyDynamicListFragment.this;
            nearbyDynamicListFragment.d2(nearbyDynamicListFragment.getCurrentPage());
            if (aVar.f58133b) {
                AppSettings.setSetting("location_never_ask", false);
                NearbyDynamicListFragment.this.mView.setVisibility(8);
                NearbyDynamicListFragment.this.b2();
            } else if (!aVar.f58134c) {
                AppSettings.setSetting("location_never_ask", true);
                if (this.f22762a) {
                    PackageUtils.gotoSettingForResult(NearbyDynamicListFragment.this, 300);
                }
            } else {
                AppSettings.setSetting("location_never_ask", false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements LocationHelper.OnLocationChangedListener {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
        public void onError(int i9, String str, FcLocation fcLocation) {
        }

        @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
        public void onReceiveLocation(FcLocation fcLocation) {
        }
    }

    private void V1(boolean z10) {
        boolean setting = AppSettings.getSetting("location_permission_dynamic", true);
        boolean setting2 = AppSettings.getSetting("location_never_ask", false);
        if (ContextCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_FINE_LOCATION") == 0) {
            this.mView.setVisibility(8);
            b2();
            d2(getCurrentPage());
        } else if (!setting) {
            d2(getCurrentPage());
            this.mView.setVisibility(0);
        } else if (!setting2) {
            c2(z10);
        } else {
            d2(getCurrentPage());
        }
    }

    public static NearbyDynamicListFragment X1() {
        Bundle bundle = new Bundle();
        bundle.putInt("type", 4);
        bundle.putInt("position", 2);
        NearbyDynamicListFragment nearbyDynamicListFragment = new NearbyDynamicListFragment();
        nearbyDynamicListFragment.setArguments(bundle);
        return nearbyDynamicListFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PopupWindow Y1() {
        this.f22756i = getResources().getDisplayMetrics().widthPixels;
        PopupWindow popupWindow = new PopupWindow(getActivity());
        this.f22754g = getLayoutInflater().inflate(R.layout.layout_popup_seekbar_distance, (ViewGroup) null);
        this.f22754g.setLayoutParams(new ViewGroup.LayoutParams(this.f22756i, -2));
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setWidth(this.f22756i);
        this.f22755h = (TextView) this.f22754g.findViewById(R.id.distance);
        popupWindow.setContentView(this.f22754g);
        return popupWindow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1(int i9) {
        String W1 = W1(i9);
        if (TextUtils.isEmpty(W1)) {
            this.f22749b = null;
            this.mImageView.setImageDrawable(null);
        } else if (W1.equals(this.f22749b)) {
        } else {
            this.f22749b = W1;
            hc.a.j(this.mImageView, W1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2(int i9) {
        float f10 = (i9 * 1.0f) / (this.f22752e - 1);
        int[] iArr = new int[2];
        this.mSeekBar.getLocationInWindow(iArr);
        TextView textView = this.disTV;
        textView.setText(i9 + "km");
        this.disTV.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        if (this.f22748a) {
            float width = (this.mSeekBar.getWidth() * f10) + (DensityUtil.dp2px(getActivity(), 4.0f) * (1.0f - f10));
            TextView textView2 = this.disTV;
            textView2.setTranslationX(-((iArr[0] + width) - (textView2.getMeasuredWidth() * f10)));
            TextView textView3 = this.disTV;
            textView3.setTranslationX(-(width - (f10 * textView3.getMeasuredWidth())));
            return;
        }
        float width2 = (this.mSeekBar.getWidth() * f10) + (DensityUtil.dp2px(getActivity(), 4.0f) * (1.0f - f10));
        TextView textView4 = this.disTV;
        textView4.setTranslationX((iArr[0] + width2) - (textView4.getMeasuredWidth() * f10));
        TextView textView5 = this.disTV;
        textView5.setTranslationX(width2 - (f10 * textView5.getMeasuredWidth()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b2() {
        if (getActivity() != null && ContextCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_FINE_LOCATION") == 0 && ContextCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            LocationService.startRequestLocation(null, getActivity(), new e());
        }
    }

    private void c2(boolean z10) {
        AppSettings.setSetting("location_permission_dynamic", false);
        new com.tbruyelle.rxpermissions2.a(this).p(f22747k).subscribe(new d(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d2(int i9) {
        super.loadData(i9);
    }

    String W1(int i9) {
        List<UgcDistanceTypeBean> appUgcNearbySetList = com.guochao.faceshow.aaspring.manager.i.u().s().getAppUgcNearbySetList();
        for (int i10 = 0; i10 < appUgcNearbySetList.size(); i10++) {
            UgcDistanceTypeBean ugcDistanceTypeBean = appUgcNearbySetList.get(i10);
            if (i9 >= ugcDistanceTypeBean.getMin() && i9 <= ugcDistanceTypeBean.getMax()) {
                if (this.f22748a) {
                    if (TextUtils.isEmpty(ugcDistanceTypeBean.getRightIconUrl())) {
                        return ugcDistanceTypeBean.getLeftIconUrl();
                    }
                    return ugcDistanceTypeBean.getRightIconUrl();
                }
                return ugcDistanceTypeBean.getLeftIconUrl();
            }
        }
        return "";
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_nearby_dynamic_list;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        this.f22748a = getResources().getConfiguration().getLayoutDirection() == 1;
        ServerConfig s10 = com.guochao.faceshow.aaspring.manager.i.u().s();
        int ugcMaxDistance = s10.getUgcMaxDistance();
        this.f22752e = ugcMaxDistance;
        this.mSeekBar.setMax(ugcMaxDistance - 1);
        FragmentActivity activity = getActivity();
        int min = Math.min(SpUtils.getInt(activity, "last_default_progress" + getCurrentUser().getUserId(), s10.getUgcDefaultDistance()), this.f22752e);
        this.mSeekBar.setProgress(min);
        this.mSeekBar.postDelayed(new a(min), 10L);
        Z1(min);
        this.f22750c = min;
        this.mSeekBar.setOnSeekBarChangeListener(new b());
        this.mSeekBar.setOnTouchListener(new c());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        if (getCurrentPage() == getDefaultPage()) {
            V1(false);
        } else {
            super.loadData(i9);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcDynamicListFragment
    public /* bridge */ /* synthetic */ void onResponse(Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
        onResponse((List) obj, (FaceCastBaseResponse<List<DynamicBean>>) faceCastBaseResponse);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (ContextCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_FINE_LOCATION") == 0) {
            this.mView.setVisibility(8);
        } else {
            this.mView.setVisibility(0);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public PostRequest post(String str) {
        return super.post(str).v("distance", Integer.valueOf(this.f22750c));
    }

    @OnClick
    public void requestPermission(View view) {
        c2(AppSettings.getSetting("location_never_ask", false));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcDynamicListFragment, com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseDynamicViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        BaseDynamicViewHolder onCreateViewHolder = super.onCreateViewHolder(viewGroup, i9);
        onCreateViewHolder.L(true);
        return onCreateViewHolder;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcDynamicListFragment
    public void onResponse(List<DynamicBean> list, @NonNull FaceCastBaseResponse<List<DynamicBean>> faceCastBaseResponse) {
        super.onResponse(list, faceCastBaseResponse);
        if (this.f22757j) {
            getRecyclerView().scrollToPosition(0);
            this.f22757j = false;
        }
    }
}
