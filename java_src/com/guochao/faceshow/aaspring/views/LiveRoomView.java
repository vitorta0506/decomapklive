package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class LiveRoomView extends LiveRoomScrollView {

    /* renamed from: t  reason: collision with root package name */
    private boolean f23809t;

    /* renamed from: u  reason: collision with root package name */
    UgcFooter f23810u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f23811v;

    /* renamed from: w  reason: collision with root package name */
    int f23812w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f23813x;

    /* renamed from: y  reason: collision with root package name */
    a f23814y;

    /* loaded from: classes3.dex */
    public interface a {
        void a(LiveRoomView liveRoomView);
    }

    public LiveRoomView(Context context) {
        super(context);
        this.f23813x = true;
    }

    @Override // com.guochao.faceshow.aaspring.views.LiveRoomScrollView
    public void c(boolean z10) {
        this.f23813x = z10;
        super.c(z10);
        UgcFooter ugcFooter = this.f23810u;
        if (ugcFooter != null) {
            ugcFooter.t(false, false);
            this.f23810u.setVisibility(4);
            if (this.f23811v) {
                this.f23787a.startScroll(0, getScrollY(), 0, (int) ((getHeight() / 3.0f) - getScrollY()));
                this.f23811v = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.views.LiveRoomScrollView
    public void d() {
        super.d();
        this.f23812w = DensityUtil.dp2px(100.0f);
    }

    @Override // com.guochao.faceshow.aaspring.views.LiveRoomScrollView
    public boolean e() {
        return this.f23809t;
    }

    @Override // com.guochao.faceshow.aaspring.views.LiveRoomScrollView
    public boolean g() {
        return this.f23811v;
    }

    public a getOnLoadMoreListener() {
        return this.f23814y;
    }

    @Override // com.guochao.faceshow.aaspring.views.LiveRoomScrollView
    public boolean i(MotionEvent motionEvent) {
        if (this.f23810u == null) {
            return false;
        }
        float y10 = motionEvent.getY();
        float f10 = this.f23803q - y10;
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2) {
                if (getScrollY() >= this.f23812w + (getHeight() / 3.0f)) {
                    return true;
                }
                this.f23810u.setVisibility(0);
                this.f23810u.setLoading(this.f23813x);
                this.f23811v = true;
                scrollBy(0, (int) f10);
            }
        } else if (this.f23811v) {
            if (this.f23813x) {
                a aVar = this.f23814y;
                if (aVar != null) {
                    aVar.a(this);
                } else {
                    this.f23811v = false;
                }
            } else {
                l(true);
                this.f23811v = false;
            }
        }
        this.f23803q = y10;
        return true;
    }

    @Override // com.guochao.faceshow.aaspring.views.LiveRoomScrollView
    protected void j(int i9) {
    }

    public void n(int i9) {
        ImageView imageView = (ImageView) ((ViewGroup) getChildAt(i9)).getChildAt(0);
        com.bumptech.glide.c.u(BaseApplication.getInstance()).f(imageView);
        imageView.setImageDrawable(null);
    }

    public void o(boolean z10, String str) {
        ViewGroup viewGroup;
        if (z10) {
            viewGroup = (ViewGroup) getChildAt(2);
        } else {
            viewGroup = (ViewGroup) getChildAt(0);
        }
        hc.a.v((ImageView) viewGroup.getChildAt(0), str);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        l(false);
    }

    @Override // com.guochao.faceshow.aaspring.views.LiveRoomScrollView
    public void setEnableLoadMore(boolean z10) {
        if (this.f23809t == z10) {
            return;
        }
        this.f23809t = z10;
        this.f23813x = true;
        if (z10) {
            if (this.f23810u == null) {
                UgcFooter ugcFooter = new UgcFooter(getContext());
                this.f23810u = ugcFooter;
                ugcFooter.setVisibility(4);
            }
            if (this.f23810u.getParent() == null) {
                ((ViewGroup) getChildAt(2)).addView(this.f23810u, new FrameLayout.LayoutParams(-1, -2));
                return;
            }
            return;
        }
        UgcFooter ugcFooter2 = this.f23810u;
        if (ugcFooter2 == null || ugcFooter2.getParent() == null) {
            return;
        }
        ((ViewGroup) getChildAt(2)).removeView(this.f23810u);
    }

    public void setOnLoadMoreListener(a aVar) {
        this.f23814y = aVar;
    }

    public void setOnScrollListener(RecyclerView.OnScrollListener onScrollListener) {
    }

    public LiveRoomView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23813x = true;
    }

    public LiveRoomView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23813x = true;
    }
}
