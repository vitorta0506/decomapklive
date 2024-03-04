package com.guochao.faceshow.aaspring.modulars.chat.notifycation;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.TextDrawableUtil;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.ScreenTools;
/* loaded from: classes3.dex */
public abstract class BaseIMListActivity<T, VH extends BaseViewHolder> extends BaseRecyclerViewActivity<T, VH> {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f17055a = false;
    @BindView
    protected View recyclerContentArea;

    /* loaded from: classes3.dex */
    class a extends b<Drawable> {
        a(ImageView imageView, ImageView imageView2, String str) {
            super(imageView, imageView2, str);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity.b
        public void a(Throwable th2, ImageView imageView, ImageView imageView2, String str) {
            if ((imageView.getContext() instanceof Activity) && !((Activity) imageView.getContext()).isFinishing() && BaseIMListActivity.e0((String) imageView.getTag(), str)) {
                imageView2.setVisibility(8);
                hc.a.r(imageView, Integer.valueOf((int) R.mipmap.icon_video_error), R.mipmap.icon_video_loading, 4);
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity.b
        /* renamed from: c */
        public void b(Drawable drawable, ImageView imageView, ImageView imageView2, String str) {
            if (drawable != null && (imageView.getContext() instanceof Activity) && !((Activity) imageView.getContext()).isFinishing() && BaseIMListActivity.e0((String) imageView.getTag(), str)) {
                hc.a.r(imageView, drawable, R.mipmap.icon_video_loading, 4);
                imageView2.setVisibility(((Integer) imageView2.getTag()).intValue());
                return;
            }
            a(null, imageView, imageView2, str);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class b<T> extends SimpleObserver<T> {

        /* renamed from: a  reason: collision with root package name */
        private ImageView f17056a;

        /* renamed from: b  reason: collision with root package name */
        private ImageView f17057b;

        /* renamed from: c  reason: collision with root package name */
        private String f17058c;

        public b(ImageView imageView, ImageView imageView2, String str) {
            this.f17056a = imageView;
            this.f17057b = imageView2;
            this.f17058c = str;
        }

        public abstract void a(Throwable th2, ImageView imageView, ImageView imageView2, String str);

        public abstract void b(T t10, ImageView imageView, ImageView imageView2, String str);

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onError(Throwable th2) {
            a(th2, this.f17056a, this.f17057b, this.f17058c);
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(T t10) {
            b(t10, this.f17056a, this.f17057b, this.f17058c);
        }
    }

    public static void d0(ImageView imageView, String str, ImageView imageView2) {
        hc.a.r(imageView, Integer.valueOf((int) R.mipmap.icon_video_loading), R.mipmap.icon_video_loading, 4);
        imageView2.setTag(Integer.valueOf(imageView2.getVisibility()));
        imageView2.setVisibility(8);
        imageView.setTag(str);
        TextDrawableUtil.urlToDrawable(imageView.getContext(), str, new a(imageView, imageView2, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e0(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        return str != null && str.equals(str2);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.layout_base_recycler_view_with_gc_title;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.f();
        }
        View view = this.recyclerContentArea;
        if (view != null) {
            view.setBackgroundColor(ContextCompat.getColor(this, R.color.white));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        this.f17055a = getIntent().getBooleanExtra(TypedValues.Custom.S_FLOAT, false);
        super.onCreate(bundle);
        View emptyView = getEmptyView();
        emptyView.setBackgroundColor(ContextCompat.getColor(this, R.color.white));
        emptyView.setPadding(0, 0, 0, ScreenTools.dip2px(150.0f));
        emptyView.findViewById(R.id.empty_text).setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i9, @Nullable Bundle bundle) {
        if (getParent() != null) {
            getParent().startActivityForResult(intent, i9, bundle);
        } else {
            super.startActivityForResult(intent, i9, bundle);
        }
    }
}
