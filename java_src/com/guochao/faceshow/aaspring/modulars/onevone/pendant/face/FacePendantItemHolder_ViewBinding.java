package com.guochao.faceshow.aaspring.modulars.onevone.pendant.face;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.ItemDownloadProgressView;
/* loaded from: classes3.dex */
public class FacePendantItemHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FacePendantItemHolder f21034b;

    /* renamed from: c  reason: collision with root package name */
    private View f21035c;

    /* renamed from: d  reason: collision with root package name */
    private View f21036d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FacePendantItemHolder f21037a;

        a(FacePendantItemHolder facePendantItemHolder) {
            this.f21037a = facePendantItemHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21037a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FacePendantItemHolder f21039a;

        b(FacePendantItemHolder facePendantItemHolder) {
            this.f21039a = facePendantItemHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21039a.onViewClicked(view);
        }
    }

    @UiThread
    public FacePendantItemHolder_ViewBinding(FacePendantItemHolder facePendantItemHolder, View view) {
        this.f21034b = facePendantItemHolder;
        View c10 = c.c(view, R.id.motion_pannel_item_img, "field 'motionPannelItemImg' and method 'onViewClicked'");
        facePendantItemHolder.motionPannelItemImg = (ImageView) c.a(c10, R.id.motion_pannel_item_img, "field 'motionPannelItemImg'", ImageView.class);
        this.f21035c = c10;
        c10.setOnClickListener(new a(facePendantItemHolder));
        View c11 = c.c(view, R.id.image_down, "field 'imageDown' and method 'onViewClicked'");
        facePendantItemHolder.imageDown = (ImageView) c.a(c11, R.id.image_down, "field 'imageDown'", ImageView.class);
        this.f21036d = c11;
        c11.setOnClickListener(new b(facePendantItemHolder));
        facePendantItemHolder.progressDownload = (ItemDownloadProgressView) c.d(view, R.id.progress_download, "field 'progressDownload'", ItemDownloadProgressView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FacePendantItemHolder facePendantItemHolder = this.f21034b;
        if (facePendantItemHolder != null) {
            this.f21034b = null;
            facePendantItemHolder.motionPannelItemImg = null;
            facePendantItemHolder.imageDown = null;
            facePendantItemHolder.progressDownload = null;
            this.f21035c.setOnClickListener(null);
            this.f21035c = null;
            this.f21036d.setOnClickListener(null);
            this.f21036d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
