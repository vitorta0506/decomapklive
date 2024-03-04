package com.guochao.faceshow.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.R;
import com.guochao.faceshow.activity.ZTCVideoEditerActivity;
import com.guochao.faceshow.utils.TCVideoEditerWrapper;
import com.guochao.faceshow.views.RangeSliderViewContainer;
import com.guochao.faceshow.views.SliderViewContainer;
import com.guochao.faceshow.views.s;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.TXVideoEditer;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class TCTimeFragment extends Fragment implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private int f25262a = -1;

    /* renamed from: b  reason: collision with root package name */
    private TextView f25263b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f25264c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f25265d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f25266e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f25267f;

    /* renamed from: g  reason: collision with root package name */
    private TXVideoEditer f25268g;

    /* renamed from: h  reason: collision with root package name */
    private s f25269h;

    /* renamed from: i  reason: collision with root package name */
    private SliderViewContainer f25270i;

    /* renamed from: j  reason: collision with root package name */
    private SliderViewContainer f25271j;

    /* renamed from: k  reason: collision with root package name */
    private VideoWorkProgressFragment f25272k;

    /* renamed from: l  reason: collision with root package name */
    private long f25273l;

    /* renamed from: m  reason: collision with root package name */
    private RangeSliderViewContainer f25274m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements SliderViewContainer.b {
        a() {
        }

        @Override // com.guochao.faceshow.views.SliderViewContainer.b
        public void a(long j10) {
            if (TCTimeFragment.this.f25262a != 2) {
                TCTimeFragment.this.X1();
            }
            TCTimeFragment.this.f25262a = 2;
            ArrayList arrayList = new ArrayList();
            TXVideoEditConstants.TXRepeat tXRepeat = new TXVideoEditConstants.TXRepeat();
            tXRepeat.startTime = j10;
            tXRepeat.endTime = 1000 + j10;
            tXRepeat.repeatTimes = 3;
            arrayList.add(tXRepeat);
            TCTimeFragment.this.f25268g.setRepeatPlay(arrayList);
            TCTimeFragment.this.f25269h.B(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements SliderViewContainer.b {
        b() {
        }

        @Override // com.guochao.faceshow.views.SliderViewContainer.b
        public void a(long j10) {
            if (TCTimeFragment.this.f25262a != 1) {
                TCTimeFragment.this.X1();
            }
            TCTimeFragment.this.f25262a = 1;
            TCTimeFragment.this.e2(j10);
            TCTimeFragment.this.f25269h.B(j10);
        }
    }

    private void V1() {
        this.f25262a = -1;
        this.f25268g.setRepeatPlay(null);
    }

    private void W1() {
        this.f25262a = -1;
        this.f25268g.setReverse(false);
        TCVideoEditerWrapper.getInstance().setReverse(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1() {
        int i9 = this.f25262a;
        if (i9 == 1) {
            Y1();
        } else if (i9 == 2) {
            V1();
        } else if (i9 != 3) {
        } else {
            W1();
        }
    }

    private void Y1() {
        this.f25262a = -1;
        this.f25268g.setSpeedList(null);
    }

    private void Z1() {
        this.f25274m = new RangeSliderViewContainer(getActivity());
        if (this.f25269h == null) {
            this.f25269h = new s(this.f25273l);
        }
        RangeSliderViewContainer rangeSliderViewContainer = this.f25274m;
        s sVar = this.f25269h;
        long j10 = this.f25273l;
        rangeSliderViewContainer.n(sVar, 0L, j10, j10);
        this.f25269h.q(this.f25274m);
    }

    private void a2() {
        if (this.f25271j == null) {
            long y10 = this.f25269h.y();
            e2(y10);
            this.f25262a = 1;
            this.f25269h.B(y10);
            SliderViewContainer sliderViewContainer = new SliderViewContainer(getContext());
            this.f25271j = sliderViewContainer;
            sliderViewContainer.setStartTimeMs(y10);
            this.f25271j.setOnStartTimeChangedListener(new b());
            this.f25269h.r(this.f25271j);
            return;
        }
        long y11 = this.f25269h.y();
        e2(y11);
        this.f25262a = 1;
        this.f25271j.setStartTimeMs(y11);
        this.f25269h.B(y11);
    }

    private void b2(View view) {
        this.f25263b = (TextView) view.findViewById(R.id.time_tv_slogan);
        TextView textView = (TextView) view.findViewById(R.id.time_tv_cancel);
        this.f25264c = textView;
        textView.setOnClickListener(this);
        TextView textView2 = (TextView) view.findViewById(R.id.time_tv_speed);
        this.f25265d = textView2;
        textView2.setOnClickListener(this);
        this.f25265d.setSelected(true);
        TextView textView3 = (TextView) view.findViewById(R.id.time_tv_repeat);
        this.f25266e = textView3;
        textView3.setOnClickListener(this);
        TextView textView4 = (TextView) view.findViewById(R.id.time_tv_reverse);
        this.f25267f = textView4;
        textView4.setOnClickListener(this);
    }

    private void c2() {
        if (this.f25272k == null) {
            VideoWorkProgressFragment P1 = VideoWorkProgressFragment.P1("视频处理中...");
            this.f25272k = P1;
            P1.Q1(false);
        }
        this.f25272k.R1(0);
    }

    private void d2() {
        if (this.f25270i == null) {
            long y10 = this.f25269h.y();
            ArrayList arrayList = new ArrayList();
            TXVideoEditConstants.TXRepeat tXRepeat = new TXVideoEditConstants.TXRepeat();
            tXRepeat.startTime = y10;
            tXRepeat.endTime = 1000 + y10;
            tXRepeat.repeatTimes = 3;
            arrayList.add(tXRepeat);
            this.f25268g.setRepeatPlay(arrayList);
            SliderViewContainer sliderViewContainer = new SliderViewContainer(getContext());
            this.f25270i = sliderViewContainer;
            sliderViewContainer.setStartTimeMs(y10);
            this.f25270i.setOnStartTimeChangedListener(new a());
            this.f25269h.r(this.f25270i);
            this.f25270i.setVisibility(8);
            return;
        }
        long y11 = this.f25269h.y();
        ArrayList arrayList2 = new ArrayList();
        TXVideoEditConstants.TXRepeat tXRepeat2 = new TXVideoEditConstants.TXRepeat();
        tXRepeat2.startTime = y11;
        tXRepeat2.endTime = 1000 + y11;
        tXRepeat2.repeatTimes = 3;
        arrayList2.add(tXRepeat2);
        this.f25268g.setRepeatPlay(arrayList2);
        this.f25270i.setStartTimeMs(y11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2(long j10) {
        ArrayList arrayList = new ArrayList();
        TXVideoEditConstants.TXSpeed tXSpeed = new TXVideoEditConstants.TXSpeed();
        tXSpeed.startTime = j10;
        long j11 = 500 + j10;
        tXSpeed.endTime = j11;
        tXSpeed.speedLevel = 1;
        arrayList.add(tXSpeed);
        TXVideoEditConstants.TXSpeed tXSpeed2 = new TXVideoEditConstants.TXSpeed();
        tXSpeed2.startTime = j11;
        long j12 = 1000 + j10;
        tXSpeed2.endTime = j12;
        tXSpeed2.speedLevel = 0;
        arrayList.add(tXSpeed2);
        TXVideoEditConstants.TXSpeed tXSpeed3 = new TXVideoEditConstants.TXSpeed();
        tXSpeed3.startTime = j12;
        tXSpeed3.endTime = j10 + 1500;
        tXSpeed3.speedLevel = 1;
        arrayList.add(tXSpeed3);
        this.f25268g.setSpeedList(arrayList);
    }

    private void f2() {
        this.f25263b.setText("无特效");
        this.f25264c.setSelected(true);
        this.f25265d.setSelected(false);
        this.f25266e.setSelected(false);
        this.f25267f.setSelected(false);
        SliderViewContainer sliderViewContainer = this.f25270i;
        if (sliderViewContainer != null) {
            sliderViewContainer.setVisibility(8);
        }
        SliderViewContainer sliderViewContainer2 = this.f25271j;
        if (sliderViewContainer2 != null) {
            sliderViewContainer2.setVisibility(8);
        }
    }

    private void g2() {
        d2();
        this.f25263b.setText(R.string.video_repeate_segment);
        this.f25264c.setSelected(false);
        this.f25265d.setSelected(false);
        this.f25266e.setSelected(true);
        this.f25267f.setSelected(false);
        SliderViewContainer sliderViewContainer = this.f25271j;
        if (sliderViewContainer != null && sliderViewContainer.getVisibility() == 0) {
            this.f25271j.setVisibility(8);
        }
        if (this.f25270i.getVisibility() == 8) {
            this.f25270i.setVisibility(0);
        }
        this.f25262a = 2;
    }

    private void h2() {
        this.f25263b.setText(R.string.video_reverse);
        this.f25265d.setSelected(false);
        this.f25264c.setSelected(false);
        this.f25266e.setSelected(false);
        this.f25267f.setSelected(true);
        SliderViewContainer sliderViewContainer = this.f25270i;
        if (sliderViewContainer != null) {
            sliderViewContainer.setVisibility(8);
        }
        SliderViewContainer sliderViewContainer2 = this.f25271j;
        if (sliderViewContainer2 != null) {
            sliderViewContainer2.setVisibility(8);
        }
    }

    private void i2() {
        a2();
        this.f25263b.setText(R.string.video_editer_set_speed);
        this.f25265d.setSelected(true);
        this.f25266e.setSelected(false);
        this.f25264c.setSelected(false);
        this.f25267f.setSelected(false);
        SliderViewContainer sliderViewContainer = this.f25270i;
        if (sliderViewContainer != null) {
            sliderViewContainer.setVisibility(8);
        }
        if (this.f25271j.getVisibility() == 8) {
            this.f25271j.setVisibility(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.time_tv_cancel /* 2131364771 */:
                if (this.f25262a == -1) {
                    return;
                }
                X1();
                f2();
                ((ZTCVideoEditerActivity) getActivity()).S1();
                ((ZTCVideoEditerActivity) getActivity()).U1(false);
                return;
            case R.id.time_tv_repeat /* 2131364772 */:
                if (this.f25262a == 2) {
                    return;
                }
                X1();
                g2();
                ((ZTCVideoEditerActivity) getActivity()).S1();
                ((ZTCVideoEditerActivity) getActivity()).U1(true);
                return;
            case R.id.time_tv_reverse /* 2131364773 */:
                if (this.f25262a == 3) {
                    return;
                }
                X1();
                h2();
                this.f25268g.setReverse(true);
                this.f25262a = 3;
                TCVideoEditerWrapper.getInstance().setReverse(true);
                ((ZTCVideoEditerActivity) getActivity()).S1();
                ((ZTCVideoEditerActivity) getActivity()).U1(true);
                return;
            case R.id.time_tv_slogan /* 2131364774 */:
            default:
                return;
            case R.id.time_tv_speed /* 2131364775 */:
                if (this.f25262a == 1) {
                    return;
                }
                X1();
                i2();
                ((ZTCVideoEditerActivity) getActivity()).S1();
                ((ZTCVideoEditerActivity) getActivity()).U1(true);
                return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_time, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z10) {
        TextView textView;
        TextView textView2;
        super.onHiddenChanged(z10);
        if (this.f25270i != null && (textView2 = this.f25266e) != null && textView2.isSelected()) {
            this.f25270i.setVisibility(z10 ? 8 : 0);
        }
        if (this.f25271j == null || (textView = this.f25265d) == null || !textView.isSelected()) {
            return;
        }
        this.f25271j.setVisibility(z10 ? 8 : 0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        TCVideoEditerWrapper tCVideoEditerWrapper = TCVideoEditerWrapper.getInstance();
        this.f25268g = tCVideoEditerWrapper.getEditer();
        this.f25269h = ((ZTCVideoEditerActivity) getActivity()).D1();
        this.f25273l = tCVideoEditerWrapper.getTXVideoInfo().duration;
        b2(view);
        f2();
        c2();
        Z1();
    }
}
