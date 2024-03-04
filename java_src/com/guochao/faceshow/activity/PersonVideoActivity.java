package com.guochao.faceshow.activity;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.modulars.main.fragment.PersonalShortVideoFragment;
import com.guochao.faceshow.utils.Tool;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class PersonVideoActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private int f24735a;

    /* renamed from: b  reason: collision with root package name */
    private int f24736b;

    /* renamed from: c  reason: collision with root package name */
    private int f24737c = 1;

    /* renamed from: d  reason: collision with root package name */
    private int f24738d;

    /* renamed from: e  reason: collision with root package name */
    private String f24739e;

    /* loaded from: classes3.dex */
    public static class VideoUrlConfig implements Parcelable {
        public static final Parcelable.Creator<VideoUrlConfig> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f24740a;

        /* renamed from: b  reason: collision with root package name */
        HashMap<String, String> f24741b;

        /* renamed from: c  reason: collision with root package name */
        String f24742c;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<VideoUrlConfig> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public VideoUrlConfig createFromParcel(Parcel parcel) {
                return new VideoUrlConfig(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public VideoUrlConfig[] newArray(int i9) {
                return new VideoUrlConfig[i9];
            }
        }

        public VideoUrlConfig() {
        }

        public int a() {
            return this.f24740a;
        }

        public HashMap<String, String> b() {
            return this.f24741b;
        }

        public void c(int i9) {
            this.f24740a = i9;
        }

        public void d(HashMap<String, String> hashMap) {
            this.f24741b = hashMap;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void e(String str) {
            this.f24742c = str;
        }

        public String getUrl() {
            return this.f24742c;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeInt(this.f24740a);
            parcel.writeSerializable(this.f24741b);
            parcel.writeString(this.f24742c);
        }

        protected VideoUrlConfig(Parcel parcel) {
            this.f24740a = parcel.readInt();
            this.f24741b = (HashMap) parcel.readSerializable();
            this.f24742c = parcel.readString();
        }
    }

    @OnClick
    public void back(View view) {
        view.setVisibility(8);
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_video_list_play;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f24735a = getIntent().getIntExtra("position", 0);
        this.f24736b = getIntent().getIntExtra("type", 0);
        this.f24737c = getIntent().getIntExtra(PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE, this.f24737c);
        this.f24738d = getIntent().getIntExtra("currPage", 1);
        this.f24739e = getIntent().getStringExtra("url");
        VideoUrlConfig videoUrlConfig = (VideoUrlConfig) getIntent().getParcelableExtra("config");
        if (videoUrlConfig != null) {
            getSupportFragmentManager().beginTransaction().replace(R.id.main_layout, PersonalShortVideoFragment.T2(this.f24737c, this.f24735a, Tool.mDataList, videoUrlConfig)).commit();
        } else {
            getSupportFragmentManager().beginTransaction().replace(R.id.main_layout, PersonalShortVideoFragment.S2(this.f24737c, this.f24735a, Tool.mDataList)).commit();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        getWindow().addFlags(2097152);
        getWindow().addFlags(128);
        super.onCreate(bundle);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean shouldShowLiveFloatWindow() {
        return false;
    }
}
