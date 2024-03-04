package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.FriendSettingBean;
import com.guochao.faceshow.aaspring.beans.MultiLanguageBean;
import com.guochao.faceshow.aaspring.beans.ResidenceBean;
import com.guochao.faceshow.aaspring.utils.EmptyUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.views.RangeSeekBar;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class FindYouActivity extends BaseActivity {
    @BindView
    TextView ChooseFriendSetting;

    /* renamed from: a  reason: collision with root package name */
    private int f22219a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<ResidenceBean> f22220b;
    @BindView
    View btnSearch;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<MultiLanguageBean> f22221c;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<FriendSettingBean> f22222d;
    @BindView
    ImageView ivMan;
    @BindView
    ImageView ivUnlimited;
    @BindView
    ImageView ivWoman;
    @BindView
    RelativeLayout rlChooseFriendSetting;
    @BindView
    RelativeLayout rlChooseLanguage;
    @BindView
    RelativeLayout rlResidence;
    @BindView
    RangeSeekBar rsbYear;
    @BindView
    TextView tvChooseLanguage;
    @BindView
    TextView tvFriendSetting;
    @BindView
    TextView tvMan;
    @BindView
    TextView tvMax;
    @BindView
    TextView tvMin;
    @BindView
    TextView tvResidence;
    @BindView
    TextView tvUnlimited;
    @BindView
    TextView tvWonam;

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_find_you;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.ugc_find_you);
        if (BaseConfig.isChinese()) {
            this.rlResidence.setVisibility(8);
            this.rlChooseLanguage.setVisibility(8);
        }
        if (!EmptyUtils.isEmpty(Integer.valueOf(getCurrentUser().getGender()))) {
            if (getCurrentUser().getGender() == 0) {
                this.f22219a = 1;
                this.ivMan.setImageResource(R.mipmap.icon_ugc_selected_male);
            } else if (getCurrentUser().getGender() == 1) {
                this.f22219a = 0;
                this.ivWoman.setImageResource(R.mipmap.icon_ugc_selected_female);
            } else {
                this.f22219a = 2;
                this.ivUnlimited.setImageResource(R.mipmap.icon_ugc_selected_limit);
            }
        } else {
            this.f22219a = 2;
            this.ivUnlimited.setImageResource(R.mipmap.icon_ugc_selected_limit);
        }
        this.rsbYear.r(18.0f, 51.0f);
        this.rsbYear.q(18.0f, 35.0f);
        this.rsbYear.setIndicatorTextDecimalFormat("0");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    @RequiresApi(api = 24)
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 1003) {
            if (intent != null) {
                if (this.f22221c == null) {
                    this.f22221c = new ArrayList<>();
                }
                this.f22221c.clear();
                ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(BaseConfig.RESUlT_FIND_LANGUAGE);
                if (parcelableArrayListExtra != null && parcelableArrayListExtra.size() > 0) {
                    StringBuilder sb2 = new StringBuilder();
                    if (parcelableArrayListExtra.size() > 0) {
                        this.f22221c.addAll(parcelableArrayListExtra);
                    }
                    Iterator<MultiLanguageBean> it = this.f22221c.iterator();
                    while (it.hasNext()) {
                        sb2.append(it.next().getLanguage());
                        sb2.append("  ");
                    }
                    this.tvChooseLanguage.setText(sb2);
                    this.tvChooseLanguage.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_1));
                    return;
                }
                this.tvChooseLanguage.setText(R.string.ugc_select_language);
                this.tvChooseLanguage.setTextColor(ContextCompat.getColor(this, R.color.text2));
            }
        } else if (i9 == 1004) {
            if (intent != null) {
                if (this.f22220b == null) {
                    this.f22220b = new ArrayList<>();
                }
                this.f22220b.clear();
                ArrayList parcelableArrayListExtra2 = intent.getParcelableArrayListExtra(BaseConfig.RESUlT_FIND_RESIDENCE);
                if (parcelableArrayListExtra2 != null && parcelableArrayListExtra2.size() > 0) {
                    StringBuilder sb3 = new StringBuilder();
                    if (parcelableArrayListExtra2.size() > 0) {
                        Iterator it2 = parcelableArrayListExtra2.iterator();
                        while (it2.hasNext()) {
                            this.f22220b.add((ResidenceBean) it2.next());
                        }
                    }
                    Iterator<ResidenceBean> it3 = this.f22220b.iterator();
                    while (it3.hasNext()) {
                        sb3.append(it3.next().getCname());
                        sb3.append("  ");
                    }
                    this.tvResidence.setText(sb3);
                    this.tvResidence.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_1));
                    return;
                }
                this.tvResidence.setText(R.string.ugc_select_residence);
                this.tvResidence.setTextColor(ContextCompat.getColor(this, R.color.text2));
            }
        } else if (i9 != 1007 || intent == null) {
        } else {
            if (this.f22222d == null) {
                this.f22222d = new ArrayList<>();
            }
            this.f22222d.clear();
            ArrayList parcelableArrayListExtra3 = intent.getParcelableArrayListExtra(BaseConfig.RESUlT_FIND_FRIEND_SETTING);
            if (parcelableArrayListExtra3 != null && parcelableArrayListExtra3.size() > 0) {
                StringBuilder sb4 = new StringBuilder();
                if (parcelableArrayListExtra3.size() > 0) {
                    Iterator it4 = parcelableArrayListExtra3.iterator();
                    while (it4.hasNext()) {
                        this.f22222d.add((FriendSettingBean) it4.next());
                    }
                }
                Iterator<FriendSettingBean> it5 = this.f22222d.iterator();
                while (it5.hasNext()) {
                    sb4.append(it5.next().getTname());
                    sb4.append("  ");
                }
                this.ChooseFriendSetting.setText(sb4);
                this.ChooseFriendSetting.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_1));
                return;
            }
            this.ChooseFriendSetting.setText(R.string.friend_setting_state);
            this.ChooseFriendSetting.setTextColor(ContextCompat.getColor(this, R.color.text2));
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.btn_search /* 2131362200 */:
                Intent intent = new Intent(this, FindYouListActivity.class);
                intent.putParcelableArrayListExtra("languageList", this.f22221c);
                intent.putParcelableArrayListExtra("residence", this.f22220b);
                intent.putParcelableArrayListExtra("friendSetting", this.f22222d);
                intent.putExtra("minYear", (int) this.rsbYear.getLeftSeekBar().s());
                intent.putExtra("maxYear", (int) this.rsbYear.getRightSeekBar().s());
                intent.putExtra("sex", this.f22219a);
                startActivity(intent);
                EventTrackingUtils.getInstance().track(EventTrackingUtils.UGC_MEET_ME_SEARCH_CLICK);
                return;
            case R.id.ll_iv_man /* 2131363541 */:
                this.ivMan.setImageResource(R.mipmap.icon_ugc_selected_male);
                this.tvMan.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_1));
                this.ivWoman.setImageResource(R.mipmap.icon_ugc_unselected_female);
                this.tvWonam.setTextColor(ContextCompat.getColor(this, R.color.hostSearchTitle));
                this.ivUnlimited.setImageResource(R.mipmap.icon_ugc_unselected_unlimited);
                this.tvUnlimited.setTextColor(ContextCompat.getColor(this, R.color.hostSearchTitle));
                this.f22219a = 1;
                return;
            case R.id.ll_iv_unlimited /* 2131363542 */:
                this.ivUnlimited.setImageResource(R.mipmap.icon_ugc_selected_limit);
                this.tvUnlimited.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_1));
                this.ivMan.setImageResource(R.mipmap.icon_ugc_unselected_male);
                this.tvMan.setTextColor(ContextCompat.getColor(this, R.color.hostSearchTitle));
                this.ivWoman.setImageResource(R.mipmap.icon_ugc_unselected_female);
                this.tvWonam.setTextColor(ContextCompat.getColor(this, R.color.hostSearchTitle));
                this.f22219a = 2;
                return;
            case R.id.ll_iv_woman /* 2131363543 */:
                this.ivWoman.setImageResource(R.mipmap.icon_ugc_selected_female);
                this.tvWonam.setTextColor(ContextCompat.getColor(this, R.color.color_ugc_text_level_1));
                this.ivMan.setImageResource(R.mipmap.icon_ugc_unselected_male);
                this.tvMan.setTextColor(ContextCompat.getColor(this, R.color.hostSearchTitle));
                this.ivUnlimited.setImageResource(R.mipmap.icon_ugc_unselected_unlimited);
                this.tvUnlimited.setTextColor(ContextCompat.getColor(this, R.color.hostSearchTitle));
                this.f22219a = 0;
                return;
            case R.id.rl_choose_friend_setting /* 2131364283 */:
                Intent intent2 = new Intent(this, ChooseFriendSettingActivity.class);
                intent2.putParcelableArrayListExtra(BaseConfig.RESUlT_FIND_FRIEND_SETTING, this.f22222d);
                startActivityForResult(intent2, 1007);
                return;
            case R.id.rl_choose_language /* 2131364284 */:
                Intent intent3 = new Intent(this, ChooseLanguageActivity.class);
                intent3.putParcelableArrayListExtra(BaseConfig.RESUlT_FIND_LANGUAGE, this.f22221c);
                startActivityForResult(intent3, 1003);
                return;
            case R.id.rl_residence /* 2131364296 */:
                Intent intent4 = new Intent(this, ChooseResidenceActivity.class);
                intent4.putParcelableArrayListExtra(BaseConfig.RESUlT_FIND_RESIDENCE, this.f22220b);
                startActivityForResult(intent4, 1004);
                return;
            default:
                return;
        }
    }
}
