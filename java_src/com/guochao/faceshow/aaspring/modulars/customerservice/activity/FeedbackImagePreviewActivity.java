package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.lifecycle.Observer;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.beans.FeedbackFileInfo;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.modulars.customerservice.fragment.FeedbackImagePreviewFragment;
import com.guochao.faceshow.aaspring.modulars.customerservice.helper.FeedbackImageViewModel;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
import d7.e;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class FeedbackImagePreviewActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    FeedbackImageViewModel f17410a;

    /* renamed from: b  reason: collision with root package name */
    int f17411b;
    @BindView
    ViewPager mViewPager;

    /* loaded from: classes3.dex */
    public static class FragmentAdapter extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private List<MediaInfo> f17412a;

        public FragmentAdapter(@NonNull @NotNull FragmentManager fragmentManager, List<MediaInfo> list) {
            super(fragmentManager);
            this.f17412a = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f17412a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        @NonNull
        public Fragment getItem(int i9) {
            return FeedbackImagePreviewFragment.P1(this.f17412a.get(i9));
        }
    }

    /* loaded from: classes3.dex */
    class a implements Observer<List<LocalImageOrVideoBean>> {
        a() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(List<LocalImageOrVideoBean> list) {
            List e02 = FeedbackImagePreviewActivity.this.e0(list);
            FeedbackImagePreviewActivity feedbackImagePreviewActivity = FeedbackImagePreviewActivity.this;
            feedbackImagePreviewActivity.mViewPager.setAdapter(new FragmentAdapter(feedbackImagePreviewActivity.getSupportFragmentManager(), e02));
            FeedbackImagePreviewActivity feedbackImagePreviewActivity2 = FeedbackImagePreviewActivity.this;
            feedbackImagePreviewActivity2.mViewPager.setCurrentItem(feedbackImagePreviewActivity2.f17411b);
            FeedbackImagePreviewActivity feedbackImagePreviewActivity3 = FeedbackImagePreviewActivity.this;
            feedbackImagePreviewActivity3.i0(feedbackImagePreviewActivity3.f17411b);
        }
    }

    /* loaded from: classes3.dex */
    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            FeedbackImagePreviewActivity.this.i0(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<MediaInfo> e0(List<LocalImageOrVideoBean> list) {
        ArrayList arrayList = new ArrayList();
        LocalImageOrVideoBean localImageOrVideoBean = list.get(this.f17411b);
        int size = list.size();
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            LocalImageOrVideoBean localImageOrVideoBean2 = list.get(i10);
            MediaInfo mediaInfo = new MediaInfo();
            mediaInfo.f17415c = localImageOrVideoBean2.getPath();
            mediaInfo.f17414b = localImageOrVideoBean2.getThumbnailPath();
            mediaInfo.f17413a = true;
            mediaInfo.d(localImageOrVideoBean2.getDisplayUri());
            boolean z10 = localImageOrVideoBean2.getFileType() == 1;
            mediaInfo.f17416d = z10;
            if (z10) {
                arrayList.add(mediaInfo);
                if (localImageOrVideoBean2 == localImageOrVideoBean) {
                    this.f17411b = i9;
                }
                i9++;
            }
        }
        return arrayList;
    }

    private List<MediaInfo> g0(List<FeedbackFileInfo> list) {
        ArrayList arrayList = new ArrayList();
        FeedbackFileInfo feedbackFileInfo = list.get(this.f17411b);
        int size = list.size();
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            FeedbackFileInfo feedbackFileInfo2 = list.get(i10);
            MediaInfo mediaInfo = new MediaInfo();
            mediaInfo.f17415c = feedbackFileInfo2.getUrl();
            mediaInfo.f17414b = feedbackFileInfo2.getSmallUrl();
            mediaInfo.f17413a = false;
            boolean z10 = feedbackFileInfo2.getFileType() == 2;
            mediaInfo.f17416d = z10;
            if (z10) {
                arrayList.add(mediaInfo);
                if (feedbackFileInfo2 == feedbackFileInfo) {
                    this.f17411b = i9;
                }
                i9++;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(int i9) {
        ViewPager viewPager = this.mViewPager;
        if (viewPager == null || viewPager.getAdapter() == null) {
            return;
        }
        setTitle(String.format("%s/%s", Integer.valueOf(i9 + 1), Integer.valueOf(this.mViewPager.getAdapter().getCount())));
    }

    public static void l0(Context context, List<FeedbackFileInfo> list, int i9) {
        Intent intent = new Intent(context, FeedbackImagePreviewActivity.class);
        intent.putParcelableArrayListExtra("list", (ArrayList) list);
        intent.putExtra("position", i9);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).f(0).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_feedback_image_preview;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        TitleBackgroundView titleBackgroundView = (TitleBackgroundView) findViewById(R.id.float_title_back);
        titleBackgroundView.setBackgroundResource(R.color.real_black);
        titleBackgroundView.b(Color.parseColor("#DDDDDD"), 1);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setHomeAsUpIndicator(R.drawable.bitmap_ugc_back_white);
        }
        this.f17411b = getIntent().getIntExtra("position", 0);
        getWindow().setBackgroundDrawableResource(R.color.real_black);
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("list");
        if (parcelableArrayListExtra != null && !parcelableArrayListExtra.isEmpty()) {
            this.mViewPager.setAdapter(new FragmentAdapter(getSupportFragmentManager(), g0(new ArrayList(parcelableArrayListExtra))));
            this.mViewPager.setCurrentItem(this.f17411b);
            i0(this.f17411b);
        } else if (TextUtils.isEmpty(getIntent().getStringExtra("key"))) {
            finish();
            return;
        } else {
            FeedbackImageViewModel feedbackImageViewModel = (FeedbackImageViewModel) e.a().get(getIntent().getStringExtra("key"), FeedbackImageViewModel.class);
            this.f17410a = feedbackImageViewModel;
            feedbackImageViewModel.b().observe(this, new a());
        }
        this.mViewPager.addOnPageChangeListener(new b());
    }

    public void k0() {
        TitleBackgroundView titleBackgroundView = (TitleBackgroundView) findViewById(R.id.float_title_back);
        if (titleBackgroundView.getTranslationY() == 0.0f) {
            titleBackgroundView.animate().translationY(-titleBackgroundView.getMeasuredHeight()).start();
        } else {
            titleBackgroundView.animate().translationY(0.0f).start();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* loaded from: classes3.dex */
    public static class MediaInfo implements Parcelable {
        public static final Parcelable.Creator<MediaInfo> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        boolean f17413a;

        /* renamed from: b  reason: collision with root package name */
        String f17414b;

        /* renamed from: c  reason: collision with root package name */
        String f17415c;

        /* renamed from: d  reason: collision with root package name */
        boolean f17416d;

        /* renamed from: e  reason: collision with root package name */
        Uri f17417e;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<MediaInfo> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public MediaInfo createFromParcel(Parcel parcel) {
                return new MediaInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public MediaInfo[] newArray(int i9) {
                return new MediaInfo[i9];
            }
        }

        protected MediaInfo(Parcel parcel) {
            this.f17413a = parcel.readByte() != 0;
            this.f17414b = parcel.readString();
            this.f17415c = parcel.readString();
            this.f17416d = parcel.readByte() != 0;
            this.f17417e = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        }

        public String a() {
            return this.f17415c;
        }

        public String b() {
            return this.f17414b;
        }

        public Uri c() {
            return this.f17417e;
        }

        public void d(Uri uri) {
            this.f17417e = uri;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeByte(this.f17413a ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f17414b);
            parcel.writeString(this.f17415c);
            parcel.writeByte(this.f17416d ? (byte) 1 : (byte) 0);
            parcel.writeParcelable(this.f17417e, i9);
        }

        public MediaInfo() {
        }
    }
}
