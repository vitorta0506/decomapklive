package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.ViewPager;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class SendImagePreviewActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private SendImagePreviewActivity f16859c;

    /* renamed from: d  reason: collision with root package name */
    private View f16860d;

    /* renamed from: e  reason: collision with root package name */
    private View f16861e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SendImagePreviewActivity f16862a;

        a(SendImagePreviewActivity sendImagePreviewActivity) {
            this.f16862a = sendImagePreviewActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16862a.send(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SendImagePreviewActivity f16864a;

        b(SendImagePreviewActivity sendImagePreviewActivity) {
            this.f16864a = sendImagePreviewActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16864a.compile(view);
        }
    }

    @UiThread
    public SendImagePreviewActivity_ViewBinding(SendImagePreviewActivity sendImagePreviewActivity, View view) {
        super(sendImagePreviewActivity, view);
        this.f16859c = sendImagePreviewActivity;
        sendImagePreviewActivity.mViewPager = (ViewPager) c.d(view, R.id.view_pager, "field 'mViewPager'", ViewPager.class);
        sendImagePreviewActivity.mTitleBackground = c.c(view, R.id.float_title_back, "field 'mTitleBackground'");
        View c10 = c.c(view, R.id.count, "field 'mTextViewCount' and method 'send'");
        sendImagePreviewActivity.mTextViewCount = (TextView) c.a(c10, R.id.count, "field 'mTextViewCount'", TextView.class);
        this.f16860d = c10;
        c10.setOnClickListener(new a(sendImagePreviewActivity));
        View c11 = c.c(view, R.id.tv_compile, "field 'tvCompile' and method 'compile'");
        sendImagePreviewActivity.tvCompile = (TextView) c.a(c11, R.id.tv_compile, "field 'tvCompile'", TextView.class);
        this.f16861e = c11;
        c11.setOnClickListener(new b(sendImagePreviewActivity));
        sendImagePreviewActivity.titleBackgroundView = (Toolbar) c.d(view, R.id.toolbar, "field 'titleBackgroundView'", Toolbar.class);
        sendImagePreviewActivity.bottomNavigation = (FrameLayout) c.d(view, R.id.fl_bottom_navigation, "field 'bottomNavigation'", FrameLayout.class);
        sendImagePreviewActivity.flContent = (FrameLayout) c.d(view, R.id.fl_content, "field 'flContent'", FrameLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        SendImagePreviewActivity sendImagePreviewActivity = this.f16859c;
        if (sendImagePreviewActivity != null) {
            this.f16859c = null;
            sendImagePreviewActivity.mViewPager = null;
            sendImagePreviewActivity.mTitleBackground = null;
            sendImagePreviewActivity.mTextViewCount = null;
            sendImagePreviewActivity.tvCompile = null;
            sendImagePreviewActivity.titleBackgroundView = null;
            sendImagePreviewActivity.bottomNavigation = null;
            sendImagePreviewActivity.flContent = null;
            this.f16860d.setOnClickListener(null);
            this.f16860d = null;
            this.f16861e.setOnClickListener(null);
            this.f16861e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
