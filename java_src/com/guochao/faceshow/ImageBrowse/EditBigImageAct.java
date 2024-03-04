package com.guochao.faceshow.ImageBrowse;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentTransaction;
import com.guochao.faceshow.R;
import com.guochao.faceshow.activity.PhotoDialogAct;
/* loaded from: classes3.dex */
public class EditBigImageAct extends PhotoDialogAct {

    /* renamed from: d  reason: collision with root package name */
    private View f16018d;

    /* renamed from: e  reason: collision with root package name */
    private View f16019e;

    /* renamed from: f  reason: collision with root package name */
    protected ImageDetailFragment f16020f;

    /* renamed from: g  reason: collision with root package name */
    int f16021g;

    /* renamed from: h  reason: collision with root package name */
    int f16022h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditBigImageAct.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditBigImageAct.this.e0();
        }
    }

    private void i0() {
        this.f16018d.setOnClickListener(new a());
        this.f16019e.setOnClickListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k0() {
        this.f16019e.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.activity.PhotoDialogAct, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        String str;
        super.onCreate(bundle);
        setContentView(R.layout.activity_edit_big_image);
        this.f16018d = findViewById(R.id.edit_big_title_back);
        View findViewById = findViewById(R.id.edit_big_title_more);
        this.f16019e = findViewById;
        findViewById.setVisibility(8);
        if (getIntent() != null) {
            str = getIntent().getStringExtra("image_url");
            this.f16021g = getIntent().getIntExtra("image_width", 0);
            this.f16022h = getIntent().getIntExtra("image_height", 0);
        } else {
            str = "";
        }
        ImageDetailFragment a22 = ImageDetailFragment.a2(str, this.f16021g, this.f16022h);
        this.f16020f = a22;
        a22.d2(false);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.edit_big_image_ly, this.f16020f);
        beginTransaction.commit();
        i0();
    }
}
