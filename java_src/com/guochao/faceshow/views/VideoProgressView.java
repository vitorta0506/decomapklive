package com.guochao.faceshow.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.adapter.ThumbnailAdapter;
import java.util.List;
/* loaded from: classes4.dex */
public class VideoProgressView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private Context f26854a;

    /* renamed from: b  reason: collision with root package name */
    private View f26855b;

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView f26856c;

    /* renamed from: d  reason: collision with root package name */
    private int f26857d;

    /* renamed from: e  reason: collision with root package name */
    private int f26858e;

    /* renamed from: f  reason: collision with root package name */
    private ThumbnailAdapter f26859f;

    /* renamed from: g  reason: collision with root package name */
    private List<Bitmap> f26860g;

    public VideoProgressView(@NonNull Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        this.f26854a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.layout_video_progress, this);
        this.f26855b = inflate;
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rv_video_thumbnail);
        this.f26856c = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(context, 0, false));
    }

    public ViewGroup getParentView() {
        return (ViewGroup) this.f26855b;
    }

    public RecyclerView getRecyclerView() {
        return this.f26856c;
    }

    public float getSingleThumbnailWidth() {
        return this.f26854a.getResources().getDimension(R.dimen.dp_30);
    }

    public int getThumbnailCount() {
        return this.f26859f.getItemCount() - 2;
    }

    public int getViewHeight() {
        return this.f26858e;
    }

    public int getViewWidth() {
        return this.f26857d;
    }

    public void setThumbnailData(List<Bitmap> list) {
        this.f26860g = list;
        ThumbnailAdapter thumbnailAdapter = new ThumbnailAdapter(this.f26857d, list);
        this.f26859f = thumbnailAdapter;
        this.f26856c.setAdapter(thumbnailAdapter);
    }

    public void setViewHeight(int i9) {
        this.f26858e = i9;
    }

    public void setViewWidth(int i9) {
        this.f26857d = i9;
    }

    public VideoProgressView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public VideoProgressView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i9) {
        super(context, attributeSet, i9);
        a(context);
    }
}
