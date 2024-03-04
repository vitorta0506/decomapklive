package com.guochao.faceshow.aaspring.modulars.ugc.viewholder;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder_ViewBinding;
/* loaded from: classes3.dex */
public class ImageDynamicViewHolder_ViewBinding extends BaseDynamicViewHolder_ViewBinding {

    /* renamed from: m  reason: collision with root package name */
    private ImageDynamicViewHolder f23046m;

    @UiThread
    public ImageDynamicViewHolder_ViewBinding(ImageDynamicViewHolder imageDynamicViewHolder, View view) {
        super(imageDynamicViewHolder, view);
        this.f23046m = imageDynamicViewHolder;
        imageDynamicViewHolder.mRecyclerView = (RecyclerView) c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        imageDynamicViewHolder.mView = c.c(view, R.id.main_content, "field 'mView'");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ImageDynamicViewHolder imageDynamicViewHolder = this.f23046m;
        if (imageDynamicViewHolder != null) {
            this.f23046m = null;
            imageDynamicViewHolder.mRecyclerView = null;
            imageDynamicViewHolder.mView = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
