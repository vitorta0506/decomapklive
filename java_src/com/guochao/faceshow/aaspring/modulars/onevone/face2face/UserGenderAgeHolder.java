package com.guochao.faceshow.aaspring.modulars.onevone.face2face;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class UserGenderAgeHolder {
    @BindView
    TextView userAge;
    @BindView
    ImageView userGender;
    @Nullable
    @BindView
    ViewGroup userGenderLay;

    public UserGenderAgeHolder(View view) {
        ButterKnife.c(this, view);
        if (this.userGenderLay == null) {
            this.userGenderLay = (ViewGroup) view.findViewById(R.id.user_gender_age_1);
        }
    }

    public void a(@Nullable String str, int i9) {
        if (!TextUtils.isEmpty(str) && !"0".equals(str) && !"null".equals(str)) {
            this.userAge.setText(str);
            this.userAge.setVisibility(0);
            try {
                Integer.parseInt(str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            this.userAge.setText("");
            this.userAge.setVisibility(8);
        }
        if (i9 == 0) {
            this.userGender.setImageResource(R.mipmap.icon_ugc_female);
            this.userGenderLay.setVisibility(0);
            this.userGenderLay.setBackgroundResource(R.drawable.icon_user_center_female);
        } else if (i9 != 1) {
            this.userGenderLay.setVisibility(8);
            this.userGender.setImageResource(R.mipmap.icon_ugc_unlimited_bg);
            this.userGenderLay.setBackgroundResource(R.drawable.icon_user_center_none);
        } else {
            this.userGender.setImageResource(R.mipmap.icon_ugc_male);
            this.userGenderLay.setVisibility(0);
            this.userGenderLay.setBackgroundResource(R.drawable.icon_user_center_male);
        }
    }
}
