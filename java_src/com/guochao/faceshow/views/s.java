package com.guochao.faceshow.views;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private VideoProgressView f27052a;

    /* renamed from: b  reason: collision with root package name */
    private RecyclerView f27053b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27054c;

    /* renamed from: d  reason: collision with root package name */
    private int f27055d;

    /* renamed from: e  reason: collision with root package name */
    private float f27056e;

    /* renamed from: f  reason: collision with root package name */
    private long f27057f;

    /* renamed from: g  reason: collision with root package name */
    private long f27058g;

    /* renamed from: h  reason: collision with root package name */
    private float f27059h;

    /* renamed from: i  reason: collision with root package name */
    private float f27060i;

    /* renamed from: j  reason: collision with root package name */
    private int f27061j;

    /* renamed from: k  reason: collision with root package name */
    private e f27062k;

    /* renamed from: l  reason: collision with root package name */
    private List<RangeSliderViewContainer> f27063l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f27064m;

    /* renamed from: n  reason: collision with root package name */
    private ColorfulProgress f27065n;

    /* renamed from: o  reason: collision with root package name */
    private List<SliderViewContainer> f27066o;

    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RangeSliderViewContainer f27067a;

        a(RangeSliderViewContainer rangeSliderViewContainer) {
            this.f27067a = rangeSliderViewContainer;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f27067a.m();
        }
    }

    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SliderViewContainer f27069a;

        b(SliderViewContainer sliderViewContainer) {
            this.f27069a = sliderViewContainer;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f27069a.e();
        }
    }

    /* loaded from: classes4.dex */
    class c implements View.OnTouchListener {
        c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                s.this.f27054c = true;
            } else if (action == 1 || action == 3) {
                s.this.f27054c = false;
            }
            return false;
        }
    }

    /* loaded from: classes4.dex */
    class d extends RecyclerView.OnScrollListener {
        d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            if (i9 == 0) {
                if (s.this.f27062k != null) {
                    s.this.f27062k.b(s.this.f27057f);
                }
                if (s.this.f27063l != null && s.this.f27063l.size() > 0) {
                    for (RangeSliderViewContainer rangeSliderViewContainer : s.this.f27063l) {
                        rangeSliderViewContainer.m();
                    }
                }
                if (s.this.f27065n != null) {
                    s.this.f27065n.setCurPosition(s.this.f27056e);
                    s.this.v();
                }
                if (s.this.f27066o != null && s.this.f27066o.size() > 0) {
                    for (SliderViewContainer sliderViewContainer : s.this.f27066o) {
                        sliderViewContainer.e();
                    }
                }
            }
            s.this.f27055d = i9;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i9, int i10) {
            super.onScrolled(recyclerView, i9, i10);
            s.this.f27056e += i9;
            long z10 = (s.this.f27056e / s.this.z()) * ((float) s.this.f27058g);
            if (s.this.f27054c || s.this.f27064m || s.this.f27055d == 2) {
                s.this.f27064m = false;
                if (s.this.f27062k != null) {
                    s.this.f27062k.a(z10);
                }
            }
            s.this.f27057f = z10;
            if (s.this.f27063l != null && s.this.f27063l.size() > 0) {
                for (RangeSliderViewContainer rangeSliderViewContainer : s.this.f27063l) {
                    rangeSliderViewContainer.m();
                }
            }
            if (s.this.f27065n != null) {
                s.this.f27065n.setCurPosition(s.this.f27056e);
                s.this.v();
            }
            if (s.this.f27066o == null || s.this.f27066o.size() <= 0) {
                return;
            }
            for (SliderViewContainer sliderViewContainer : s.this.f27066o) {
                sliderViewContainer.e();
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface e {
        void a(long j10);

        void b(long j10);
    }

    public s(long j10) {
        this.f27058g = j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        ColorfulProgress colorfulProgress = this.f27065n;
        if (colorfulProgress == null) {
            return;
        }
        ((ViewGroup.MarginLayoutParams) colorfulProgress.getLayoutParams()).leftMargin = s();
        this.f27065n.requestLayout();
    }

    public long A() {
        return this.f27058g;
    }

    public void B(long j10) {
        this.f27057f = j10;
        this.f27053b.scrollBy((int) (((((float) j10) / ((float) this.f27058g)) * z()) - this.f27056e), 0);
    }

    public void C(boolean z10) {
        this.f27064m = z10;
    }

    public void D(int i9) {
        this.f27060i = i9;
    }

    public void E(e eVar) {
        this.f27062k = eVar;
    }

    public void F(VideoProgressView videoProgressView) {
        this.f27052a = videoProgressView;
        RecyclerView recyclerView = videoProgressView.getRecyclerView();
        this.f27053b = recyclerView;
        recyclerView.setOnTouchListener(new c());
        this.f27053b.addOnScrollListener(new d());
    }

    public void q(RangeSliderViewContainer rangeSliderViewContainer) {
        if (rangeSliderViewContainer == null) {
            return;
        }
        if (this.f27063l == null) {
            this.f27063l = new ArrayList();
        }
        this.f27063l.add(rangeSliderViewContainer);
        this.f27052a.getParentView().addView(rangeSliderViewContainer);
        rangeSliderViewContainer.getLayoutParams().height = this.f27052a.getMeasuredHeight();
        rangeSliderViewContainer.post(new a(rangeSliderViewContainer));
    }

    public void r(SliderViewContainer sliderViewContainer) {
        if (sliderViewContainer == null) {
            return;
        }
        if (this.f27066o == null) {
            this.f27066o = new ArrayList();
        }
        this.f27066o.add(sliderViewContainer);
        sliderViewContainer.setVideoProgressControlloer(this);
        this.f27052a.getParentView().addView(sliderViewContainer);
        sliderViewContainer.post(new b(sliderViewContainer));
    }

    int s() {
        return (int) ((this.f27060i / 2.0f) - this.f27056e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int t(SliderViewContainer sliderViewContainer) {
        return (int) (((this.f27060i / 2.0f) + x(sliderViewContainer.getStartTimeMs())) - this.f27056e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int u(RangeSliderViewContainer rangeSliderViewContainer) {
        return (int) ((((this.f27060i / 2.0f) - rangeSliderViewContainer.getStartView().getMeasuredWidth()) + x(rangeSliderViewContainer.getStartTimeUs())) - this.f27056e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long w(float f10) {
        return ((float) this.f27058g) * (f10 / z());
    }

    public int x(long j10) {
        return (int) (z() * ((((float) j10) * 1.0f) / ((float) this.f27058g)));
    }

    public long y() {
        return this.f27057f;
    }

    public float z() {
        if (this.f27059h == 0.0f) {
            int thumbnailCount = this.f27052a.getThumbnailCount();
            this.f27061j = thumbnailCount;
            this.f27059h = thumbnailCount * this.f27052a.getSingleThumbnailWidth();
        }
        return this.f27059h;
    }
}
