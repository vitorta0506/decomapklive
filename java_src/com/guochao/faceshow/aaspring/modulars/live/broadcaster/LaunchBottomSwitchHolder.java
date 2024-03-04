package com.guochao.faceshow.aaspring.modulars.live.broadcaster;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import b8.e;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.view.AlwaysCenterLayout;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
/* loaded from: classes3.dex */
public class LaunchBottomSwitchHolder {

    /* renamed from: a  reason: collision with root package name */
    private ViewGroup f18379a;
    @BindView
    AlwaysCenterLayout bottomSwitchLay;

    /* renamed from: e  reason: collision with root package name */
    private a f18383e;
    @BindView
    View indicatorBottomEnd;
    @BindView
    View indicatorBottomMiddle;
    @BindView
    View indicatorBottomStart;
    @BindView
    TextView liveBottomEnd;
    @BindView
    TextView liveBottomMiddle;
    @BindView
    TextView liveBottomStart;

    /* renamed from: b  reason: collision with root package name */
    public int f18380b = 0;

    /* renamed from: c  reason: collision with root package name */
    TextView[] f18381c = new TextView[3];

    /* renamed from: d  reason: collision with root package name */
    View[] f18382d = new View[3];

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i9, boolean z10);
    }

    public LaunchBottomSwitchHolder(ViewGroup viewGroup) {
        this.f18379a = viewGroup;
        ButterKnife.c(this, viewGroup);
        TextView[] textViewArr = this.f18381c;
        textViewArr[0] = this.liveBottomStart;
        textViewArr[1] = this.liveBottomMiddle;
        textViewArr[2] = this.liveBottomEnd;
        View[] viewArr = this.f18382d;
        viewArr[0] = this.indicatorBottomStart;
        viewArr[1] = this.indicatorBottomMiddle;
        viewArr[2] = this.indicatorBottomEnd;
        viewGroup.setOnTouchListener(new View.OnTouchListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.c
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean b10;
                b10 = LaunchBottomSwitchHolder.b(view, motionEvent);
                return b10;
            }
        });
        BaseApplication baseApplication = BaseApplication.getInstance();
        f(SpUtils.getInt(baseApplication, "live_index" + e.g().getUserId(), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean b(View view, MotionEvent motionEvent) {
        return true;
    }

    private void f(int i9) {
        this.f18380b = i9;
        this.bottomSwitchLay.setCurrentIndex(i9);
        if (i9 == 0) {
            g();
        } else if (i9 == 1) {
            h();
        } else if (i9 == 2) {
            i();
        }
        for (int i10 = 0; i10 < 3; i10++) {
            TextView textView = this.f18381c[i10];
            if (i10 == i9) {
                textView.setTextColor(ContextCompat.getColor(this.f18379a.getContext(), R.color.white));
                TextViewUtils.setCustomBold(R.dimen.text_bold_level_4, textView);
                this.f18382d[i10].setVisibility(0);
            } else {
                textView.setTextColor(ContextCompat.getColor(this.f18379a.getContext(), R.color.live_80_white));
                TextViewUtils.setCustomBold(R.dimen.text_bold_level_1, textView);
                this.f18382d[i10].setVisibility(4);
            }
        }
    }

    private void g() {
        e(true);
    }

    public void c() {
        int i9 = this.f18380b;
        if (i9 >= 2) {
            return;
        }
        if (i9 != 1 || FeatureKt.requireFeature(Feature.VOICE_ROOM_SWITCH).isAvailable()) {
            int i10 = this.f18380b + 1;
            this.f18380b = i10;
            f(i10);
        }
    }

    public void d() {
        int i9 = this.f18380b;
        if (i9 <= 0) {
            return;
        }
        int i10 = i9 - 1;
        this.f18380b = i10;
        f(i10);
    }

    public void e(boolean z10) {
        a aVar = this.f18383e;
        if (aVar != null) {
            aVar.a(0, z10);
        }
    }

    public void h() {
        a aVar = this.f18383e;
        if (aVar != null) {
            aVar.a(1, true);
        }
    }

    public void i() {
        a aVar;
        if (FeatureKt.requireFeature(Feature.VOICE_ROOM_SWITCH).isAvailable() && (aVar = this.f18383e) != null) {
            aVar.a(2, true);
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.bottom_end_lay) {
            f(2);
        } else if (id2 == R.id.bottom_middle_lay) {
            f(1);
        } else if (id2 != R.id.bottom_start_lay) {
        } else {
            f(0);
        }
    }

    public void setOnSwitchListener(a aVar) {
        this.f18383e = aVar;
        BaseApplication baseApplication = BaseApplication.getInstance();
        f(SpUtils.getInt(baseApplication, "live_index" + e.g().getUserId(), 0));
    }
}
