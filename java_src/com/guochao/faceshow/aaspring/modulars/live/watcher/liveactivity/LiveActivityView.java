package com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.text.BidiFormatter;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import c8.b;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.ActivityGift;
import com.guochao.faceshow.aaspring.beans.ActivityGiftEntity;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityObserver;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityView;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.TextDrawableUtil;
import com.guochao.faceshow.promotion.data.PromotionData;
import com.guochao.faceshow.promotion.view.WebViewDialog;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.ObservableHorizontalScrollView;
import com.rd.PageIndicatorView;
import io.reactivex.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class LiveActivityView extends RelativeLayout implements b.c {

    /* renamed from: a  reason: collision with root package name */
    private int f20124a;

    /* renamed from: b  reason: collision with root package name */
    private int f20125b;
    @BindView
    RecyclerView banner;

    /* renamed from: c  reason: collision with root package name */
    private int f20126c;

    /* renamed from: d  reason: collision with root package name */
    private int f20127d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f20128e;

    /* renamed from: f  reason: collision with root package name */
    private LiveActivityObserver.h f20129f;

    /* renamed from: g  reason: collision with root package name */
    private PagerSnapHelper f20130g;

    /* renamed from: h  reason: collision with root package name */
    private LiveActivityObserver.ScrollLinearLayoutManager f20131h;

    /* renamed from: i  reason: collision with root package name */
    private Handler f20132i;

    /* renamed from: j  reason: collision with root package name */
    private Runnable f20133j;

    /* renamed from: k  reason: collision with root package name */
    private WebViewDialog f20134k;

    /* renamed from: l  reason: collision with root package name */
    private com.guochao.faceshow.aaspring.modulars.live.game.f f20135l;

    /* renamed from: m  reason: collision with root package name */
    private Runnable f20136m;

    /* renamed from: n  reason: collision with root package name */
    private long f20137n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f20138o;

    /* renamed from: p  reason: collision with root package name */
    private Runnable f20139p;
    @BindView
    PageIndicatorView pageIndicatorView;

    /* renamed from: q  reason: collision with root package name */
    private int f20140q;

    /* renamed from: r  reason: collision with root package name */
    private LiveActivityObserver.g f20141r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            if (i9 != 0) {
                return;
            }
            LiveActivityView.this.r(LiveActivityView.this.f20130g.findSnapView(LiveActivityView.this.f20131h), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.Adapter {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements ObservableHorizontalScrollView.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.ObservableHorizontalScrollView.a
            public void a(ObservableHorizontalScrollView observableHorizontalScrollView, int i9, int i10, int i11, int i12) {
                LiveActivityView.this.f20126c = i9;
                if (LiveActivityView.this.f20129f != null && BidiFormatter.getInstance().isRtl(LiveActivityView.this.f20129f.b().getText())) {
                    LiveActivityView liveActivityView = LiveActivityView.this;
                    liveActivityView.f20127d = Math.max(i9, liveActivityView.f20127d);
                    return;
                }
                LiveActivityView.this.f20127d = 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityView$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class View$OnClickListenerC0195b implements View.OnClickListener {
            View$OnClickListenerC0195b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DisableDoubleClickUtils.canClick(view)) {
                    LiveActivityView.this.B();
                }
            }
        }

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return Integer.MAX_VALUE;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            if (LiveActivityObserver.d().c().isEmpty() || c8.b.k().j().result == null || c8.b.k().j().result.getNormalLive() == null) {
                return;
            }
            TextView textView = (TextView) viewHolder.itemView.findViewById(R.id.live_top_rank_tips);
            List<PromotionData.ResultItem> normalLive = c8.b.k().j().result.getNormalLive();
            int size = i9 % LiveActivityObserver.d().c().size();
            if (!normalLive.isEmpty() && normalLive.size() > size) {
                List<PromotionData.ActivityGiftEntity> list = normalLive.get(size).appActivityGiftEntityList;
                if (list != null && !list.isEmpty()) {
                    LiveActivityObserver.d().f20098i.f20108c = textView;
                    LiveActivityObserver.d().f20098i.f20107b = list.get(0);
                    LiveActivityObserver.d().f20098i.f20106a = list.get(0).getGiftUrl();
                    Drawable drawable = LiveActivityObserver.d().f20098i.f20109d.get(LiveActivityObserver.d().f20098i.f20106a);
                    if (drawable != null) {
                        LiveActivityObserver.d().f20098i.b(drawable, LiveActivityObserver.d().f20098i.f20108c, LiveActivityObserver.d().f20098i.f20107b);
                    } else {
                        TextDrawableUtil.urlToDrawable(LiveActivityView.this.getContext(), list.get(0).getGiftUrl(), LiveActivityObserver.d().f20098i);
                    }
                    LiveActivityObserver.d().f20098i.setListener(LiveActivityView.this.f20141r);
                } else {
                    LiveActivityView.this.J(textView, "No.100+");
                }
            } else {
                LiveActivityView.this.J(textView, "No.100+");
            }
            ObservableHorizontalScrollView observableHorizontalScrollView = (ObservableHorizontalScrollView) viewHolder.itemView.findViewById(R.id.live_scroll_layout);
            h9.a aVar = LiveActivityObserver.d().c().get(size);
            hc.a.j((ImageView) viewHolder.itemView.findViewById(R.id.iv_activity), aVar.b());
            if (aVar.c() && c8.b.k().j().result.getNormalLive().size() > size) {
                observableHorizontalScrollView.setVisibility(0);
                LiveActivityObserver.i iVar = LiveActivityObserver.d().f20097h.get(Integer.valueOf(size));
                if (iVar == null) {
                    iVar = LiveActivityObserver.d().f();
                    LiveActivityObserver.d().f20097h.put(Integer.valueOf(size), iVar);
                }
                iVar.f20122b = observableHorizontalScrollView;
                String str = c8.b.k().j().result.getNormalLive().get(size).backgroundImg;
                iVar.f20121a = str;
                Drawable drawable2 = iVar.f20123c.get(str);
                if (drawable2 != null) {
                    iVar.b(drawable2, iVar.f20122b);
                    return;
                } else {
                    TextDrawableUtil.urlToDrawable(LiveActivityView.this.getContext(), str, iVar);
                    return;
                }
            }
            observableHorizontalScrollView.setVisibility(8);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(LiveActivityView.this.getContext()).inflate(R.layout.live_activity_banner_layout, viewGroup, false));
            ((ObservableHorizontalScrollView) baseViewHolder.getView(R.id.live_scroll_layout)).setScrollViewListener(new a());
            baseViewHolder.itemView.setTag(R.id.game_click, "show");
            baseViewHolder.itemView.setOnClickListener(new View$OnClickListenerC0195b());
            return baseViewHolder;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements LiveActivityObserver.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f20146a;

        c(boolean z10) {
            this.f20146a = z10;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityObserver.f
        public void a(LiveActivityView liveActivityView) {
            if (this.f20146a) {
                LiveActivityObserver.d().f20090a++;
                if (LiveActivityObserver.d().f20090a == c8.b.k().j().result.getNormalLive().size()) {
                    LiveActivityObserver.d().f20094e = true;
                    liveActivityView.x();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends SimpleObserver<Integer> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(Integer num) {
            super.onNext((d) num);
            if (LiveActivityView.this.f20131h == null || LiveActivityView.this.f20131h.getChildCount() <= 0) {
                return;
            }
            LiveActivityView.this.r(LiveActivityView.this.f20131h.getChildAt(0), true);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveActivityView.this.f20128e = true;
            LiveActivityView liveActivityView = LiveActivityView.this;
            liveActivityView.f20126c = liveActivityView.f20127d;
            LiveActivityView.this.f20137n = System.currentTimeMillis();
            LiveActivityView.this.A();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SpannableStringBuilder f20150a;

        f(SpannableStringBuilder spannableStringBuilder) {
            this.f20150a = spannableStringBuilder;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!TextUtils.isEmpty(this.f20150a) && BidiFormatter.getInstance().isRtl(this.f20150a)) {
                LiveActivityView.this.f20129f.a().fullScroll(66);
            } else {
                LiveActivityView.this.f20129f.a().fullScroll(17);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements LiveActivityObserver.g {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityObserver.g
        public void a(TextView textView, SpannableStringBuilder spannableStringBuilder) {
            LiveActivityView.this.J(textView, spannableStringBuilder);
        }
    }

    public LiveActivityView(Context context) {
        super(context);
        this.f20129f = LiveActivityObserver.d().f20099j;
        this.f20132i = new Handler();
        this.f20139p = new e();
        this.f20141r = new g();
        u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void B() {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityView.B():void");
    }

    private void G(List<PromotionData.ResultItem> list, boolean z10, boolean z11) {
        if (z11) {
            LiveActivityObserver.d().f20094e = false;
            LiveActivityObserver.d().f20090a = 0;
        }
        if (z10) {
            LiveActivityObserver.d().f20096g.clear();
            LiveActivityObserver.d().f20097h.clear();
        }
        for (int i9 = 0; i9 < list.size() && LiveActivityObserver.d().c().size() > i9; i9++) {
            if (list.get(i9).appActivityGiftEntityList != null && !list.get(i9).appActivityGiftEntityList.isEmpty()) {
                List<PromotionData.ActivityGiftEntity> list2 = list.get(i9).appActivityGiftEntityList;
                if (z10) {
                    LiveActivityObserver.d().c().get(i9).a().clear();
                }
                for (int i10 = 0; i10 < list2.size(); i10++) {
                    if (z10) {
                        LiveActivityObserver.d().c().get(i9).a().add(null);
                        LiveActivityObserver.d().c().get(i9).a().add(null);
                    }
                    LiveActivityObserver.e<Drawable> eVar = LiveActivityObserver.d().f20096g.get(Integer.valueOf((list.size() * i9) + i10));
                    if (eVar == null) {
                        eVar = LiveActivityObserver.d().e(new c(z11));
                        LiveActivityObserver.d().f20096g.put(Integer.valueOf((list.size() * i9) + i10), eVar);
                    }
                    LiveActivityObserver.e<Drawable> eVar2 = eVar;
                    eVar2.f20117g = this;
                    eVar2.f20111a = i9;
                    eVar2.f20112b = i10;
                    eVar2.f20113c = z11;
                    eVar2.f20114d = list2;
                    String giftUrl = list2.get(i10).getGiftUrl();
                    eVar2.f20115e = giftUrl;
                    Drawable drawable = eVar2.f20116f.get(giftUrl);
                    if (drawable != null) {
                        eVar2.a(eVar2.f20111a, drawable, eVar2.f20112b, eVar2.f20113c, eVar2.f20114d);
                    } else {
                        TextDrawableUtil.urlToDrawable(getContext(), list2.get(i10).getGiftUrl(), eVar2);
                    }
                }
            } else {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) "No.100+");
                if (z10) {
                    if (LiveActivityObserver.d().c().size() > i9) {
                        LiveActivityObserver.d().c().get(i9).a().add(spannableStringBuilder);
                    }
                } else if (LiveActivityObserver.d().c().size() > i9 && LiveActivityObserver.d().c().get(i9).a().size() > 0) {
                    LiveActivityObserver.d().c().get(i9).a().set(0, spannableStringBuilder);
                }
                if (z11) {
                    LiveActivityObserver.d().f20090a++;
                    if (LiveActivityObserver.d().f20090a == c8.b.k().j().result.getNormalLive().size()) {
                        LiveActivityObserver.d().f20094e = true;
                        x();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(TextView textView, CharSequence charSequence) {
        if (TextUtils.isEmpty(textView.getText())) {
            textView.setText(charSequence);
            float measureText = textView.getPaint().measureText(charSequence.toString());
            HorizontalScrollView horizontalScrollView = (HorizontalScrollView) textView.getParent();
            if ((horizontalScrollView.getLayoutParams().width - horizontalScrollView.getPaddingStart()) - horizontalScrollView.getPaddingEnd() > measureText) {
                ((FrameLayout.LayoutParams) textView.getLayoutParams()).gravity = 17;
            } else {
                ((FrameLayout.LayoutParams) textView.getLayoutParams()).gravity = 8388627;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        if (x()) {
            int size = this.f20124a % LiveActivityObserver.d().c().size();
            if (LiveActivityObserver.d().c().size() == 1 && this.f20125b == LiveActivityObserver.d().c().get(0).a().size() - 1) {
                this.f20125b = 0;
                L();
            } else if (this.f20125b < LiveActivityObserver.d().c().get(size).a().size() - 1) {
                this.f20125b++;
                L();
            } else {
                this.f20125b = 0;
                if (Math.abs(this.f20124a - this.f20131h.findFirstVisibleItemPosition()) > 1) {
                    this.f20124a = this.f20131h.findFirstVisibleItemPosition();
                }
                this.banner.smoothScrollToPosition(this.f20124a + 1);
            }
        }
    }

    private synchronized void L() {
        if (D()) {
            this.f20138o = true;
            return;
        }
        LiveActivityObserver.h hVar = this.f20129f;
        if (hVar != null && hVar.c() != null && this.f20129f.c().size() > this.f20125b) {
            SpannableStringBuilder spannableStringBuilder = this.f20129f.c().get(this.f20125b);
            if (spannableStringBuilder == null) {
                spannableStringBuilder = new SpannableStringBuilder();
            }
            if ((this.f20129f.a().getLayoutParams().width - this.f20129f.a().getPaddingStart()) - this.f20129f.a().getPaddingEnd() > this.f20129f.b().getPaint().measureText(spannableStringBuilder.toString())) {
                ((FrameLayout.LayoutParams) this.f20129f.b().getLayoutParams()).gravity = 17;
            } else {
                ((FrameLayout.LayoutParams) this.f20129f.b().getLayoutParams()).gravity = 8388627;
            }
            if (!this.f20129f.b().getText().toString().equals(spannableStringBuilder.toString())) {
                this.f20129f.b().setText(spannableStringBuilder);
            }
            this.f20129f.a().postDelayed(new f(spannableStringBuilder), 10L);
            this.f20132i.postDelayed(this.f20139p, 2000L);
        }
    }

    private boolean M(List<PromotionData.ResultItem> list, List<ActivityGift> list2) {
        boolean z10 = false;
        if (list != null && list2 != null) {
            for (PromotionData.ResultItem resultItem : list) {
                int i9 = resultItem.f26120id;
                for (ActivityGift activityGift : list2) {
                    if (String.valueOf(i9).equals(activityGift.getId())) {
                        boolean O = O(resultItem.appActivityGiftEntityList, activityGift.getAppActivityGiftEntityList());
                        if (!z10) {
                            z10 = O;
                        }
                    }
                }
            }
        }
        return z10;
    }

    private void N(int i9) {
        this.pageIndicatorView.setSelected(i9);
    }

    private void p() {
        Runnable runnable;
        Handler handler = this.f20132i;
        if (handler != null && (runnable = this.f20136m) != null) {
            handler.removeCallbacks(runnable);
        }
        long currentTimeMillis = System.currentTimeMillis() - this.f20137n;
        if (this.f20136m == null) {
            this.f20136m = new Runnable() { // from class: h9.d
                @Override // java.lang.Runnable
                public final void run() {
                    LiveActivityView.this.K();
                }
            };
        }
        Handler handler2 = this.f20132i;
        if (handler2 != null) {
            handler2.postDelayed(this.f20136m, currentTimeMillis < 10 ? 3000L : 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(View view, boolean z10) {
        h9.a aVar;
        if (LiveActivityObserver.d().c().isEmpty()) {
            setVisibility(8);
        } else if (view != null) {
            int position = this.f20131h.getPosition(view);
            this.f20124a = position;
            N(position % LiveActivityObserver.d().c().size());
            ObservableHorizontalScrollView observableHorizontalScrollView = (ObservableHorizontalScrollView) view.findViewById(R.id.live_scroll_layout);
            TextView textView = (TextView) view.findViewById(R.id.live_top_rank_tips);
            int size = position % LiveActivityObserver.d().c().size();
            if (z10) {
                aVar = LiveActivityObserver.d().c().get(0);
            } else {
                aVar = LiveActivityObserver.d().c().get(size);
            }
            if (aVar.a() != null && !aVar.a().isEmpty()) {
                textView.setText(aVar.a().get(0));
            }
            this.f20129f.e(textView);
            this.f20129f.f(aVar.a());
            this.f20129f.d(observableHorizontalScrollView);
            if (aVar.c()) {
                observableHorizontalScrollView.setVisibility(0);
            } else {
                observableHorizontalScrollView.setVisibility(8);
            }
            this.f20125b = 0;
            this.f20127d = 0;
            this.f20128e = false;
            L();
            if (c8.b.k().j().result.getNormalLive().size() == 1) {
                this.pageIndicatorView.setVisibility(4);
                this.f20131h.b(false);
                return;
            }
            this.pageIndicatorView.setVisibility(0);
            this.f20131h.b(true);
        }
    }

    private boolean s(List<PromotionData.ResultItem> list, List<PromotionData.ResultItem> list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if (list == null || list2 == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (PromotionData.ResultItem resultItem : list) {
            arrayList.add(Integer.valueOf(resultItem.f26120id));
        }
        for (PromotionData.ResultItem resultItem2 : list2) {
            arrayList2.add(Integer.valueOf(resultItem2.f26120id));
        }
        return arrayList.containsAll(arrayList2) && arrayList2.containsAll(arrayList);
    }

    private void t() {
        k.just(1).delay(300L, TimeUnit.MILLISECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new d());
    }

    private void u() {
        EventBus.getDefault().register(this);
        c8.b.k().registerChangeListener(this);
        LayoutInflater.from(getContext()).inflate(R.layout.live_activity_layout, (ViewGroup) this, true);
        ButterKnife.b(this);
        v();
        if (x()) {
            G(c8.b.k().j().result.getNormalLive(), !LiveActivityObserver.d().f20093d, !LiveActivityObserver.d().f20093d);
            LiveActivityObserver.d().f20093d = true;
            this.banner.scrollToPosition(LockFreeTaskQueueCore.MAX_CAPACITY_MASK - (LockFreeTaskQueueCore.MAX_CAPACITY_MASK % LiveActivityObserver.d().c().size()));
            if (this.banner.getAdapter() != null) {
                this.banner.getAdapter().notifyDataSetChanged();
            }
            this.pageIndicatorView.setCount(LiveActivityObserver.d().c().size());
        }
    }

    private void v() {
        this.f20130g = new PagerSnapHelper();
        LiveActivityObserver.ScrollLinearLayoutManager scrollLinearLayoutManager = new LiveActivityObserver.ScrollLinearLayoutManager(getContext(), 0, false, true);
        this.f20131h = scrollLinearLayoutManager;
        this.banner.setLayoutManager(scrollLinearLayoutManager);
        this.banner.addOnScrollListener(new a());
        this.f20130g.attachToRecyclerView(this.banner);
        this.banner.setAdapter(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y() {
        if (this.f20140q == this.f20126c) {
            p();
        } else {
            A();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z() {
        if (this.f20140q == this.f20126c) {
            p();
        } else {
            A();
        }
    }

    public void A() {
        int i9;
        int i10;
        int i11;
        int i12;
        Runnable runnable;
        Runnable runnable2;
        if (this.f20129f == null) {
            return;
        }
        Handler handler = this.f20132i;
        if (handler != null && (runnable2 = this.f20136m) != null) {
            handler.removeCallbacks(runnable2);
        }
        Handler handler2 = this.f20132i;
        if (handler2 != null && (runnable = this.f20133j) != null) {
            handler2.removeCallbacks(runnable);
        }
        boolean z10 = true;
        if (BidiFormatter.getInstance().isRtl(this.f20129f.b().getText())) {
            if (this.f20128e && this.f20129f.b().getPaint().measureText(this.f20129f.b().getText().toString()) > this.f20129f.a().getWidth() - DensityUtil.dp2px(getContext(), 20.0f)) {
                this.f20140q = this.f20126c;
                this.f20129f.a().scrollBy(-1, 0);
                int scrollX = this.f20129f.a().getScrollX();
                int i13 = this.f20140q;
                if (scrollX == i13 && i13 == (i11 = this.f20126c) && i11 == (i12 = this.f20127d) && i12 == 0) {
                    p();
                    return;
                }
                if (this.f20129f.a().getScrollX() == this.f20140q && this.f20126c != this.f20127d) {
                    z10 = false;
                }
                this.f20128e = z10;
                if (this.f20133j == null) {
                    this.f20133j = new Runnable() { // from class: h9.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            LiveActivityView.this.y();
                        }
                    };
                }
                this.f20132i.postDelayed(this.f20133j, 30L);
                return;
            }
            p();
            return;
        }
        float measureText = this.f20129f.b().getPaint().measureText(this.f20129f.b().getText().toString());
        int width = this.f20129f.a().getWidth() - DensityUtil.dp2px(getContext(), 20.0f);
        if (this.f20128e && measureText > width) {
            this.f20140q = this.f20126c;
            this.f20129f.a().scrollBy(1, 0);
            int scrollX2 = this.f20129f.a().getScrollX();
            int i14 = this.f20140q;
            if (scrollX2 == i14 && i14 == (i9 = this.f20126c) && i9 == (i10 = this.f20127d) && i10 == 0) {
                p();
                return;
            }
            if (scrollX2 == i14 && this.f20126c != this.f20127d) {
                z10 = false;
            }
            this.f20128e = z10;
            if (this.f20133j == null) {
                this.f20133j = new Runnable() { // from class: h9.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        LiveActivityView.this.z();
                    }
                };
            }
            this.f20132i.postDelayed(this.f20133j, 30L);
            return;
        }
        p();
    }

    public void C() {
        Runnable runnable;
        Runnable runnable2;
        Runnable runnable3;
        Handler handler = this.f20132i;
        if (handler != null && (runnable3 = this.f20136m) != null) {
            handler.removeCallbacks(runnable3);
        }
        Handler handler2 = this.f20132i;
        if (handler2 != null && (runnable2 = this.f20139p) != null) {
            handler2.removeCallbacks(runnable2);
        }
        Handler handler3 = this.f20132i;
        if (handler3 != null && (runnable = this.f20133j) != null) {
            handler3.removeCallbacks(runnable);
        }
        WebViewDialog webViewDialog = this.f20134k;
        if (webViewDialog != null) {
            webViewDialog.dismiss();
        }
        c8.b.k().unRegisterChangeListener(this);
        EventBus.getDefault().unregister(this);
    }

    public boolean D() {
        return !(BaseApplication.getInstance().getCurrTopActivity() instanceof BaseLiveActivity);
    }

    public void E(LiveInfoResult liveInfoResult) {
        if (liveInfoResult == null) {
            F(new ArrayList());
        } else {
            F(liveInfoResult.getAppActivityGiftList());
        }
    }

    public void F(List<ActivityGift> list) {
        boolean z10;
        if (x()) {
            List<PromotionData.ResultItem> normalLive = c8.b.k().j().result.getNormalLive();
            if (s(LiveActivityObserver.d().b(), normalLive)) {
                z10 = false;
            } else {
                LiveActivityObserver.d().b().clear();
                LiveActivityObserver.d().c().clear();
                z10 = true;
            }
            boolean M = M(normalLive, list);
            if (z10) {
                M = true;
            }
            RecyclerView recyclerView = this.banner;
            if (recyclerView != null && recyclerView.getAdapter() != null) {
                this.banner.getAdapter().notifyDataSetChanged();
            }
            if (this.pageIndicatorView != null && !LiveActivityObserver.d().c().isEmpty()) {
                this.pageIndicatorView.setCount(LiveActivityObserver.d().c().size());
            }
            if (!M) {
                x();
            }
            G(normalLive, z10, M);
            if (z10) {
                LiveActivityObserver.d().f20095f = true;
                x();
                return;
            }
        }
        if (c8.b.k().n() && !LiveActivityObserver.d().c().isEmpty() && LiveActivityObserver.d().f20094e && !LiveActivityObserver.d().c().isEmpty() && LiveActivityObserver.d().f20095f) {
            LogUtils.i("zune：", "重启跑马灯：mQueueInited = " + LiveActivityObserver.d().f20094e + ", needReset = " + LiveActivityObserver.d().f20095f);
            this.banner.scrollToPosition(LockFreeTaskQueueCore.MAX_CAPACITY_MASK - (LockFreeTaskQueueCore.MAX_CAPACITY_MASK % LiveActivityObserver.d().c().size()));
            t();
            LiveActivityObserver.d().f20095f = false;
        }
    }

    public void H() {
        EventBus.getDefault().post("resetView");
        if (x()) {
            LogUtils.i("zune：", "重启跑马灯：resetView");
            this.banner.scrollToPosition(LockFreeTaskQueueCore.MAX_CAPACITY_MASK - (LockFreeTaskQueueCore.MAX_CAPACITY_MASK % LiveActivityObserver.d().c().size()));
            t();
        }
    }

    public void I() {
        if (this.f20138o) {
            L();
            this.f20138o = false;
        }
    }

    public boolean O(List<PromotionData.ActivityGiftEntity> list, List<ActivityGiftEntity> list2) {
        if (list == null || list2 == null) {
            return false;
        }
        boolean z10 = false;
        for (PromotionData.ActivityGiftEntity activityGiftEntity : list) {
            Iterator<ActivityGiftEntity> it = list2.iterator();
            while (true) {
                if (it.hasNext()) {
                    ActivityGiftEntity next = it.next();
                    if (activityGiftEntity.getGiftId() == next.getGiftId()) {
                        if (!z10) {
                            z10 = activityGiftEntity.getRank() != next.getRank();
                        }
                        activityGiftEntity.setRank(next.getRank());
                        if (!z10) {
                            z10 = activityGiftEntity.getDuringNum() != next.getDuringNum();
                        }
                        activityGiftEntity.setDuringNum(next.getDuringNum());
                    }
                }
            }
        }
        return z10;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onResetViewEvent(String str) {
        Runnable runnable;
        Runnable runnable2;
        Runnable runnable3;
        if ("resetView".equals(str)) {
            Handler handler = this.f20132i;
            if (handler != null && (runnable3 = this.f20136m) != null) {
                handler.removeCallbacks(runnable3);
            }
            Handler handler2 = this.f20132i;
            if (handler2 != null && (runnable2 = this.f20139p) != null) {
                handler2.removeCallbacks(runnable2);
            }
            Handler handler3 = this.f20132i;
            if (handler3 == null || (runnable = this.f20133j) == null) {
                return;
            }
            handler3.removeCallbacks(runnable);
        }
    }

    public void q(com.guochao.faceshow.aaspring.modulars.live.game.f fVar) {
        this.f20135l = fVar;
    }

    @Override // c8.b.c
    public void w() {
        if (c8.b.k().n()) {
            F(new ArrayList());
        }
    }

    public boolean x() {
        if (c8.b.k().n() && !LiveActivityObserver.d().c().isEmpty()) {
            setVisibility(0);
            return true;
        }
        setVisibility(8);
        return false;
    }

    public LiveActivityView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20129f = LiveActivityObserver.d().f20099j;
        this.f20132i = new Handler();
        this.f20139p = new e();
        this.f20141r = new g();
        u();
    }

    public LiveActivityView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f20129f = LiveActivityObserver.d().f20099j;
        this.f20132i = new Handler();
        this.f20139p = new e();
        this.f20141r = new g();
        u();
    }
}
