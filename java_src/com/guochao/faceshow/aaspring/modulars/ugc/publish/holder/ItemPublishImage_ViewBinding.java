package com.guochao.faceshow.aaspring.modulars.ugc.publish.holder;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ItemPublishImage_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ItemPublishImage f23009b;

    /* renamed from: c  reason: collision with root package name */
    private View f23010c;

    /* renamed from: d  reason: collision with root package name */
    private View f23011d;

    /* renamed from: e  reason: collision with root package name */
    private View f23012e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ItemPublishImage f23013a;

        a(ItemPublishImage itemPublishImage) {
            this.f23013a = itemPublishImage;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23013a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ItemPublishImage f23015a;

        b(ItemPublishImage itemPublishImage) {
            this.f23015a = itemPublishImage;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23015a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ItemPublishImage f23017a;

        c(ItemPublishImage itemPublishImage) {
            this.f23017a = itemPublishImage;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23017a.onViewClicked(view);
        }
    }

    @UiThread
    public ItemPublishImage_ViewBinding(ItemPublishImage itemPublishImage, View view) {
        this.f23009b = itemPublishImage;
        View c10 = butterknife.internal.c.c(view, R.id.image_thumb, "field 'imageThumb' and method 'onViewClicked'");
        itemPublishImage.imageThumb = (ImageView) butterknife.internal.c.a(c10, R.id.image_thumb, "field 'imageThumb'", ImageView.class);
        this.f23010c = c10;
        c10.setOnClickListener(new a(itemPublishImage));
        View c11 = butterknife.internal.c.c(view, R.id.video_icon, "field 'videoIcon' and method 'onViewClicked'");
        itemPublishImage.videoIcon = (ImageView) butterknife.internal.c.a(c11, R.id.video_icon, "field 'videoIcon'", ImageView.class);
        this.f23011d = c11;
        c11.setOnClickListener(new b(itemPublishImage));
        View c12 = butterknife.internal.c.c(view, R.id.delete_image, "field 'deleteImage' and method 'onViewClicked'");
        itemPublishImage.deleteImage = (ImageView) butterknife.internal.c.a(c12, R.id.delete_image, "field 'deleteImage'", ImageView.class);
        this.f23012e = c12;
        c12.setOnClickListener(new c(itemPublishImage));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ItemPublishImage itemPublishImage = this.f23009b;
        if (itemPublishImage != null) {
            this.f23009b = null;
            itemPublishImage.imageThumb = null;
            itemPublishImage.videoIcon = null;
            itemPublishImage.deleteImage = null;
            this.f23010c.setOnClickListener(null);
            this.f23010c = null;
            this.f23011d.setOnClickListener(null);
            this.f23011d = null;
            this.f23012e.setOnClickListener(null);
            this.f23012e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
