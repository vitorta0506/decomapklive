package com.guochao.faceshow.activity;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.adapter.ZZ_RecycleAdapter;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.utils.Tools;
import java.io.File;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class PicSelectActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f24750a;

    /* renamed from: b  reason: collision with root package name */
    private RecyclerView f24751b;

    /* renamed from: c  reason: collision with root package name */
    private ZZ_RecycleAdapter<String> f24752c;

    /* renamed from: e  reason: collision with root package name */
    private String f24754e;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f24756g;

    /* renamed from: h  reason: collision with root package name */
    private String f24757h;

    /* renamed from: i  reason: collision with root package name */
    private String f24758i;

    /* renamed from: d  reason: collision with root package name */
    private int f24753d = 0;

    /* renamed from: f  reason: collision with root package name */
    ArrayList<String> f24755f = new ArrayList<>();

    /* renamed from: j  reason: collision with root package name */
    public boolean f24759j = false;

    /* loaded from: classes3.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            PicSelectActivity picSelectActivity = PicSelectActivity.this;
            if (picSelectActivity.f24759j) {
                String n02 = picSelectActivity.n0();
                Intent intent = new Intent();
                intent.putExtra(TCConstants.VIDEO_RECORD_COVERPATH, n02);
                PicSelectActivity.this.setResult(13, intent);
                PicSelectActivity.this.finish();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends ZZ_RecycleAdapter<String> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ImageView f24762a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ImageView f24763b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f24764c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ int f24765d;

            a(ImageView imageView, ImageView imageView2, String str, int i9) {
                this.f24762a = imageView;
                this.f24763b = imageView2;
                this.f24764c = str;
                this.f24765d = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f24762a.setVisibility(0);
                this.f24763b.setVisibility(8);
                hc.a.r(PicSelectActivity.this.f24750a, this.f24764c, R.drawable.default_image, 6);
                if (PicSelectActivity.this.f24756g != null) {
                    PicSelectActivity.this.f24756g.setVisibility(8);
                }
                PicSelectActivity.this.f24753d = this.f24765d;
                PicSelectActivity.this.f24756g = this.f24762a;
                b.this.notifyDataSetChanged();
            }
        }

        b(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
        /* renamed from: a */
        public void convert(ZZ_RecycleAdapter.ViewHolder viewHolder, String str) {
            ImageView c10 = viewHolder.c(R.id.imgage_view);
            View view = viewHolder.getView(R.id.item);
            ImageView c11 = viewHolder.c(R.id.select_img);
            ImageView c12 = viewHolder.c(R.id.bgIV);
            hc.a.r(c10, PicSelectActivity.this.f24758i, R.drawable.default_image, 0);
            int position = viewHolder.getPosition();
            if (PicSelectActivity.this.f24753d == position) {
                c11.setVisibility(0);
                PicSelectActivity.this.f24756g = c11;
                c12.setVisibility(8);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) c11.getLayoutParams();
                ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                ((FrameLayout.LayoutParams) c10.getLayoutParams()).topMargin = 0;
                layoutParams.width = DensityUtil.dp2px(31.0f);
                layoutParams.height = DensityUtil.dp2px(44.0f);
                layoutParams2.width = DensityUtil.dp2px(31.0f);
                layoutParams2.height = DensityUtil.dp2px(44.0f);
            } else {
                c11.setVisibility(8);
                c12.setVisibility(0);
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) c11.getLayoutParams();
                ViewGroup.LayoutParams layoutParams4 = view.getLayoutParams();
                ((FrameLayout.LayoutParams) c10.getLayoutParams()).topMargin = DensityUtil.dp2px(2.0f);
                layoutParams3.width = DensityUtil.dp2px(27.0f);
                layoutParams3.height = DensityUtil.dp2px(40.0f);
                layoutParams4.width = DensityUtil.dp2px(27.0f);
                layoutParams4.height = DensityUtil.dp2px(40.0f);
            }
            viewHolder.getView(R.id.item).setOnClickListener(new a(c11, c12, str, position));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PicSelectActivity.this.f24755f.size() > 1) {
                PicSelectActivity.this.f24753d = 1;
                PicSelectActivity.this.f24752c.notifyDataSetChanged();
                PicSelectActivity.this.f24753d = 0;
                PicSelectActivity.this.f24752c.notifyDataSetChanged();
            }
        }
    }

    private void m0() {
        this.f24755f.addAll(com.guochao.faceshow.aaspring.manager.b.d("Thumb", String.class));
        if (this.f24755f.size() > 0) {
            hc.a.r(this.f24750a, this.f24755f.get(0), R.drawable.default_image, 6);
        }
        this.f24752c.resetData(this.f24755f);
        this.f24751b.postDelayed(new c(), 100L);
        this.f24759j = true;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_pic_select;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.edit_pic);
        this.f24754e = FilePathProvider.getPhotoPath();
        this.f24757h = getIntent().getStringExtra("videoPath");
        this.f24758i = getIntent().getStringExtra("imgPath");
        this.f24750a = (ImageView) findViewById(R.id.coverimg);
        this.f24751b = (RecyclerView) findViewById(R.id.hListView);
        if (!TextUtils.isEmpty(this.f24758i)) {
            hc.a.r(this.f24750a, this.f24758i, R.drawable.default_image, 6);
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        this.f24751b.setLayoutManager(linearLayoutManager);
        this.f24752c = new b(this, R.layout.item_pic);
        this.mTitleBarHelper.f();
        this.f24751b.setAdapter(this.f24752c);
        m0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        setEndText(getString(R.string.f16064ok), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
    }

    public String n0() {
        return this.f24755f.get(this.f24753d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f24755f.clear();
        this.f24755f = null;
        System.gc();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (i9 == 4) {
            Tools.deleteDirWihtFile(new File(this.f24754e));
            finish();
            return true;
        }
        return super.onKeyDown(i9, keyEvent);
    }
}
