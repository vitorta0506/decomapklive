package com.guochao.faceshow.aaspring.modulars.ugc.publish.activity;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.content.FileProvider;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.MediaFilesFragment;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.FragmentUtil;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.UriUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.light.utils.FileUtils;
@Route(path = RouterPath.ROUTER_APP_SIMPLE_MEDIA_ACTIVITY)
/* loaded from: classes3.dex */
public class SimpleMediaActivity extends BaseActivity implements MediaFilesFragment.g {

    /* renamed from: a  reason: collision with root package name */
    private MediaFilesFragment f22986a;

    /* renamed from: b  reason: collision with root package name */
    private File f22987b;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<String> f22989d;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<LocalImageOrVideoBean> f22988c = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private int f22990e = 9;

    /* loaded from: classes3.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            if (SimpleMediaActivity.this.f22986a != null) {
                SimpleMediaActivity.this.f22986a.e2();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends SimpleObserver<te.a> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            Uri fromFile;
            if (aVar.f58133b) {
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                if (intent.resolveActivity(SimpleMediaActivity.this.getPackageManager()) != null) {
                    SimpleMediaActivity simpleMediaActivity = SimpleMediaActivity.this;
                    String privateRootPathV2 = FilePathProvider.getPrivateRootPathV2("img");
                    simpleMediaActivity.f22987b = new File(privateRootPathV2, System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG);
                    if (Build.VERSION.SDK_INT >= 24) {
                        fromFile = FileProvider.getUriForFile(SimpleMediaActivity.this.getActivity(), BaseConfig.APP_PACKAGE_FILE_PROVIDERE, SimpleMediaActivity.this.f22987b);
                    } else {
                        fromFile = Uri.fromFile(SimpleMediaActivity.this.f22987b);
                    }
                    intent.putExtra("output", fromFile);
                    SimpleMediaActivity.this.startActivityForResult(intent, 201);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends SimpleObserver<te.a> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            if (aVar.f58133b) {
                Intent intent = new Intent("android.intent.action.GET_CONTENT");
                intent.setType("image/*");
                SimpleMediaActivity.this.startActivityForResult(intent, 202);
            }
        }
    }

    public static void g0(Activity activity, ArrayList<String> arrayList, int i9) {
        i0(activity, arrayList, 9, i9);
    }

    public static void i0(Activity activity, ArrayList<String> arrayList, int i9, int i10) {
        Intent intent = new Intent(activity, SimpleMediaActivity.class);
        intent.putStringArrayListExtra(Contants.PARAMS_KEY1, arrayList);
        intent.putExtra(Contants.PARAMS_KEY2, i9);
        activity.startActivityForResult(intent, i10);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_simple_media;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (getIntent() != null) {
            this.f22989d = getIntent().getStringArrayListExtra(Contants.PARAMS_KEY1);
            this.f22990e = getIntent().getIntExtra(Contants.PARAMS_KEY2, 9);
        }
        setTitle(R.string.ugc_publish_select_photo);
        FragmentUtil fragmentUtil = new FragmentUtil();
        ArrayList arrayList = new ArrayList();
        this.f22986a = new MediaFilesFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("MediaType", 101);
        bundle.putStringArrayList("SelectPaths", this.f22989d);
        bundle.putString("Confirm", getString(R.string.f16064ok));
        bundle.putBoolean("showBottom", false);
        bundle.putInt("maxCount", this.f22990e);
        this.f22986a.setArguments(bundle);
        arrayList.add(this.f22986a);
        fragmentUtil.initFragments(R.id.fragment_container, getSupportFragmentManager(), arrayList);
        fragmentUtil.showFragment(this.f22986a);
        setEndText(getString(R.string.f16064ok), R.color.color_ugc_text_level_2, -1);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
        EventBus.getDefault().register(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        Uri data;
        File uriToFile;
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1 && i9 == 201) {
            File file = this.f22987b;
            if (file != null && file.exists()) {
                LocalImageOrVideoBean localImageOrVideoBean = new LocalImageOrVideoBean(1);
                localImageOrVideoBean.setFileName(this.f22987b.getName());
                localImageOrVideoBean.setPath(this.f22987b.getPath());
                localImageOrVideoBean.setCreateTime(this.f22987b.lastModified());
                this.f22988c.add(localImageOrVideoBean);
            }
            MediaFilesFragment mediaFilesFragment = this.f22986a;
            if (mediaFilesFragment != null) {
                mediaFilesFragment.e2();
            }
        }
        if (i10 != -1 || i9 != 202 || intent == null || (data = intent.getData()) == null || (uriToFile = UriUtils.uriToFile(getActivity(), data)) == null) {
            return;
        }
        LocalImageOrVideoBean localImageOrVideoBean2 = new LocalImageOrVideoBean(1);
        localImageOrVideoBean2.setFileName(uriToFile.getName());
        localImageOrVideoBean2.setPath(uriToFile.getPath());
        localImageOrVideoBean2.setCreateTime(uriToFile.lastModified());
        this.f22988c.add(localImageOrVideoBean2);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.MediaFilesFragment.g
    public void onCameraClick(View view) {
        if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
            showToast(R.string.one_v_one_is_matching);
        } else {
            new com.tbruyelle.rxpermissions2.a(getActivity()).p("android.permission.CAMERA").subscribe(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFinishImageEvent(String str) {
        if ("FINISH_IMAGE_EVENT".equals(str)) {
            Intent intent = new Intent();
            intent.putParcelableArrayListExtra(ShareConstants.WEB_DIALOG_PARAM_MEDIA, (ArrayList) MemoryCache.getInstance().get(ShareConstants.WEB_DIALOG_PARAM_MEDIA));
            setResult(-1, intent);
            finish();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.MediaFilesFragment.g
    public void onGalleryClick(View view) {
        new com.tbruyelle.rxpermissions2.a(this).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.MediaFilesFragment.g
    public void onSelect(View view, List<LocalImageOrVideoBean> list) {
        if (list != null) {
            this.f22988c.addAll(list);
        }
        Intent intent = getIntent();
        intent.putParcelableArrayListExtra(ShareConstants.WEB_DIALOG_PARAM_MEDIA, this.f22988c);
        setResult(-1, intent);
        onBackPressed();
    }
}
