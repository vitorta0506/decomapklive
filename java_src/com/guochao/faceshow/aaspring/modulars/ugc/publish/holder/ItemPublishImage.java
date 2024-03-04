package com.guochao.faceshow.aaspring.modulars.ugc.publish.holder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.MediaLocalData;
/* loaded from: classes3.dex */
public class ItemPublishImage extends RecyclerView.ViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private MediaLocalData f23005a;

    /* renamed from: b  reason: collision with root package name */
    private c f23006b;
    @BindView
    ImageView deleteImage;
    @BindView
    ImageView imageThumb;
    @BindView
    ImageView videoIcon;

    /* loaded from: classes3.dex */
    class a implements View.OnLongClickListener {
        a() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (ItemPublishImage.this.f23005a == null || ItemPublishImage.this.f23006b == null || ItemPublishImage.this.f23005a.getMediaType() > 102) {
                return false;
            }
            ItemPublishImage.this.f23006b.a(ItemPublishImage.this.f23005a);
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ItemPublishImage.this.f23006b != null) {
                ItemPublishImage.this.f23006b.c(ItemPublishImage.this.f23005a, view, ItemPublishImage.this.getAdapterPosition());
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(MediaLocalData mediaLocalData);

        void b(MediaLocalData mediaLocalData);

        void c(MediaLocalData mediaLocalData, View view, int i9);

        void d(MediaLocalData mediaLocalData);
    }

    public ItemPublishImage(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_item_publish, viewGroup, false));
        ButterKnife.c(this, this.itemView);
        this.imageThumb.setOnLongClickListener(new a());
        this.imageThumb.setOnClickListener(new b());
    }

    public void e(MediaLocalData mediaLocalData, boolean z10) {
        this.f23005a = mediaLocalData;
        switch (mediaLocalData.getMediaType()) {
            case 101:
                this.videoIcon.setVisibility(8);
                hc.a.g(this.imageThumb, mediaLocalData.getDisplayThumbUri() == null ? mediaLocalData.getThumb() : mediaLocalData.getDisplayThumbUri());
                if (z10) {
                    this.deleteImage.setVisibility(0);
                    return;
                } else {
                    this.deleteImage.setVisibility(0);
                    return;
                }
            case 102:
                this.videoIcon.setVisibility(0);
                this.videoIcon.setImageResource(R.mipmap.icon_im_videoplay);
                hc.a.g(this.imageThumb, mediaLocalData.getDisplayThumbUri() == null ? mediaLocalData.getThumb() : mediaLocalData.getDisplayThumbUri());
                if (z10) {
                    this.deleteImage.setVisibility(0);
                    return;
                } else {
                    this.deleteImage.setVisibility(0);
                    return;
                }
            case 103:
            default:
                return;
            case 104:
            case 105:
            case 106:
                this.imageThumb.setImageResource(R.color.publish_background);
                this.videoIcon.setImageResource(R.mipmap.ugc_publish_add);
                this.videoIcon.setVisibility(0);
                this.deleteImage.setVisibility(8);
                return;
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        MediaLocalData mediaLocalData;
        c cVar;
        int id2 = view.getId();
        if (id2 != R.id.delete_image) {
            if (id2 == R.id.video_icon && (mediaLocalData = this.f23005a) != null && mediaLocalData.getMediaType() > 102 && (cVar = this.f23006b) != null) {
                cVar.d(this.f23005a);
                return;
            }
            return;
        }
        MediaLocalData mediaLocalData2 = this.f23005a;
        if (mediaLocalData2 == null || this.f23006b == null || mediaLocalData2.getMediaType() > 102) {
            return;
        }
        this.f23006b.b(this.f23005a);
    }

    public void setOnItemClickListener(c cVar) {
        this.f23006b = cVar;
    }
}
