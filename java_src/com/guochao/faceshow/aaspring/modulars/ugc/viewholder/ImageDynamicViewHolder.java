package com.guochao.faceshow.aaspring.modulars.ugc.viewholder;

import aa.e;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.DynamicFile;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.DynamicDividerItemDecoration;
import com.guochao.faceshow.aaspring.views.RatioHeightImageView;
import com.guochao.faceshow.aaspring.views.h;
/* loaded from: classes3.dex */
public class ImageDynamicViewHolder extends BaseDynamicViewHolder {
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    View mView;

    /* renamed from: r  reason: collision with root package name */
    private GridLayoutManager f23038r;

    /* renamed from: s  reason: collision with root package name */
    DynamicBean f23039s;

    /* renamed from: t  reason: collision with root package name */
    DynamicDividerItemDecoration f23040t;

    /* renamed from: u  reason: collision with root package name */
    View.OnClickListener f23041u;

    /* loaded from: classes3.dex */
    class a extends GridLayoutManager.SpanSizeLookup {
        a() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i9) {
            DynamicBean dynamicBean = ImageDynamicViewHolder.this.f23039s;
            if (dynamicBean == null || dynamicBean.getDynamicFile() == null) {
                return 0;
            }
            int size = ImageDynamicViewHolder.this.f23039s.getDynamicFile().size();
            if (size == 1) {
                return 6;
            }
            if (size == 2) {
                return 3;
            }
            if (size == 3) {
                return 2;
            }
            return (size != 4 && i9 > 1) ? 2 : 3;
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* loaded from: classes3.dex */
        class a implements h.b {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.views.h.b
            public void onClick(View view) {
                if (ImageDynamicViewHolder.this.f23039s.isPublishable()) {
                    return;
                }
                int intValue = ((Integer) view.getTag()).intValue();
                if (((BaseDynamicViewHolder) ImageDynamicViewHolder.this).f22552b != null) {
                    e eVar = ((BaseDynamicViewHolder) ImageDynamicViewHolder.this).f22552b;
                    ImageDynamicViewHolder imageDynamicViewHolder = ImageDynamicViewHolder.this;
                    eVar.onImageClick(imageDynamicViewHolder, imageDynamicViewHolder.f23039s, intValue, imageDynamicViewHolder.mRecyclerView, view);
                }
            }

            @Override // com.guochao.faceshow.aaspring.views.h.b
            public void onDoubleTabClick(View view) {
                ImageDynamicViewHolder.this.q();
            }
        }

        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h.c(view, new a());
        }
    }

    /* loaded from: classes3.dex */
    private class c extends RecyclerView.Adapter<BaseViewHolder> {
        private c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int size = ImageDynamicViewHolder.this.f23039s.getDynamicFile().size();
            if (size > 5) {
                return 5;
            }
            return size;
        }

        /* synthetic */ c(ImageDynamicViewHolder imageDynamicViewHolder, a aVar) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            String fileSmallUrl;
            RatioHeightImageView ratioHeightImageView = (RatioHeightImageView) baseViewHolder.getView(R.id.img);
            DynamicFile dynamicFile = ImageDynamicViewHolder.this.f23039s.getDynamicFile().get(i9);
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.gif_indicator);
            if (ImageDynamicViewHolder.this.f23039s.getDynamicFile().size() == 1) {
                fileSmallUrl = dynamicFile.getFileUrl();
            } else {
                fileSmallUrl = dynamicFile.getFileSmallUrl();
            }
            if (fileSmallUrl != null && fileSmallUrl.endsWith(".gif")) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
            hc.a.h(ratioHeightImageView, fileSmallUrl, R.drawable.shape_ugc_dynamic_placeholder);
            TextView textView = (TextView) baseViewHolder.getView(R.id.numTV);
            FrameLayout frameLayout = (FrameLayout) baseViewHolder.getView(R.id.bgFL);
            if (i9 == 4 && ImageDynamicViewHolder.this.f23039s.getDynamicFile().size() > 5) {
                textView.setText("+" + (ImageDynamicViewHolder.this.f23039s.getDynamicFile().size() - 5));
                textView.setVisibility(0);
                frameLayout.setVisibility(0);
            } else {
                textView.setVisibility(8);
                frameLayout.setVisibility(8);
            }
            ratioHeightImageView.setTag(Integer.valueOf(i9));
            ratioHeightImageView.setOnClickListener(ImageDynamicViewHolder.this.f23041u);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new BaseViewHolder(LayoutInflater.from(((BaseDynamicViewHolder) ImageDynamicViewHolder.this).f22551a).inflate(R.layout.layout_friend_circle_image, viewGroup, false));
        }
    }

    public ImageDynamicViewHolder(Context context, View view) {
        super(context, view);
        this.f23040t = new DynamicDividerItemDecoration.Builder(this.f22551a).setRectSpace(0.75f).build();
        this.f23041u = new b();
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, 6);
        this.f23038r = gridLayoutManager;
        gridLayoutManager.setSpanSizeLookup(new a());
        this.mRecyclerView.setLayoutManager(this.f23038r);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder
    public void G(DynamicBean dynamicBean) {
        super.G(dynamicBean);
        this.f23039s = dynamicBean;
        this.mRecyclerView.setNestedScrollingEnabled(false);
        e eVar = this.f22552b;
        if (eVar != null) {
            this.mRecyclerView.setRecycledViewPool(eVar.getImageRecyclerViewPool());
        }
        int size = dynamicBean.getDynamicFile().size();
        this.mRecyclerView.removeItemDecoration(this.f23040t);
        if (size != 1) {
            this.mRecyclerView.addItemDecoration(this.f23040t);
        }
        c cVar = (c) this.mRecyclerView.getAdapter();
        if (cVar == null) {
            this.mRecyclerView.setAdapter(new c(this, null));
        } else {
            cVar.notifyDataSetChanged();
        }
    }
}
