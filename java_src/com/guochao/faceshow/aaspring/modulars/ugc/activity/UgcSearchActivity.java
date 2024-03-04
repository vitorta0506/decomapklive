package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.beans.UgcSearchEventBean;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.UgcSearchActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.ComprehensiveFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.MusicFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.PlaceFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.TopicFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.UserFragMent;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.VoiceRoomFragment;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PerMissionsUtils;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.aaspring.views.q;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
/* loaded from: classes3.dex */
public class UgcSearchActivity extends BaseActivity {

    /* renamed from: d  reason: collision with root package name */
    private String f22438d;
    @BindView
    ImageView deleteDdit;
    @BindView
    EditText etSearch;

    /* renamed from: h  reason: collision with root package name */
    private int f22442h;
    @BindView
    ImageView ivBack;
    @BindView
    ImageView scan;
    @BindView
    TabLayout tabs;
    @BindView
    RtlViewPager viewPager;

    /* renamed from: a  reason: collision with root package name */
    private List<String> f22435a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private List<Fragment> f22436b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private int f22437c = 0;

    /* renamed from: e  reason: collision with root package name */
    private Handler f22439e = new Handler();

    /* renamed from: f  reason: collision with root package name */
    private long f22440f = 0;

    /* renamed from: g  reason: collision with root package name */
    private Runnable f22441g = new a();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UgcSearchActivity ugcSearchActivity = UgcSearchActivity.this;
            ugcSearchActivity.B0(ugcSearchActivity.f22437c);
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() > 0) {
                UgcSearchActivity.this.deleteDdit.setVisibility(0);
            } else {
                UgcSearchActivity.this.deleteDdit.setVisibility(8);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            if (UgcSearchActivity.this.f22442h == 1) {
                UgcSearchActivity.this.f22442h = 0;
            } else if (FileUtils.isNetworkConnected(UgcSearchActivity.this)) {
                if (UgcSearchActivity.this.f22440f == 0) {
                    UgcSearchActivity.this.f22440f = System.currentTimeMillis();
                }
                if (System.currentTimeMillis() - UgcSearchActivity.this.f22440f <= 700) {
                    UgcSearchActivity.this.f22439e.removeCallbacks(UgcSearchActivity.this.f22441g);
                }
                UgcSearchActivity.this.f22440f = System.currentTimeMillis();
                UgcSearchActivity.this.f22439e.postDelayed(UgcSearchActivity.this.f22441g, 700L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f22445a;

        c(List list) {
            this.f22445a = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            UgcSearchActivity ugcSearchActivity = UgcSearchActivity.this;
            ugcSearchActivity.B0(ugcSearchActivity.f22437c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            UgcSearchActivity ugcSearchActivity = UgcSearchActivity.this;
            ugcSearchActivity.B0(ugcSearchActivity.f22437c);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            if (this.f22445a.size() > i9) {
                EventTrackingV2Utils.INSTANCE.track((String) this.f22445a.get(i9));
            }
            UgcSearchActivity.this.f22437c = i9;
            if (FileUtils.isNetworkConnected(UgcSearchActivity.this)) {
                if (TextUtils.isEmpty(UgcSearchActivity.this.f22438d)) {
                    if (UgcSearchActivity.this.f22437c == 0) {
                        UgcSearchActivity ugcSearchActivity = UgcSearchActivity.this;
                        ugcSearchActivity.B0(ugcSearchActivity.f22437c);
                        return;
                    }
                    new Handler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.q
                        @Override // java.lang.Runnable
                        public final void run() {
                            UgcSearchActivity.c.this.c();
                        }
                    }, 100L);
                } else if (UgcSearchActivity.this.f22437c == 0) {
                    EditText editText = UgcSearchActivity.this.etSearch;
                    if (editText != null) {
                        editText.getText().toString();
                        if (UgcSearchActivity.this.f22438d.equals(UgcSearchActivity.this.etSearch.getText().toString())) {
                            return;
                        }
                        UgcSearchActivity ugcSearchActivity2 = UgcSearchActivity.this;
                        ugcSearchActivity2.B0(ugcSearchActivity2.f22437c);
                    }
                } else {
                    new Handler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.p
                        @Override // java.lang.Runnable
                        public final void run() {
                            UgcSearchActivity.c.this.d();
                        }
                    }, 100L);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends FragmentPagerAdapter {
        public d(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return UgcSearchActivity.this.f22436b.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i9) {
            return (Fragment) UgcSearchActivity.this.f22436b.get(i9);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i9) {
            return (CharSequence) UgcSearchActivity.this.f22435a.get(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(View view) {
        if (PerMissionsUtils.lacksPermissions(getActivity(), "android.permission.CAMERA")) {
            u0();
        } else {
            ScanActivity.m0(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0(int i9) {
        UgcSearchEventBean ugcSearchEventBean = new UgcSearchEventBean();
        EditText editText = this.etSearch;
        if (editText != null) {
            if (!TextUtils.isEmpty(editText.getText().toString())) {
                ugcSearchEventBean.setText(this.etSearch.getText().toString());
            } else {
                ugcSearchEventBean.setText("");
            }
        } else {
            ugcSearchEventBean.setText("");
        }
        ugcSearchEventBean.setType(i9);
        EventBus.getDefault().post(ugcSearchEventBean);
    }

    private void u0() {
        new com.tbruyelle.rxpermissions2.a(this).o("android.permission.CAMERA").subscribe(new vh.g() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.o
            @Override // vh.g
            public final void accept(Object obj) {
                UgcSearchActivity.this.v0((te.a) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(te.a aVar) throws Exception {
        if (aVar.f58133b) {
            ScanActivity.m0(this);
            LogUtils.d("PeopleNearbyActivity", aVar.f58132a + " is granted.");
        } else if (aVar.f58134c) {
            LogUtils.d("PeopleNearbyActivity", aVar.f58132a + " is denied. More info should be provided.");
        } else {
            PerMissionsUtils.checkPermission(getActivity());
            LogUtils.d("PeopleNearbyActivity", aVar.f58132a + " is denied.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean y0(TextView textView, int i9, KeyEvent keyEvent) {
        if (i9 == 3) {
            if (FileUtils.isNetworkConnected(this)) {
                if (!TextUtils.isEmpty(this.etSearch.getText().toString())) {
                    int i10 = this.f22437c;
                    if (i10 == 0) {
                        this.f22438d = this.etSearch.getText().toString();
                        B0(6);
                    } else {
                        B0(i10);
                    }
                }
                hideSoftKeyboard();
            }
            hideSoftKeyboard();
            return true;
        }
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        if (EventBus.getDefault().isRegistered(this)) {
            return R.layout.activity_ugc_search;
        }
        EventBus.getDefault().register(this);
        return R.layout.activity_ugc_search;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (Build.VERSION.SDK_INT >= 23) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 8192);
        }
        this.etSearch.setFocusable(true);
        this.etSearch.setFocusableInTouchMode(true);
        this.etSearch.requestFocus();
        ComprehensiveFragment comprehensiveFragment = new ComprehensiveFragment();
        UserFragMent userFragMent = new UserFragMent();
        VoiceRoomFragment f22 = VoiceRoomFragment.f2("");
        TopicFragment topicFragment = new TopicFragment();
        PlaceFragment placeFragment = new PlaceFragment();
        MusicFragment musicFragment = new MusicFragment();
        this.f22435a.add(getString(R.string.ugc_comprehensive));
        this.f22435a.add(getString(R.string.found_search_user));
        this.f22435a.add(getString(R.string.voice_room_room));
        this.f22435a.add(getString(R.string.found_search_topic));
        this.f22435a.add(getString(R.string.ugc_place));
        if (!BaseConfig.isChinese()) {
            this.f22435a.add(getString(R.string.music));
        }
        this.f22436b.add(comprehensiveFragment);
        this.f22436b.add(userFragMent);
        this.f22436b.add(f22);
        this.f22436b.add(topicFragment);
        this.f22436b.add(placeFragment);
        if (!BaseConfig.isChinese()) {
            this.f22436b.add(musicFragment);
        }
        this.viewPager.setAdapter(new d(getSupportFragmentManager()));
        this.tabs.setupWithViewPager(this.viewPager);
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.m
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
                boolean y02;
                y02 = UgcSearchActivity.this.y0(textView, i9, keyEvent);
                return y02;
            }
        });
        this.etSearch.addTextChangedListener(new b());
        ArrayList arrayList = new ArrayList();
        arrayList.add(EventTrackingV2Utils.ugc_search_multiple);
        arrayList.add(EventTrackingV2Utils.ugc_search_user);
        arrayList.add(EventTrackingV2Utils.ugc_search_voice);
        arrayList.add(EventTrackingV2Utils.ugc_search_topic);
        arrayList.add(EventTrackingV2Utils.ugc_search_address);
        arrayList.add(EventTrackingV2Utils.ugc_search_music);
        this.viewPager.addOnPageChangeListener(new c(arrayList));
        com.guochao.faceshow.aaspring.views.q.c(new q.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.activity.n
            @Override // com.guochao.faceshow.aaspring.views.q.a
            public final void a(Object obj) {
                UgcSearchActivity.this.A0((View) obj);
            }
        }, this.scan);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 != 1001 || intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("codedContent");
        String personalInformationScan = com.guochao.faceshow.aaspring.manager.i.u().s().getPersonalInformationScan();
        if (stringExtra.contains(personalInformationScan)) {
            Intent intent2 = new Intent(getActivity(), UserHomePageAct.class);
            intent2.putExtra(Contants.USER_ID, stringExtra.replace(personalInformationScan, ""));
            startActivity(intent2);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBus.getDefault().unregister(this);
        this.f22439e.removeCallbacks(this.f22441g);
        super.onDestroy();
    }

    @Subscribe
    public void onMessageEvent(UgcSearchEventBean ugcSearchEventBean) {
        if (ugcSearchEventBean.getType() == 10) {
            this.f22442h = 1;
            this.etSearch.setText(ugcSearchEventBean.getText());
            this.etSearch.setSelection(this.etSearch.getText().length());
            if (TextUtils.isEmpty(ugcSearchEventBean.getText())) {
                return;
            }
            this.deleteDdit.setVisibility(0);
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.delete_edit) {
            this.etSearch.setText("");
        } else if (id2 != R.id.iv_back) {
        } else {
            finish();
        }
    }
}
