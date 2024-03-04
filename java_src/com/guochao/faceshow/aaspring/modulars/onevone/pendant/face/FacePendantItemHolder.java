package com.guochao.faceshow.aaspring.modulars.onevone.pendant.face;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import butterknife.BindView;
import butterknife.OnClick;
import com.bumptech.glide.c;
import com.bumptech.glide.request.h;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.a;
import com.guochao.faceshow.views.ItemDownloadProgressView;
/* loaded from: classes3.dex */
public class FacePendantItemHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private ResourceCategoryItem f21031a;

    /* renamed from: b  reason: collision with root package name */
    private ResourceListItemBean f21032b;

    /* renamed from: c  reason: collision with root package name */
    private int f21033c;
    @BindView
    ImageView imageDown;
    @BindView
    ImageView motionPannelItemImg;
    @BindView
    public ItemDownloadProgressView progressDownload;

    public FacePendantItemHolder(Context context, ViewGroup viewGroup, ResourceCategoryItem resourceCategoryItem, int i9) {
        super(LayoutInflater.from(context).inflate(R.layout.item_face_pendant, viewGroup, false));
        this.f21031a = resourceCategoryItem;
        this.f21033c = i9;
    }

    public void c(int i9) {
        if (a.g().r(this.f21031a, this.f21032b)) {
            this.progressDownload.setVisibility(8);
            this.imageDown.setVisibility(8);
        } else if (i9 > 0 && i9 < 100) {
            this.progressDownload.setVisibility(0);
            this.progressDownload.setProgress(i9);
        } else {
            this.progressDownload.setVisibility(8);
            this.imageDown.setVisibility(0);
            this.imageDown.setImageResource(R.mipmap.face_download);
        }
    }

    public void d(boolean z10) {
        this.itemView.setSelected(z10);
    }

    public void e(int i9, ResourceListItemBean resourceListItemBean) {
        this.f21032b = resourceListItemBean;
        c.u(this.itemView.getContext()).r(resourceListItemBean.getImg()).a(new h().b0(R.mipmap.beauty_no)).Q0(this.motionPannelItemImg);
        if (a.g().r(this.f21031a, resourceListItemBean)) {
            this.progressDownload.setVisibility(8);
            this.imageDown.setVisibility(8);
            return;
        }
        this.progressDownload.setVisibility(8);
        this.imageDown.setVisibility(0);
        this.imageDown.setImageResource(R.mipmap.face_download);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.image_down || id2 == R.id.motion_pannel_item_img) {
            this.itemView.callOnClick();
        }
    }
}
