package sa;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.MarqueeData;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.live.adapter.MarqueeRecycleAdapter;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment;
import com.guochao.faceshow.aaspring.utils.BitmapUtils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.gift.data.AnimFlag;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.TranslateUtils;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TimerTask;
import org.jetbrains.annotations.NotNull;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class c {

    /* renamed from: u  reason: collision with root package name */
    private static int f57793u = 2131363486;

    /* renamed from: v  reason: collision with root package name */
    private static final int[] f57794v = {R.mipmap.enter_room_20, R.mipmap.enter_room_30, R.mipmap.enter_room_40, R.mipmap.enter_room_50, R.mipmap.enter_room_60, R.mipmap.enter_room_70, R.mipmap.enter_room_80, R.mipmap.enter_room_80, R.mipmap.enter_room_100, R.mipmap.enter_room_90, R.mipmap.enter_room_120, R.mipmap.enter_room_110, R.mipmap.enter_room_140};

    /* renamed from: b  reason: collision with root package name */
    private d9.b f57796b;

    /* renamed from: c  reason: collision with root package name */
    private ViewGroup f57797c;

    /* renamed from: d  reason: collision with root package name */
    private Context f57798d;

    /* renamed from: g  reason: collision with root package name */
    private SVGAParser f57801g;

    /* renamed from: h  reason: collision with root package name */
    private int f57802h;

    /* renamed from: l  reason: collision with root package name */
    private View f57806l;

    /* renamed from: m  reason: collision with root package name */
    private HeadPortraitView f57807m;

    /* renamed from: n  reason: collision with root package name */
    private int f57808n;

    /* renamed from: q  reason: collision with root package name */
    private RecyclerView f57811q;

    /* renamed from: r  reason: collision with root package name */
    FragmentManager f57812r;

    /* renamed from: t  reason: collision with root package name */
    private Long f57814t;

    /* renamed from: a  reason: collision with root package name */
    LinearInterpolator f57795a = new LinearInterpolator();

    /* renamed from: i  reason: collision with root package name */
    private int f57803i = 1000;

    /* renamed from: j  reason: collision with root package name */
    private Handler f57804j = new Handler();

    /* renamed from: o  reason: collision with root package name */
    private boolean f57809o = true;

    /* renamed from: p  reason: collision with root package name */
    private Runnable f57810p = new a();

    /* renamed from: s  reason: collision with root package name */
    private Runnable f57813s = new g();

    /* renamed from: f  reason: collision with root package name */
    private List<AnimFlag> f57800f = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private List<View> f57799e = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    private boolean f57805k = Language.ARABIC.equalsIgnoreCase(q7.a.e().c());

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: sa.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0641a extends TimerTask {
            C0641a() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                c.this.f57804j.removeCallbacks(c.this.f57810p);
                c cVar = c.this;
                cVar.y(cVar.f57797c, false);
            }
        }

        /* loaded from: classes3.dex */
        class b extends TimerTask {
            b() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                c.this.f57804j.removeCallbacks(c.this.f57810p);
                c cVar = c.this;
                cVar.y(cVar.f57797c, false);
                LogUtils.e("LiveJoin", (System.currentTimeMillis() - c.this.f57814t.longValue()) + "");
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f57811q == null) {
                return;
            }
            if (c.this.f57805k) {
                if (!c.this.f57811q.canScrollHorizontally(-3)) {
                    c.this.f57804j.postDelayed(new C0641a(), 1500L);
                    return;
                }
                c.this.f57811q.smoothScrollBy(-20, 0, c.this.f57795a, 50);
            } else if (!c.this.f57811q.canScrollHorizontally(3)) {
                c.this.f57804j.postDelayed(new b(), 1500L);
                return;
            } else {
                c.this.f57811q.smoothScrollBy(20, 0, c.this.f57795a, 50);
            }
            c.this.f57804j.postDelayed(this, 50L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimFlag f57818a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f57819b;

        b(AnimFlag animFlag, SVGAImageView sVGAImageView) {
            this.f57818a = animFlag;
            this.f57819b = sVGAImageView;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.C(this.f57818a, this.f57819b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: sa.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class animation.Animation$AnimationListenerC0642c implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimFlag f57821a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f57822b;

        animation.Animation$AnimationListenerC0642c(AnimFlag animFlag, SVGAImageView sVGAImageView) {
            this.f57821a = animFlag;
            this.f57822b = sVGAImageView;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            AnimFlag animFlag = this.f57821a;
            if (animFlag.f25309s) {
                c.this.B(this.f57822b, animFlag);
            }
            if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                if (!c.this.f57811q.canScrollHorizontally(-3)) {
                    c.this.f57803i = 3000;
                } else {
                    c.this.f57803i = 1000;
                }
            } else if (!c.this.f57811q.canScrollHorizontally(3)) {
                c.this.f57803i = 3000;
            } else {
                c.this.f57803i = 1000;
            }
            c.this.f57804j.postDelayed(c.this.f57813s, c.this.f57803i);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements SVGAParser.ParseCompletion {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimFlag f57824a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f57825b;

        /* loaded from: classes3.dex */
        class a implements SVGACallback {
            a() {
            }

            @Override // com.opensource.svgaplayer.SVGACallback
            public void onFinished() {
                d dVar = d.this;
                dVar.f57824a.f25310t = 1;
                if (c.this.f57805k) {
                    if (c.this.f57811q.canScrollHorizontally(-3)) {
                        return;
                    }
                    c.this.f57804j.removeCallbacks(c.this.f57810p);
                    c.this.f57804j.removeCallbacks(c.this.f57813s);
                    c cVar = c.this;
                    cVar.y(cVar.f57797c, false);
                } else if (c.this.f57811q.canScrollHorizontally(3)) {
                } else {
                    c.this.f57804j.removeCallbacks(c.this.f57810p);
                    c.this.f57804j.removeCallbacks(c.this.f57813s);
                    c cVar2 = c.this;
                    cVar2.y(cVar2.f57797c, false);
                }
            }

            @Override // com.opensource.svgaplayer.SVGACallback
            public void onPause() {
            }

            @Override // com.opensource.svgaplayer.SVGACallback
            public void onRepeat() {
            }

            @Override // com.opensource.svgaplayer.SVGACallback
            public void onStep(int i9, double d10) {
            }
        }

        d(AnimFlag animFlag, SVGAImageView sVGAImageView) {
            this.f57824a = animFlag;
            this.f57825b = sVGAImageView;
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            if (this.f57824a.f25309s) {
                SvgaImageViewUtils.fitScreenWidth(sVGAVideoEntity, this.f57825b);
            } else {
                SvgaImageViewUtils.fitImageView(sVGAVideoEntity, this.f57825b, 3.0f);
            }
            this.f57825b.setVideoItem(sVGAVideoEntity);
            this.f57825b.startAnimation();
            AnimFlag animFlag = this.f57824a;
            if (animFlag.f25309s) {
                animFlag.f25310t = 0;
                this.f57825b.setCallback(new a());
            }
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
            c.this.t(this.f57824a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnAttachStateChangeListener {

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.u();
            }
        }

        e() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            AnimFlag animFlag = (AnimFlag) view.getTag(c.f57793u);
            if (animFlag == null) {
                return;
            }
            animFlag.f25301k = null;
            if (c.this.f57799e.size() < 20) {
                c.this.f57799e.add(view);
            }
            new Handler().postDelayed(new a(), 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimFlag f57830a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f57831b;

        f(AnimFlag animFlag, View view) {
            this.f57830a = animFlag;
            this.f57831b = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f57830a.f25293c = 0;
            c.this.f57797c.removeView(this.f57831b);
            if (c.this.f57800f.size() > 0) {
                c.this.f57800f.remove(0);
            }
            c.this.u();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.f57830a.f25293c = 1;
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f57803i == 3000) {
                c.this.f57804j.removeCallbacks(c.this.f57813s);
                c cVar = c.this;
                cVar.y(cVar.f57797c, false);
                LogUtils.e("LiveJoin", (System.currentTimeMillis() - c.this.f57814t.longValue()) + "");
                return;
            }
            c.this.f57804j.removeCallbacks(c.this.f57813s);
            c.this.f57804j.postDelayed(c.this.f57810p, 50L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements r9.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f57834a;

        h(String str) {
            this.f57834a = str;
        }

        @Override // r9.a
        public void a() {
            com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.remove(this.f57834a);
        }

        @Override // r9.a
        public void onErrorCallback() {
            com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.remove(this.f57834a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements r9.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f57836a;

        i(String str) {
            this.f57836a = str;
        }

        @Override // r9.a
        public void a() {
            com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.remove(this.f57836a);
        }

        @Override // r9.a
        public void onErrorCallback() {
            com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.remove(this.f57836a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimFlag f57838a;

        j(AnimFlag animFlag) {
            this.f57838a = animFlag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f57838a.f25304n.equals(b8.e.g().getUserId())) {
                return;
            }
            FragmentManager fragmentManager = c.this.f57812r;
            AnimFlag animFlag = this.f57838a;
            LivePeopleInfoCardFragment.showPeopleInfo(fragmentManager, animFlag.f25304n, animFlag.f25294d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnTouchListener {
        k() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public c(Context context, FragmentManager fragmentManager, ViewGroup viewGroup) {
        this.f57802h = 0;
        this.f57798d = context;
        this.f57812r = fragmentManager;
        this.f57797c = viewGroup;
        this.f57802h = 0;
        if (viewGroup.getLayoutTransition() != null) {
            viewGroup.getLayoutTransition().setAnimateParentHierarchy(false);
        }
        this.f57797c.addOnAttachStateChangeListener(new e());
        if (this.f57797c.getLayoutTransition() != null) {
            this.f57797c.getLayoutTransition().setAnimateParentHierarchy(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(SVGAImageView sVGAImageView, AnimFlag animFlag) {
        String dressCarId;
        FileInputStream fileInputStream;
        if (sVGAImageView != null) {
            this.f57801g = SvgaImageViewUtils.getParser();
            try {
                if (this.f57805k) {
                    dressCarId = Language.ARABIC + animFlag.f25307q.getDressCarId();
                } else {
                    dressCarId = animFlag.f25307q.getDressCarId();
                }
                if (TextUtils.isEmpty(dressCarId)) {
                    t(animFlag);
                    return;
                }
                if (animFlag.f25309s) {
                    fileInputStream = new FileInputStream(FilePathProvider.getNXShowPath("Car") + FileUtils.RES_PREFIX_STORAGE + dressCarId + "V2.svga");
                } else {
                    fileInputStream = new FileInputStream(FilePathProvider.getNXShowPath("Car") + FileUtils.RES_PREFIX_STORAGE + dressCarId + ".svga");
                }
                this.f57801g.decodeFromInputStream(fileInputStream, "entrance_car", new d(animFlag, sVGAImageView), true);
                return;
            } catch (FileNotFoundException e10) {
                e10.printStackTrace();
                return;
            }
        }
        t(animFlag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(AnimFlag animFlag, SVGAImageView sVGAImageView) {
        if (this.f57806l.getParent() != null) {
            ((ViewGroup) this.f57806l.getParent()).removeView(this.f57806l);
        }
        this.f57797c.addView(this.f57806l);
        if (animFlag.f25291a == null) {
            animFlag.f25291a = AnimationUtils.loadAnimation(this.f57798d, R.anim.right_x_in_anim);
        }
        animFlag.f25291a.setAnimationListener(new animation.Animation$AnimationListenerC0642c(animFlag, sVGAImageView));
        this.f57806l.startAnimation(animFlag.f25291a);
        this.f57802h = 1;
    }

    public static void r(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = viewGroup.getChildAt(i9);
            if (childAt instanceof ViewGroup) {
                r((ViewGroup) childAt);
            }
            childAt.clearAnimation();
        }
        viewGroup.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(AnimFlag animFlag) {
        if (animFlag.f25309s) {
            animFlag.f25310t = 1;
        }
        if (this.f57805k) {
            if (this.f57811q.canScrollHorizontally(-3)) {
                return;
            }
            this.f57804j.removeCallbacks(this.f57810p);
            this.f57804j.removeCallbacks(this.f57813s);
            y(this.f57797c, false);
        } else if (this.f57811q.canScrollHorizontally(3)) {
        } else {
            this.f57804j.removeCallbacks(this.f57810p);
            this.f57804j.removeCallbacks(this.f57813s);
            y(this.f57797c, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        List<AnimFlag> list;
        String str;
        this.f57814t = Long.valueOf(System.currentTimeMillis());
        if (this.f57797c.isAttachedToWindow() && (list = this.f57800f) != null && list.size() != 0 && this.f57797c.getChildCount() <= 1) {
            AnimFlag animFlag = this.f57800f.get(0);
            if (animFlag == null) {
                u();
                return;
            }
            View findViewWithTag = this.f57797c.findViewWithTag(animFlag.f25304n);
            this.f57806l = findViewWithTag;
            if (findViewWithTag == null) {
                View w6 = w(animFlag.f25308r != 1, animFlag.f25309s);
                this.f57806l = w6;
                w6.setVisibility(0);
            }
            AnimFlag animFlag2 = (AnimFlag) this.f57806l.getTag(f57793u);
            animFlag.f25291a = animFlag2 != null ? animFlag2.f25291a : null;
            animFlag.f25292b = animFlag2 != null ? animFlag2.f25292b : null;
            animFlag.f25300j = System.currentTimeMillis();
            this.f57806l.setTag(animFlag.f25304n);
            this.f57806l.setTag(f57793u, animFlag);
            this.f57811q = (RecyclerView) this.f57806l.findViewById(R.id.rcv_join_name);
            HeadPortraitView headPortraitView = (HeadPortraitView) this.f57806l.findViewById(R.id.head);
            this.f57807m = headPortraitView;
            if (headPortraitView != null) {
                if (!TextUtils.isEmpty(animFlag.f25307q.getDressHead())) {
                    this.f57807m.setAvatarStrokeWidth(0);
                } else {
                    this.f57807m.setAvatarStrokeWidth(DensityUtil.dp2px(1.5f));
                }
                this.f57807m.d(animFlag);
                this.f57807m.setOnClickListener(new j(animFlag));
            }
            ArrayList arrayList = new ArrayList();
            MarqueeRecycleAdapter marqueeRecycleAdapter = new MarqueeRecycleAdapter(this.f57798d, arrayList);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f57798d, 0, false);
            if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                linearLayoutManager.setReverseLayout(true);
            }
            this.f57811q.setLayoutManager(linearLayoutManager);
            this.f57811q.setAdapter(marqueeRecycleAdapter);
            this.f57811q.setOnTouchListener(new k());
            if (animFlag.f25308r == 1) {
                str = null;
            } else if (this.f57805k) {
                if (animFlag.f25309s) {
                    str = animFlag.f25307q.getArDressCarSourceV2();
                } else {
                    str = animFlag.f25307q.getArDressCarSource();
                }
            } else if (animFlag.f25309s) {
                str = animFlag.f25307q.getDressCarSourceV2();
            } else {
                str = animFlag.f25307q.getDressCarSource();
            }
            if (TextUtils.isEmpty(str)) {
                arrayList.add(new MarqueeData(animFlag.f25294d + " ", 1));
                arrayList.add(new MarqueeData(this.f57798d.getResources().getString(R.string.joined), 1));
                if (q7.a.e().j()) {
                    Collections.reverse(arrayList);
                }
                ((LevelView) this.f57806l.findViewById(R.id.live_join_user_level)).c(animFlag.f25305o, true);
                ImageView imageView = (ImageView) this.f57806l.findViewById(R.id.background);
                int i9 = (animFlag.f25305o / 10) - 2;
                if (i9 < 0) {
                    i9 = 0;
                }
                int[] iArr = f57794v;
                if (i9 > iArr.length - 1) {
                    i9 = iArr.length - 1;
                }
                Bitmap decodeResource = BitmapFactory.decodeResource(imageView.getResources(), iArr[i9]);
                if (q7.a.e().j()) {
                    decodeResource = BitmapUtils.mirror(decodeResource);
                }
                imageView.setImageBitmap(decodeResource);
                animFlag.f25309s = false;
                animFlag.f25310t = 1;
                C(animFlag, null);
                return;
            }
            arrayList.add(new MarqueeData(animFlag.f25294d, 0));
            arrayList.add(new MarqueeData(" ", 0));
            SVGAImageView sVGAImageView = (SVGAImageView) this.f57806l.findViewById(R.id.entrance_car);
            VipIndicatorView vipIndicatorView = (VipIndicatorView) this.f57806l.findViewById(R.id.vip_indicator_view);
            if (animFlag.f25307q.isVip()) {
                if (vipIndicatorView != null) {
                    vipIndicatorView.setVipLevel(animFlag.f25307q.getIsVip());
                    vipIndicatorView.setVisibility(0);
                }
            } else if (vipIndicatorView != null) {
                vipIndicatorView.setVisibility(8);
            }
            ImageView imageView2 = (ImageView) this.f57806l.findViewById(R.id.mvpIV);
            if (imageView2 != null) {
                if (!TextUtils.isEmpty(animFlag.f25312v)) {
                    imageView2.setVisibility(0);
                    com.bumptech.glide.c.v(imageView2).r(animFlag.f25312v).m().Q0(imageView2);
                } else {
                    imageView2.setVisibility(8);
                }
            }
            TextView textView = (TextView) this.f57806l.findViewById(R.id.tv_join);
            LinearLayout linearLayout = (LinearLayout) this.f57806l.findViewById(R.id.ll_join_user);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f57811q.getLayoutParams();
            if (v(animFlag.f25294d) >= 15) {
                layoutParams.width = DensityUtil.dp2px(120.0f);
            }
            if (!animFlag.f25309s) {
                linearLayout.setVisibility(0);
                textView.setVisibility(0);
                linearLayout.startAnimation(AnimationUtils.loadAnimation(this.f57798d, R.anim.join_live_amin));
                textView.startAnimation(AnimationUtils.loadAnimation(this.f57798d, R.anim.join_live_amin));
            }
            if (animFlag.f25309s) {
                C(animFlag, sVGAImageView);
                return;
            }
            B(sVGAImageView, animFlag);
            this.f57804j.postDelayed(new b(animFlag, sVGAImageView), 100L);
        }
    }

    private int v(String str) {
        int i9 = 0;
        for (int i10 = 0; i10 < str.length(); i10++) {
            i9 = str.charAt(i10) > 255 ? i9 + 2 : i9 + 1;
        }
        return i9;
    }

    private View w(boolean z10, boolean z11) {
        if (this.f57799e.size() != 0 && this.f57799e.get(0) != null) {
            return this.f57799e.remove(0);
        }
        this.f57796b.a(z10, z11);
        BaseApplication baseApplication = BaseApplication.getInstance();
        if (z10) {
            if (z11) {
                View inflate = LayoutInflater.from(baseApplication).inflate(R.layout.live_vip_user_join_show_tips, (ViewGroup) null);
                inflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                ((ViewGroup.MarginLayoutParams) ((LinearLayout) inflate.findViewById(R.id.ll_user)).getLayoutParams()).bottomMargin = (int) (baseApplication.getResources().getDisplayMetrics().heightPixels / 1.7d);
                return inflate;
            }
            return LayoutInflater.from(baseApplication).inflate(R.layout.live_vip_user_join_show_tips_old, (ViewGroup) null);
        }
        return LayoutInflater.from(baseApplication).inflate(R.layout.live_user_join_show_tips, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(ViewGroup viewGroup, boolean z10) {
        if (viewGroup.isAttachedToWindow() && viewGroup.getChildCount() != 0) {
            View childAt = viewGroup.getChildAt(0);
            AnimFlag animFlag = (AnimFlag) childAt.getTag(f57793u);
            boolean z11 = animFlag.f25309s;
            if (z11 && animFlag.f25310t == 0) {
                return;
            }
            if (animFlag.f25292b == null) {
                if (z11 && animFlag.f25308r != 1) {
                    animFlag.f25292b = AnimationUtils.loadAnimation(this.f57798d, R.anim.left_x_out_anim_v2);
                } else {
                    animFlag.f25292b = AnimationUtils.loadAnimation(this.f57798d, R.anim.left_x_out_anim);
                }
            }
            if (z10) {
                this.f57797c.removeView(childAt);
                return;
            }
            animFlag.f25292b.setDuration(500L);
            animFlag.f25292b.setAnimationListener(new f(animFlag, childAt));
            if (animFlag.f25293c == 0) {
                childAt.startAnimation(animFlag.f25292b);
            }
            this.f57802h = 0;
        }
    }

    public void A(String str, String str2, String str3, int i9, UserVipData userVipData, String str4) {
        String dressCarId;
        String vipDressCarUrlV2;
        this.f57808n = 0;
        if (userVipData == null) {
            userVipData = new UserVipData();
        }
        String str5 = "";
        if (this.f57805k) {
            if (TextUtils.isEmpty(userVipData.getDressCarId())) {
                dressCarId = "";
            } else {
                dressCarId = Language.ARABIC + userVipData.getDressCarId();
            }
            vipDressCarUrlV2 = TextUtils.isEmpty(userVipData.getArDressCarSourceV2()) ? "" : userVipData.getArDressCarSourceV2();
            if (TextUtils.isEmpty(vipDressCarUrlV2)) {
                this.f57809o = false;
                if (!TextUtils.isEmpty(userVipData.getArDressCarSource())) {
                    str5 = Language.ARABIC + userVipData.getArDressCarSource();
                }
                vipDressCarUrlV2 = str5;
            } else {
                this.f57809o = true;
            }
        } else {
            dressCarId = TextUtils.isEmpty(userVipData.getDressCarId()) ? "" : userVipData.getDressCarId();
            vipDressCarUrlV2 = TextUtils.isEmpty(userVipData.getVipDressCarUrlV2()) ? "" : userVipData.getVipDressCarUrlV2();
            if (TextUtils.isEmpty(vipDressCarUrlV2)) {
                this.f57809o = false;
                if (!TextUtils.isEmpty(userVipData.getVipDressCarUrl())) {
                    str5 = userVipData.getVipDressCarUrl();
                }
                vipDressCarUrlV2 = str5;
            } else {
                this.f57809o = true;
            }
        }
        if (!TextUtils.isEmpty(vipDressCarUrlV2) || i9 >= 20) {
            if (!TextUtils.isEmpty(vipDressCarUrlV2)) {
                if (this.f57809o) {
                    if (!TranslateUtils.getTranslateFile(FilePathProvider.getNXShowPath("Car"), dressCarId + "V2.svga")) {
                        if (com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.get(dressCarId) == null) {
                            com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.a(vipDressCarUrlV2, FilePathProvider.getNXShowPath("Car"), dressCarId, this.f57809o, new h(dressCarId));
                            com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.put(userVipData.getDressCarId(), vipDressCarUrlV2);
                            this.f57808n = 1;
                            if (i9 < 20) {
                                return;
                            }
                        } else {
                            this.f57808n = 1;
                            if (i9 < 20) {
                                return;
                            }
                        }
                    }
                } else {
                    if (!TranslateUtils.getTranslateFile(FilePathProvider.getNXShowPath("Car"), dressCarId + ".svga")) {
                        if (com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.get(dressCarId) == null) {
                            com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.a(vipDressCarUrlV2, FilePathProvider.getNXShowPath("Car"), dressCarId, this.f57809o, new i(dressCarId));
                            com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.c.f21554a.put(userVipData.getDressCarId(), vipDressCarUrlV2);
                            this.f57808n = 1;
                            if (i9 < 20) {
                                return;
                            }
                        } else {
                            this.f57808n = 1;
                            if (i9 < 20) {
                                return;
                            }
                        }
                    }
                }
            } else {
                this.f57808n = 1;
                if (i9 < 20) {
                    return;
                }
            }
            AnimFlag animFlag = new AnimFlag();
            animFlag.f25309s = this.f57809o;
            animFlag.f25299i = str3;
            animFlag.f25294d = str;
            animFlag.f25304n = str2;
            animFlag.f25305o = i9;
            animFlag.f25307q = userVipData;
            animFlag.f25312v = str4;
            animFlag.f25308r = this.f57808n;
            if (this.f57800f.size() > 0) {
                this.f57800f.add(animFlag);
                return;
            }
            this.f57800f.add(animFlag);
            u();
        }
    }

    public void s() {
        if (this.f57802h != 1 || this.f57800f.size() <= 0) {
            return;
        }
        y(this.f57797c, false);
        this.f57800f.clear();
    }

    public void x() {
        this.f57799e.clear();
        this.f57800f.clear();
        ViewGroup viewGroup = this.f57797c;
        if (viewGroup != null) {
            r(viewGroup);
        }
    }

    public void z(d9.b bVar) {
        this.f57796b = bVar;
    }
}
