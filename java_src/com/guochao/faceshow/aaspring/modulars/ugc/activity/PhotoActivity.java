package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.modulars.ugc.adapter.PhotoSelectAdapter;
import com.guochao.faceshow.aaspring.utils.BitmapUtils;
import com.guochao.faceshow.aaspring.utils.MediaFileFinder;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
@Route(name = "相册", path = RouterPath.ROUTER_APP_SELECT_PHOTOACTIVITY)
/* loaded from: classes3.dex */
public class PhotoActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private PhotoSelectAdapter f22338a;

    /* renamed from: b  reason: collision with root package name */
    private int f22339b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22340c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f22341d;

    /* renamed from: e  reason: collision with root package name */
    private int f22342e;

    /* renamed from: f  reason: collision with root package name */
    private int f22343f = 103;

    /* renamed from: g  reason: collision with root package name */
    private boolean f22344g;
    @BindView
    RecyclerView rcvPhoto;

    /* loaded from: classes3.dex */
    class a extends SimpleObserver<te.a> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            if (aVar.f58133b) {
                PhotoActivity.this.p0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Observer<List<LocalImageOrVideoBean>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements z9.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f22347a;

            /* renamed from: com.guochao.faceshow.aaspring.modulars.ugc.activity.PhotoActivity$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class C0222a implements Function1<LocalImageOrVideoBean, Unit> {
                C0222a() {
                }

                @Override // kotlin.jvm.functions.Function1
                /* renamed from: a */
                public Unit invoke(LocalImageOrVideoBean localImageOrVideoBean) {
                    PhotoActivity.this.dismissProgressDialog();
                    PhotoActivity.this.o0(localImageOrVideoBean, false);
                    return null;
                }
            }

            a(List list) {
                this.f22347a = list;
            }

            @Override // z9.a
            public void b(View view, String str, int i9) {
                if (PhotoActivity.this.f22344g) {
                    return;
                }
                LocalImageOrVideoBean localImageOrVideoBean = (LocalImageOrVideoBean) this.f22347a.get(i9);
                if (PhotoActivity.this.f22342e == 60 && localImageOrVideoBean.getDuration() / 1000 > PhotoActivity.this.f22342e) {
                    PhotoActivity.this.showToast(R.string.please_upload_one_minute_video);
                } else if (!localImageOrVideoBean.isSelectable()) {
                    PhotoActivity.this.showToast(R.string.File_is_too_large);
                } else {
                    Uri displayUri = localImageOrVideoBean.getDisplayUri();
                    boolean z10 = false;
                    if (localImageOrVideoBean.getFileType() == 1) {
                        z10 = BitmapUtils.isGif(displayUri);
                        if (z10 && !PhotoActivity.this.f22340c) {
                            PhotoActivity photoActivity = PhotoActivity.this;
                            ToastUtils.showToast(photoActivity, photoActivity.getString(R.string.photo_no_vip));
                            return;
                        }
                        try {
                            if (va.d.c(displayUri) > 10) {
                                PhotoActivity.this.showToast(R.string.File_is_too_large);
                                return;
                            }
                        } catch (Exception unused) {
                        }
                    }
                    if (localImageOrVideoBean.getFileType() == 2) {
                        PhotoActivity.this.showProgressDialog("");
                        MediaFileFinder.getInstance().readVideoDetail(localImageOrVideoBean, new C0222a());
                    } else {
                        PhotoActivity.this.o0(localImageOrVideoBean, z10);
                    }
                    PhotoActivity.this.f22344g = true;
                }
            }
        }

        b() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(List<LocalImageOrVideoBean> list) {
            PhotoActivity.this.dismissProgressDialog();
            PhotoActivity photoActivity = PhotoActivity.this;
            photoActivity.f22338a = new PhotoSelectAdapter(photoActivity.getActivity(), list);
            PhotoActivity photoActivity2 = PhotoActivity.this;
            photoActivity2.rcvPhoto.setAdapter(photoActivity2.f22338a);
            PhotoActivity.this.f22338a.setOnItemClickListener(new a(list));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements aa.b<LocalImageOrVideoBean> {
        c() {
        }

        @Override // aa.b
        /* renamed from: a */
        public boolean accept(LocalImageOrVideoBean localImageOrVideoBean) {
            if (PhotoActivity.this.f22339b == 1 && !PhotoActivity.this.f22341d) {
                return true;
            }
            return !localImageOrVideoBean.getFileName().endsWith(".gif");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements aa.b<LocalImageOrVideoBean> {
        d() {
        }

        @Override // aa.b
        /* renamed from: a */
        public boolean accept(LocalImageOrVideoBean localImageOrVideoBean) {
            if (PhotoActivity.this.f22339b == 1 && !PhotoActivity.this.f22341d) {
                return true;
            }
            return !localImageOrVideoBean.getFileName().endsWith(".gif");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements aa.b<LocalImageOrVideoBean> {
        e() {
        }

        @Override // aa.b
        /* renamed from: a */
        public boolean accept(LocalImageOrVideoBean localImageOrVideoBean) {
            if (PhotoActivity.this.f22339b == 1 && !PhotoActivity.this.f22341d) {
                return true;
            }
            return !localImageOrVideoBean.getFileName().endsWith(".gif");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(LocalImageOrVideoBean localImageOrVideoBean, boolean z10) {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putString(BaseConfig.INTENT_EXTRA_KEY_QR_SCAN, localImageOrVideoBean.getPath());
        bundle.putParcelable("data", localImageOrVideoBean);
        bundle.putParcelable(ShareConstants.MEDIA_URI, localImageOrVideoBean.getDisplayUri());
        bundle.putBoolean("gif", z10);
        intent.putExtras(bundle);
        setResult(-1, intent);
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.activity_stay, R.anim.top_to_bottom);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_photo;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.Photo_album);
        this.f22343f = getIntent().getIntExtra("mode", 101);
        boolean z10 = false;
        this.f22339b = getIntent().getIntExtra("type", 0);
        this.f22342e = getIntent().getIntExtra("max", 0);
        this.f22340c = getCurrentUser().getVipInfo().isVip();
        this.f22341d = (BaseConfig.isChinese() || getIntent().getBooleanExtra("nogif", false)) ? true : true;
        this.rcvPhoto.setLayoutManager(new GridLayoutManager(this, 4));
        new com.tbruyelle.rxpermissions2.a(this).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    public void p0() {
        showProgressDialog(null);
        b bVar = new b();
        int i9 = this.f22343f;
        if (i9 == 103) {
            MediaFileFinder.getInstance().observeAllMedia(this, bVar, new c());
        } else if (i9 == 102) {
            MediaFileFinder.getInstance().observeVideos(this, bVar, new d());
        } else {
            MediaFileFinder.getInstance().observeImages(this, bVar, new e());
        }
    }
}
