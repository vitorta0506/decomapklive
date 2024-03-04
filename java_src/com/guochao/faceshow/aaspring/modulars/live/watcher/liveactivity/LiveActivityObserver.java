package com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.promotion.data.PromotionData;
import com.guochao.faceshow.views.ObservableHorizontalScrollView;
import io.reactivex.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class LiveActivityObserver {

    /* renamed from: k  reason: collision with root package name */
    private static LiveActivityObserver f20089k;

    /* renamed from: a  reason: collision with root package name */
    int f20090a;

    /* renamed from: d  reason: collision with root package name */
    public boolean f20093d;

    /* renamed from: e  reason: collision with root package name */
    boolean f20094e;

    /* renamed from: b  reason: collision with root package name */
    private List<h9.a> f20091b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private List<PromotionData.ResultItem> f20092c = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    boolean f20095f = true;

    /* renamed from: g  reason: collision with root package name */
    Map<Integer, e<Drawable>> f20096g = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    Map<Integer, i> f20097h = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    d<Drawable> f20098i = new c();

    /* renamed from: j  reason: collision with root package name */
    h f20099j = new h();

    /* loaded from: classes3.dex */
    public static class ScrollLinearLayoutManager extends LinearLayoutManager {

        /* renamed from: a  reason: collision with root package name */
        private boolean f20100a;

        /* loaded from: classes3.dex */
        class a extends LinearSmoothScroller {
            a(Context context) {
                super(context);
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return (BaseApplication.getInstance().getResources().getDisplayMetrics().density * 0.3f) / displayMetrics.density;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ScrollLinearLayoutManager(Context context, int i9, boolean z10, boolean z11) {
            super(context, i9, z10);
            this.f20100a = z11;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b(boolean z10) {
            this.f20100a = z10;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollHorizontally() {
            if (this.f20100a) {
                return super.canScrollHorizontally();
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i9) {
            a aVar = new a(recyclerView.getContext());
            aVar.setTargetPosition(i9);
            startSmoothScroll(aVar);
        }
    }

    /* loaded from: classes3.dex */
    class a extends e<Drawable> {

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ f f20102h;

        a(f fVar) {
            this.f20102h = fVar;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityObserver.e
        /* renamed from: b */
        public synchronized void a(int i9, Drawable drawable, int i10, boolean z10, List<PromotionData.ActivityGiftEntity> list) {
            String str;
            SpannableStringBuilder append;
            SpannableStringBuilder spannableStringBuilder;
            f fVar;
            int i11;
            int i12;
            super.a(i9, drawable, i10, z10, list);
            this.f20116f.put(this.f20115e, drawable);
            SpannableStringBuilder append2 = SpanColorUtils.appendSpanner(BaseApplication.getInstance(), 10.0f, drawable, new SpannableStringBuilder()).append((CharSequence) "No.");
            if (list.get(i10).getRank() <= 100 && list.get(i10).getRank() > 0) {
                str = String.valueOf(list.get(i10).getRank());
                append = append2.append((CharSequence) str);
                if (LiveActivityObserver.this.f20091b.size() > i9 && ((h9.a) LiveActivityObserver.this.f20091b.get(i9)).a().size() > (i12 = i10 * 2)) {
                    ((h9.a) LiveActivityObserver.this.f20091b.get(i9)).a().set(i12, append);
                }
                spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) SpanColorUtils.appendSpanner(BaseApplication.getInstance(), 10.0f, drawable, new SpannableStringBuilder(BaseApplication.getInstance().getResources().getString(R.string.live_rank_detail)))).append((CharSequence) x.f19108w).append((CharSequence) String.valueOf(list.get(i10).getDuringNum()));
                if (LiveActivityObserver.this.f20091b.size() > i9 && ((h9.a) LiveActivityObserver.this.f20091b.get(i9)).a().size() > (i11 = (i10 * 2) + 1)) {
                    ((h9.a) LiveActivityObserver.this.f20091b.get(i9)).a().set(i11, spannableStringBuilder);
                }
                if (z10 && LiveActivityObserver.this.f20091b.size() > i9 && ((h9.a) LiveActivityObserver.this.f20091b.get(i9)).a().size() == list.size() * 2 && ((h9.a) LiveActivityObserver.this.f20091b.get(i9)).a().get(((h9.a) LiveActivityObserver.this.f20091b.get(i9)).a().size() - 1) != null && (fVar = this.f20102h) != null) {
                    fVar.a(this.f20117g);
                }
            }
            str = "100+";
            append = append2.append((CharSequence) str);
            if (LiveActivityObserver.this.f20091b.size() > i9) {
                ((h9.a) LiveActivityObserver.this.f20091b.get(i9)).a().set(i12, append);
            }
            spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) SpanColorUtils.appendSpanner(BaseApplication.getInstance(), 10.0f, drawable, new SpannableStringBuilder(BaseApplication.getInstance().getResources().getString(R.string.live_rank_detail)))).append((CharSequence) x.f19108w).append((CharSequence) String.valueOf(list.get(i10).getDuringNum()));
            if (LiveActivityObserver.this.f20091b.size() > i9) {
                ((h9.a) LiveActivityObserver.this.f20091b.get(i9)).a().set(i11, spannableStringBuilder);
            }
            if (z10) {
                fVar.a(this.f20117g);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends i {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityObserver.i
        public void b(Drawable drawable, View view) {
            this.f20123c.put(this.f20121a, drawable);
            if (view.getBackground() != drawable) {
                view.setBackground(drawable);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends d<Drawable> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityObserver.d
        /* renamed from: c */
        public void b(Drawable drawable, TextView textView, PromotionData.ActivityGiftEntity activityGiftEntity) {
            this.f20109d.put(this.f20106a, drawable);
            SpannableStringBuilder append = SpanColorUtils.appendSpanner(BaseApplication.getInstance(), 10.0f, drawable, new SpannableStringBuilder()).append((CharSequence) "No.").append((CharSequence) ((activityGiftEntity.getRank() > 100 || activityGiftEntity.getRank() <= 0) ? "100+" : String.valueOf(activityGiftEntity.getRank())));
            if (a() != null) {
                a().a(textView, append);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class d<T> extends SimpleObserver<T> {

        /* renamed from: a  reason: collision with root package name */
        public String f20106a;

        /* renamed from: b  reason: collision with root package name */
        public PromotionData.ActivityGiftEntity f20107b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f20108c;

        /* renamed from: d  reason: collision with root package name */
        public Map<String, Drawable> f20109d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        public g f20110e;

        d() {
            LogUtils.i("zune：", "创建了GiftObserver");
        }

        public g a() {
            return this.f20110e;
        }

        public abstract void b(T t10, TextView textView, PromotionData.ActivityGiftEntity activityGiftEntity);

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(T t10) {
            b(t10, this.f20108c, this.f20107b);
        }

        public void setListener(g gVar) {
            this.f20110e = gVar;
        }
    }

    /* loaded from: classes3.dex */
    public static class e<T> extends SimpleObserver<T> {

        /* renamed from: a  reason: collision with root package name */
        int f20111a;

        /* renamed from: b  reason: collision with root package name */
        int f20112b;

        /* renamed from: c  reason: collision with root package name */
        boolean f20113c;

        /* renamed from: d  reason: collision with root package name */
        List<PromotionData.ActivityGiftEntity> f20114d;

        /* renamed from: e  reason: collision with root package name */
        public String f20115e;

        /* renamed from: f  reason: collision with root package name */
        public Map<String, Drawable> f20116f = new HashMap();

        /* renamed from: g  reason: collision with root package name */
        public LiveActivityView f20117g;

        e() {
        }

        public synchronized void a(int i9, T t10, int i10, boolean z10, List<PromotionData.ActivityGiftEntity> list) {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(T t10) {
            super.onNext(t10);
            a(this.f20111a, t10, this.f20112b, this.f20113c, this.f20114d);
        }
    }

    /* loaded from: classes3.dex */
    public interface f {
        void a(LiveActivityView liveActivityView);
    }

    /* loaded from: classes3.dex */
    public interface g {
        void a(TextView textView, SpannableStringBuilder spannableStringBuilder);
    }

    /* loaded from: classes3.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        private TextView f20118a;

        /* renamed from: b  reason: collision with root package name */
        private List<SpannableStringBuilder> f20119b;

        /* renamed from: c  reason: collision with root package name */
        private ObservableHorizontalScrollView f20120c;

        h() {
            LogUtils.i("zune：", "创建了QueueHelper");
        }

        public ObservableHorizontalScrollView a() {
            return this.f20120c;
        }

        public TextView b() {
            return this.f20118a;
        }

        public List<SpannableStringBuilder> c() {
            return this.f20119b;
        }

        public void d(ObservableHorizontalScrollView observableHorizontalScrollView) {
            this.f20120c = observableHorizontalScrollView;
        }

        public void e(TextView textView) {
            this.f20118a = textView;
        }

        public void f(List<SpannableStringBuilder> list) {
            this.f20119b = list;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class i implements r<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        public String f20121a;

        /* renamed from: b  reason: collision with root package name */
        public View f20122b;

        /* renamed from: c  reason: collision with root package name */
        public Map<String, Drawable> f20123c = new HashMap();

        i() {
            LogUtils.i("zune：", "创建了ViewObserver");
        }

        @Override // io.reactivex.r
        /* renamed from: a */
        public void onNext(Drawable drawable) {
            b(drawable, this.f20122b);
        }

        public abstract void b(Drawable drawable, View view);

        @Override // io.reactivex.r
        public void onComplete() {
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
        }
    }

    private LiveActivityObserver() {
        g();
    }

    public static LiveActivityObserver d() {
        LiveActivityObserver liveActivityObserver = f20089k;
        if (liveActivityObserver == null) {
            synchronized (LiveActivityObserver.class) {
                LiveActivityObserver liveActivityObserver2 = f20089k;
                if (liveActivityObserver2 == null) {
                    f20089k = new LiveActivityObserver();
                } else if (liveActivityObserver2.f20091b.isEmpty()) {
                    f20089k.g();
                }
            }
        } else if (liveActivityObserver.f20091b.isEmpty()) {
            f20089k.g();
        }
        return f20089k;
    }

    private void g() {
        if (c8.b.k().n()) {
            List<PromotionData.ResultItem> normalLive = c8.b.k().j().result.getNormalLive();
            this.f20091b.clear();
            this.f20092c.clear();
            for (int i9 = 0; i9 < normalLive.size(); i9++) {
                if (normalLive.get(i9) != null) {
                    h9.a aVar = new h9.a();
                    aVar.d(normalLive.get(i9).isBackgroundImg == 0);
                    aVar.e(new ArrayList());
                    aVar.f(normalLive.get(i9).floatIconUrl);
                    this.f20092c.add(normalLive.get(i9));
                    this.f20091b.add(aVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<PromotionData.ResultItem> b() {
        return this.f20092c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<h9.a> c() {
        return this.f20091b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e<Drawable> e(f fVar) {
        return new a(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i f() {
        return new b();
    }

    public void h() {
        this.f20092c.clear();
        f20089k = null;
    }
}
