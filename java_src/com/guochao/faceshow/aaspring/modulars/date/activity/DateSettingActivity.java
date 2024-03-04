package com.guochao.faceshow.aaspring.modulars.date.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.facebook.internal.AnalyticsEvents;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.beans.DataAuth;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.date.fragment.DatePriceSettingFragment;
import com.guochao.faceshow.aaspring.modulars.date.model.DatePriceSettingModel;
import com.guochao.faceshow.aaspring.modulars.date.viewmodel.DatePriceSettingViewModel;
import com.guochao.faceshow.databinding.ActivityDateSetBinding;
/* loaded from: classes3.dex */
public class DateSettingActivity extends GCCoreActivity {

    /* renamed from: a  reason: collision with root package name */
    DatePriceSettingViewModel f17517a;
    @GCViewBinding
    ActivityDateSetBinding viewBinding;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Observer<DatePriceSettingModel> {
        a() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(DatePriceSettingModel datePriceSettingModel) {
            if (datePriceSettingModel != null) {
                DateSettingActivity.this.viewBinding.tvVideoPrice.setText(String.format("%s/min", Integer.valueOf(datePriceSettingModel.getCurrentVideoPrice())));
                DateSettingActivity.this.viewBinding.tvVoicePrice.setText(String.format("%s/min", Integer.valueOf(datePriceSettingModel.getCurrentAudioPrice())));
                DateSettingActivity.this.e0(datePriceSettingModel.getAppointSetting());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DateSettingActivity.this.onViewClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DatePriceSettingFragment.instance(2).show(DateSettingActivity.this.getSupportFragmentManager(), AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DatePriceSettingFragment.instance(1).show(DateSettingActivity.this.getSupportFragmentManager(), "voice");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(@Nullable DataAuth dataAuth) {
        if (dataAuth == null) {
            return;
        }
        int appointAuth = dataAuth.getAppointAuth();
        if (appointAuth == 0) {
            this.viewBinding.tvPermissions.setText(getString(R.string.trtc_anybody));
        } else if (appointAuth == 1) {
            this.viewBinding.tvPermissions.setText(getString(R.string.trtc_just_fan));
        } else if (appointAuth == 2) {
            this.viewBinding.tvPermissions.setText(getString(R.string.trtc_only_friends_date));
        } else if (appointAuth != 3) {
        } else {
            this.viewBinding.tvPermissions.setText(getString(R.string.trtc_date_close));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onViewClicked() {
        DataAuth appointSetting;
        Intent intent = new Intent(getActivity(), LaunchPermissionsActivity.class);
        DatePriceSettingModel current = this.f17517a.current();
        if (current != null && (appointSetting = current.getAppointSetting()) != null) {
            intent.putExtra("appointAuth", appointSetting.getAppointAuth());
        }
        startActivityForResult(intent, 1011);
    }

    public void initView() {
        DatePriceSettingViewModel datePriceSettingViewModel = (DatePriceSettingViewModel) new ViewModelProvider(this).get(DatePriceSettingViewModel.class);
        this.f17517a = datePriceSettingViewModel;
        datePriceSettingViewModel.bind(this, new a());
        int intExtra = getIntent().getIntExtra("fromType", 1);
        this.viewBinding.tvVideoPrice.setText(String.format("%s/min", Integer.valueOf(i.u().s().getVideoDiamond())));
        this.viewBinding.tvVoicePrice.setText(String.format("%s/min", Integer.valueOf(i.u().s().getAudioDiamond())));
        this.viewBinding.llPermissions.setOnClickListener(new b());
        this.viewBinding.videoSetting.setOnClickListener(new c());
        this.viewBinding.voiceSetting.setOnClickListener(new d());
        if (intExtra != 2) {
            setTitle(R.string.video_call_during_date_setting);
            this.viewBinding.info.setVisibility(0);
            return;
        }
        setTitle(R.string.video_call_during_living_setting_title);
        this.viewBinding.info.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        DataAuth appointSetting;
        super.onActivityResult(i9, i10, intent);
        if (i9 != 1011 || intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("name");
        int intExtra = intent.getIntExtra("appointAuth", -1);
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.viewBinding.tvPermissions.setText(stringExtra);
        DatePriceSettingModel current = this.f17517a.current();
        if (current == null || (appointSetting = current.getAppointSetting()) == null) {
            return;
        }
        appointSetting.setAppointAuth(intExtra);
        e0(appointSetting);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        initView();
    }
}
