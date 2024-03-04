package com.guochao.faceshow.aaspring.modulars.dressmarket.marquee;

import android.app.Activity;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.MarqueeUser;
import com.guochao.faceshow.aaspring.modulars.dressmarket.marquee.DispatchTouchHorizontalScrollView;
import com.guochao.faceshow.aaspring.modulars.dressmarket.marquee.FloatMarqueeScrollHolder;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes3.dex */
public class FloatMarqueeScrollHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private MarqueeUser f17683a;

    /* renamed from: b  reason: collision with root package name */
    private int f17684b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f17685c;

    /* renamed from: d  reason: collision with root package name */
    private long f17686d;

    /* renamed from: e  reason: collision with root package name */
    private DispatchTouchHorizontalScrollView f17687e;

    /* renamed from: f  reason: collision with root package name */
    private final TextView f17688f;

    /* renamed from: g  reason: collision with root package name */
    private final NormalCircleImageView f17689g;

    /* renamed from: h  reason: collision with root package name */
    private c f17690h;

    /* loaded from: classes3.dex */
    class a implements DispatchTouchHorizontalScrollView.a {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.dressmarket.marquee.DispatchTouchHorizontalScrollView.a
        public void a(int i9, int i10) {
            FloatMarqueeScrollHolder.this.f17684b = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DispatchTouchHorizontalScrollView f17692a;

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                FloatMarqueeScrollHolder.this.p();
            }
        }

        b(DispatchTouchHorizontalScrollView dispatchTouchHorizontalScrollView) {
            this.f17692a = dispatchTouchHorizontalScrollView;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f17692a == null || !FloatMarqueeScrollHolder.this.m()) {
                return;
            }
            int i9 = FloatMarqueeScrollHolder.this.f17684b;
            this.f17692a.scrollBy(2, 0);
            if (FloatMarqueeScrollHolder.this.f17684b == i9) {
                FloatMarqueeScrollHolder.this.f17685c.postDelayed(new a(), 5000L);
            } else {
                FloatMarqueeScrollHolder.this.l(this.f17692a);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a();
    }

    public FloatMarqueeScrollHolder(View view) {
        super(view);
        this.f17684b = -1;
        this.f17685c = new Handler(Looper.getMainLooper());
        this.f17687e = (DispatchTouchHorizontalScrollView) view.findViewById(R.id.scroll_view);
        this.f17688f = (TextView) view.findViewById(R.id.tip_type);
        this.f17689g = (NormalCircleImageView) view.findViewById(R.id.user_avatar);
        this.f17687e.setOnScrollChangeListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(DispatchTouchHorizontalScrollView dispatchTouchHorizontalScrollView) {
        this.f17685c.postDelayed(new b(dispatchTouchHorizontalScrollView), 16L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m() {
        if (this.itemView.getContext() instanceof Activity) {
            Activity activity = (Activity) this.itemView.getContext();
            return (activity == null || activity.isFinishing() || activity.isDestroyed()) ? false : true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        this.f17690h.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        l(this.f17687e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f17690h != null) {
            this.f17685c.postDelayed(new Runnable() { // from class: q8.b
                @Override // java.lang.Runnable
                public final void run() {
                    FloatMarqueeScrollHolder.this.n();
                }
            }, 1000L);
        }
    }

    public void destroy() {
        this.f17685c.removeMessages(0);
    }

    public void k(MarqueeUser marqueeUser) {
        if (marqueeUser == null) {
            return;
        }
        this.f17683a = marqueeUser;
        this.f17684b = -1;
        String str = marqueeUser.getNickName() + " ";
        int type = marqueeUser.getType();
        String string = this.itemView.getContext().getString(type != 1 ? type != 2 ? R.string.f_dress_buy_car : R.string.f_dress_buy_shading : R.string.f_dress_buy_pendant, str);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        int indexOf = string.indexOf(str);
        if (indexOf >= 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#8CFFFFFF")), indexOf, str.length() + indexOf, 33);
        }
        this.f17688f.setText(spannableStringBuilder);
        hc.a.h(this.f17689g, this.f17683a.getUserImg(), R.mipmap.default_head);
        this.f17687e.scrollTo(0, 0);
    }

    public void q() {
        this.f17685c.postDelayed(new Runnable() { // from class: q8.a
            @Override // java.lang.Runnable
            public final void run() {
                FloatMarqueeScrollHolder.this.o();
            }
        }, 1000L);
        this.f17686d = System.currentTimeMillis();
    }

    public void setOnScrollListener(c cVar) {
        this.f17690h = cVar;
    }
}
