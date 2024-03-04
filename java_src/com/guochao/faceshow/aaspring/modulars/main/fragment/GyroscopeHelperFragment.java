package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener2;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.views.GyroscopeImageView;
@Deprecated
/* loaded from: classes3.dex */
public class GyroscopeHelperFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    SensorManager f20729a;

    /* renamed from: b  reason: collision with root package name */
    private a f20730b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f20731c = false;

    /* renamed from: d  reason: collision with root package name */
    private Sensor f20732d;

    /* renamed from: e  reason: collision with root package name */
    GyroscopeImageView f20733e;

    /* loaded from: classes3.dex */
    class a implements SensorEventListener2 {
        a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i9) {
        }

        @Override // android.hardware.SensorEventListener2
        public void onFlushCompleted(Sensor sensor) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent == null || sensorEvent.sensor == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            GyroscopeHelperFragment.this.f20733e.setTranslationX(f10 * 2.0f);
            GyroscopeHelperFragment.this.f20733e.setTranslationY((-f11) * 1.5f);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return 0;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f20733e = (GyroscopeImageView) getActivity().findViewById(R.id.main_tabs).findViewById(R.id.tab_icon);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        SensorManager sensorManager = (SensorManager) getActivity().getSystemService("sensor");
        this.f20729a = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(1);
        this.f20732d = defaultSensor;
        if (defaultSensor != null) {
            this.f20731c = true;
        }
        this.f20730b = new a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f20731c) {
            this.f20729a.registerListener(this.f20730b, this.f20732d, 2);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.f20731c) {
            this.f20729a.unregisterListener(this.f20730b, this.f20732d);
        }
    }
}
