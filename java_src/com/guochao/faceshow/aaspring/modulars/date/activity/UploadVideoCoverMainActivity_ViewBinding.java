package com.guochao.faceshow.aaspring.modulars.date.activity;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class UploadVideoCoverMainActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private UploadVideoCoverMainActivity f17545c;

    /* renamed from: d  reason: collision with root package name */
    private View f17546d;

    /* renamed from: e  reason: collision with root package name */
    private View f17547e;

    /* renamed from: f  reason: collision with root package name */
    private View f17548f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UploadVideoCoverMainActivity f17549a;

        a(UploadVideoCoverMainActivity uploadVideoCoverMainActivity) {
            this.f17549a = uploadVideoCoverMainActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17549a.click(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UploadVideoCoverMainActivity f17551a;

        b(UploadVideoCoverMainActivity uploadVideoCoverMainActivity) {
            this.f17551a = uploadVideoCoverMainActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17551a.click(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UploadVideoCoverMainActivity f17553a;

        c(UploadVideoCoverMainActivity uploadVideoCoverMainActivity) {
            this.f17553a = uploadVideoCoverMainActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17553a.click(view);
        }
    }

    @UiThread
    public UploadVideoCoverMainActivity_ViewBinding(UploadVideoCoverMainActivity uploadVideoCoverMainActivity, View view) {
        super(uploadVideoCoverMainActivity, view);
        this.f17545c = uploadVideoCoverMainActivity;
        uploadVideoCoverMainActivity.mImageView = (ImageView) butterknife.internal.c.d(view, R.id.img, "field 'mImageView'", ImageView.class);
        View c10 = butterknife.internal.c.c(view, R.id.confirm, "method 'click'");
        this.f17546d = c10;
        c10.setOnClickListener(new a(uploadVideoCoverMainActivity));
        View c11 = butterknife.internal.c.c(view, R.id.iv_record, "method 'click'");
        this.f17547e = c11;
        c11.setOnClickListener(new b(uploadVideoCoverMainActivity));
        View c12 = butterknife.internal.c.c(view, R.id.cancel, "method 'click'");
        this.f17548f = c12;
        c12.setOnClickListener(new c(uploadVideoCoverMainActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        UploadVideoCoverMainActivity uploadVideoCoverMainActivity = this.f17545c;
        if (uploadVideoCoverMainActivity != null) {
            this.f17545c = null;
            uploadVideoCoverMainActivity.mImageView = null;
            this.f17546d.setOnClickListener(null);
            this.f17546d = null;
            this.f17547e.setOnClickListener(null);
            this.f17547e = null;
            this.f17548f.setOnClickListener(null);
            this.f17548f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
