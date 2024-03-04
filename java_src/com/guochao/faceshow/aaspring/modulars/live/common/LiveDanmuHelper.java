package com.guochao.faceshow.aaspring.modulars.live.common;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.text.BidiFormatter;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleObserver;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.danmu.DanmuView;
import com.guochao.faceshow.aaspring.danmu.c;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.utils.BitmapUtils;
import com.guochao.faceshow.aaspring.views.DrawableView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.utils.DensityUtil;
import com.waynejo.androidndkgif.GifDecoder;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class LiveDanmuHelper implements LifecycleObserver {
    protected final DanmuView mDanmuView;
    protected final Fragment mFragment;
    private Handler mHandler = new Handler();
    private HashMap<String, Bitmap> mHashMap = new HashMap<>();
    private HashMap<String, Bitmap> mMVPHashMap = new HashMap<>();
    boolean mLTR = !q7.a.e().j();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements v7.b {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.LiveDanmuHelper$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0176a extends s0.c<File> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.guochao.faceshow.aaspring.danmu.b f18690a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f18691b;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.LiveDanmuHelper$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public class C0177a implements vh.o<Integer, Integer> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ File f18693a;

                C0177a(File file) {
                    this.f18693a = file;
                }

                @Override // vh.o
                /* renamed from: a */
                public Integer apply(Integer num) throws Exception {
                    Bitmap decodeFile;
                    Bitmap d10;
                    if (!BitmapUtils.isGif(this.f18693a.getAbsolutePath()) && (decodeFile = BitmapFactory.decodeFile(this.f18693a.getAbsolutePath())) != null && (d10 = com.bumptech.glide.load.resource.bitmap.a0.d(ic.a.a(BaseApplication.getInstance()).f(), decodeFile, decodeFile.getWidth(), decodeFile.getHeight())) != null) {
                        Handler handler = LiveDanmuHelper.this.mHandler;
                        HashMap hashMap = LiveDanmuHelper.this.mHashMap;
                        C0176a c0176a = C0176a.this;
                        handler.post(new b(hashMap, c0176a.f18691b, d10, c0176a.f18690a, 1));
                        return 1;
                    }
                    GifDecoder gifDecoder = new GifDecoder();
                    gifDecoder.e(this.f18693a.getAbsolutePath());
                    if (C0176a.this.f18690a.h()) {
                        LiveDanmuHelper.this.release(gifDecoder);
                        return 1;
                    } else if (gifDecoder.c() <= 0) {
                        return 1;
                    } else {
                        com.guochao.faceshow.aaspring.views.e[] eVarArr = new com.guochao.faceshow.aaspring.views.e[gifDecoder.c()];
                        int[] iArr = new int[gifDecoder.c()];
                        for (int i9 = 0; i9 < gifDecoder.c(); i9++) {
                            eVarArr[i9] = new com.guochao.faceshow.aaspring.views.e(gifDecoder.b(i9), DensityUtil.dp2px(40.0f));
                            iArr[i9] = gifDecoder.a(i9);
                        }
                        LiveDanmuHelper.this.release(gifDecoder);
                        Handler handler2 = LiveDanmuHelper.this.mHandler;
                        C0176a c0176a2 = C0176a.this;
                        handler2.post(new c(LiveDanmuHelper.this, eVarArr, iArr, c0176a2.f18690a, 2));
                        return 1;
                    }
                }
            }

            C0176a(com.guochao.faceshow.aaspring.danmu.b bVar, String str) {
                this.f18690a = bVar;
                this.f18691b = str;
            }

            @Override // s0.k
            public void onLoadCleared(@Nullable Drawable drawable) {
            }

            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
                onResourceReady((File) obj, (t0.f<? super File>) fVar);
            }

            public void onResourceReady(@NonNull File file, @Nullable t0.f<? super File> fVar) {
                if (this.f18690a.h()) {
                    return;
                }
                io.reactivex.k.just(1).subscribeOn(di.a.b()).map(new C0177a(file)).subscribe();
            }
        }

        /* loaded from: classes3.dex */
        class b extends s0.c<Bitmap> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.guochao.faceshow.aaspring.danmu.b f18695a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ LiveMessageModel f18696b;

            b(com.guochao.faceshow.aaspring.danmu.b bVar, LiveMessageModel liveMessageModel) {
                this.f18695a = bVar;
                this.f18696b = liveMessageModel;
            }

            @Override // s0.k
            public void onLoadCleared(@Nullable Drawable drawable) {
            }

            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
                onResourceReady((Bitmap) obj, (t0.f<? super Bitmap>) fVar);
            }

            public void onResourceReady(@NonNull Bitmap bitmap, @Nullable t0.f<? super Bitmap> fVar) {
                if (this.f18695a.h()) {
                    return;
                }
                LiveDanmuHelper.this.mHashMap.put(this.f18696b.getData().getFromUserAvatar(), bitmap);
                this.f18695a.l(1, bitmap);
                this.f18695a.g();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c extends s0.c<File> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.guochao.faceshow.aaspring.danmu.b f18698a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f18699b;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.LiveDanmuHelper$a$c$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public class C0178a implements vh.o<Integer, Integer> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ File f18701a;

                C0178a(File file) {
                    this.f18701a = file;
                }

                @Override // vh.o
                /* renamed from: a */
                public Integer apply(Integer num) throws Exception {
                    Bitmap decodeFile;
                    Bitmap d10;
                    if (!BitmapUtils.isGif(this.f18701a.getAbsolutePath()) && (decodeFile = BitmapFactory.decodeFile(this.f18701a.getAbsolutePath())) != null && (d10 = com.bumptech.glide.load.resource.bitmap.a0.d(ic.a.a(BaseApplication.getInstance()).f(), decodeFile, decodeFile.getWidth(), decodeFile.getHeight())) != null) {
                        Handler handler = LiveDanmuHelper.this.mHandler;
                        HashMap hashMap = LiveDanmuHelper.this.mMVPHashMap;
                        c cVar = c.this;
                        handler.post(new b(hashMap, cVar.f18699b, d10, cVar.f18698a, 4));
                        return 1;
                    }
                    GifDecoder gifDecoder = new GifDecoder();
                    gifDecoder.e(this.f18701a.getAbsolutePath());
                    if (c.this.f18698a.h()) {
                        LiveDanmuHelper.this.release(gifDecoder);
                        return 1;
                    } else if (gifDecoder.c() <= 0) {
                        return 1;
                    } else {
                        com.guochao.faceshow.aaspring.views.e[] eVarArr = new com.guochao.faceshow.aaspring.views.e[gifDecoder.c()];
                        int[] iArr = new int[gifDecoder.c()];
                        for (int i9 = 0; i9 < gifDecoder.c(); i9++) {
                            eVarArr[i9] = new com.guochao.faceshow.aaspring.views.e(gifDecoder.b(i9), DensityUtil.dp2px(40.0f));
                            iArr[i9] = gifDecoder.a(i9);
                        }
                        LiveDanmuHelper.this.release(gifDecoder);
                        Handler handler2 = LiveDanmuHelper.this.mHandler;
                        c cVar2 = c.this;
                        handler2.post(new c(LiveDanmuHelper.this, eVarArr, iArr, cVar2.f18698a, 3));
                        return 1;
                    }
                }
            }

            c(com.guochao.faceshow.aaspring.danmu.b bVar, String str) {
                this.f18698a = bVar;
                this.f18699b = str;
            }

            @Override // s0.k
            public void onLoadCleared(@Nullable Drawable drawable) {
            }

            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
                onResourceReady((File) obj, (t0.f<? super File>) fVar);
            }

            public void onResourceReady(@NonNull File file, @Nullable t0.f<? super File> fVar) {
                if (this.f18698a.h()) {
                    return;
                }
                io.reactivex.k.just(1).subscribeOn(di.a.b()).map(new C0178a(file)).subscribe();
            }
        }

        /* loaded from: classes3.dex */
        class d extends s0.c<Bitmap> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.guochao.faceshow.aaspring.danmu.b f18703a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ LiveMessageModel f18704b;

            d(com.guochao.faceshow.aaspring.danmu.b bVar, LiveMessageModel liveMessageModel) {
                this.f18703a = bVar;
                this.f18704b = liveMessageModel;
            }

            @Override // s0.k
            public void onLoadCleared(@Nullable Drawable drawable) {
            }

            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
                onResourceReady((Bitmap) obj, (t0.f<? super Bitmap>) fVar);
            }

            public void onResourceReady(@NonNull Bitmap bitmap, @Nullable t0.f<? super Bitmap> fVar) {
                if (this.f18703a.h()) {
                    return;
                }
                LiveDanmuHelper.this.mMVPHashMap.put(this.f18704b.getData().getMvpUrl(), bitmap);
                this.f18703a.l(1, bitmap);
                this.f18703a.g();
            }
        }

        a() {
        }

        @Override // v7.b
        public void onBindView(View view, com.guochao.faceshow.aaspring.danmu.b bVar) {
            Fragment fragment = LiveDanmuHelper.this.mFragment;
            if (fragment == null || fragment.getActivity() == null) {
                return;
            }
            LiveMessageModel liveMessageModel = (LiveMessageModel) bVar.b();
            TextView textView = (TextView) view.findViewById(R.id.nickname);
            TextView textView2 = (TextView) view.findViewById(R.id.content);
            DrawableView drawableView = (DrawableView) view.findViewById(R.id.avatar);
            VipIndicatorView vipIndicatorView = (VipIndicatorView) view.findViewById(R.id.vip_indicator_view);
            DrawableView drawableView2 = (DrawableView) view.findViewById(R.id.mvp);
            View findViewById = view.findViewById(R.id.background);
            if (liveMessageModel.getData().mvpDanmu == BaseLiveMessage.MVP_DANMU_ON) {
                vipIndicatorView.setVisibility(8);
                drawableView2.setVisibility(0);
                textView.setTextColor(Color.parseColor("#FFC000"));
                textView2.setTextColor(Color.parseColor("#FFFFFF"));
                int e10 = bVar.e();
                if (e10 == 1) {
                    findViewById.setBackgroundResource(R.drawable.ic_danmu_mvp_1);
                } else if (e10 != 2) {
                    findViewById.setBackgroundResource(R.drawable.ic_danmu_mvp_3);
                } else {
                    findViewById.setBackgroundResource(R.drawable.ic_danmu_mvp_2);
                }
            } else {
                textView.setTextColor(view.getResources().getColor(R.color.live_vip_join));
                textView2.setTextColor(view.getResources().getColor(R.color.white));
                drawableView2.setVisibility(8);
                vipIndicatorView.setVipLevel(2);
                vipIndicatorView.setVisibility(0);
                findViewById.setBackground(null);
            }
            LiveDanmuHelper.this.setFormatStr(textView, liveMessageModel.getData().getFromUserNickName());
            LiveDanmuHelper.this.setFormatStr(textView2, liveMessageModel.getData().getContent());
            String fromUserAvatar = liveMessageModel.getData().getFromUserAvatar();
            Bitmap bitmap = (Bitmap) LiveDanmuHelper.this.mHashMap.get(fromUserAvatar);
            if (bitmap != null) {
                drawableView.setDrawable(new BitmapDrawable(LiveDanmuHelper.this.mFragment.getResources(), bitmap));
            } else {
                drawableView.setDrawable(LiveDanmuHelper.this.mFragment.getResources().getDrawable(R.mipmap.default_head));
                if (!TextUtils.isEmpty(fromUserAvatar)) {
                    if (fromUserAvatar.toLowerCase().endsWith(".gif")) {
                        com.guochao.faceshow.aaspring.views.e eVar = (com.guochao.faceshow.aaspring.views.e) bVar.f(2);
                        if (eVar != null) {
                            drawableView.setDrawable(eVar);
                            return;
                        }
                        ic.a.d(LiveDanmuHelper.this.mFragment.getActivity()).d().Z0(fromUserAvatar).M0(new C0176a(bVar, fromUserAvatar));
                    } else {
                        ic.a.d(LiveDanmuHelper.this.mFragment.getActivity()).b().q0(new com.bumptech.glide.load.resource.bitmap.l()).Z(DensityUtil.dp2px(40.0f)).Z0(fromUserAvatar).M0(new b(bVar, liveMessageModel));
                    }
                } else {
                    drawableView.setDrawable(LiveDanmuHelper.this.mFragment.getResources().getDrawable(R.mipmap.default_head));
                }
            }
            String mvpUrl = liveMessageModel.getData().getMvpUrl();
            Bitmap bitmap2 = (Bitmap) LiveDanmuHelper.this.mMVPHashMap.get(mvpUrl);
            if (bitmap2 != null) {
                drawableView2.setDrawable(new BitmapDrawable(LiveDanmuHelper.this.mFragment.getResources(), bitmap2));
            } else if (!TextUtils.isEmpty(mvpUrl)) {
                drawableView2.setVisibility(0);
                if (mvpUrl.toLowerCase().endsWith(".gif")) {
                    Drawable drawable = (Drawable) bVar.f(3);
                    if (drawable != null) {
                        drawableView2.setDrawable(drawable);
                        return;
                    } else {
                        ic.a.d(LiveDanmuHelper.this.mFragment.getActivity()).d().Z0(mvpUrl).M0(new c(bVar, fromUserAvatar));
                        return;
                    }
                }
                ic.a.d(LiveDanmuHelper.this.mFragment.getActivity()).b().m().a0(DensityUtil.dp2px(44.0f), DensityUtil.dp2px(18.0f)).Z0(mvpUrl).M0(new d(bVar, liveMessageModel));
            } else {
                drawableView2.setVisibility(8);
            }
        }

        @Override // v7.b
        public View onCreateView(int i9) {
            LiveDanmuHelper liveDanmuHelper = LiveDanmuHelper.this;
            if (liveDanmuHelper.mLTR) {
                return LayoutInflater.from(liveDanmuHelper.mFragment.getActivity()).inflate(R.layout.layout_live_danmu_item, (ViewGroup) null);
            }
            return LayoutInflater.from(liveDanmuHelper.mFragment.getActivity()).inflate(R.layout.layout_live_danmu_item_ar, (ViewGroup) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private HashMap<String, Bitmap> f18706a;

        /* renamed from: b  reason: collision with root package name */
        private String f18707b;

        /* renamed from: c  reason: collision with root package name */
        Bitmap f18708c;

        /* renamed from: d  reason: collision with root package name */
        com.guochao.faceshow.aaspring.danmu.b f18709d;

        /* renamed from: e  reason: collision with root package name */
        int f18710e;

        public b(HashMap<String, Bitmap> hashMap, String str, Bitmap bitmap, com.guochao.faceshow.aaspring.danmu.b bVar, int i9) {
            this.f18706a = hashMap;
            this.f18707b = str;
            this.f18708c = bitmap;
            this.f18709d = bVar;
            this.f18710e = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f18706a.put(this.f18707b, this.f18708c);
            if (this.f18709d.h()) {
                this.f18708c.recycle();
                return;
            }
            this.f18709d.l(this.f18710e, this.f18708c);
            this.f18709d.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<LiveDanmuHelper> f18711a;

        /* renamed from: b  reason: collision with root package name */
        private final com.guochao.faceshow.aaspring.views.e[] f18712b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f18713c;

        /* renamed from: d  reason: collision with root package name */
        com.guochao.faceshow.aaspring.danmu.b f18714d;

        /* renamed from: e  reason: collision with root package name */
        int f18715e = 0;

        /* renamed from: f  reason: collision with root package name */
        int f18716f;

        /* renamed from: g  reason: collision with root package name */
        int f18717g;

        public c(LiveDanmuHelper liveDanmuHelper, com.guochao.faceshow.aaspring.views.e[] eVarArr, int[] iArr, com.guochao.faceshow.aaspring.danmu.b bVar, int i9) {
            this.f18711a = new WeakReference<>(liveDanmuHelper);
            this.f18712b = eVarArr;
            this.f18713c = iArr;
            this.f18714d = bVar;
            this.f18716f = eVarArr.length;
            this.f18717g = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveDanmuHelper liveDanmuHelper = this.f18711a.get();
            if (liveDanmuHelper == null) {
                return;
            }
            if (this.f18714d.h()) {
                liveDanmuHelper.mHandler.removeCallbacks(this);
                return;
            }
            this.f18714d.l(this.f18717g, this.f18712b[this.f18715e]);
            this.f18714d.g();
            liveDanmuHelper.mHandler.postDelayed(this, this.f18713c[this.f18715e]);
            int i9 = this.f18715e + 1;
            this.f18715e = i9;
            if (i9 >= this.f18716f) {
                this.f18715e = 0;
            }
        }
    }

    public LiveDanmuHelper(Fragment fragment, DanmuView danmuView) {
        this.mFragment = fragment;
        this.mDanmuView = danmuView;
        init();
    }

    private CharSequence getPlaceHolder() {
        SpannableString spannableString = new SpannableString("我");
        spannableString.setSpan(new ForegroundColorSpan(0), 0, 1, 33);
        spannableString.setSpan(new AbsoluteSizeSpan(1), 0, 1, 33);
        return spannableString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release(GifDecoder gifDecoder) {
        for (int i9 = 0; i9 < gifDecoder.c(); i9++) {
            gifDecoder.b(i9).recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFormatStr(TextView textView, CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            charSequence = "";
        }
        if (BidiFormatter.getInstance().isRtl(charSequence)) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append(getPlaceHolder());
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append(getPlaceHolder());
            textView.setText(spannableStringBuilder);
            return;
        }
        textView.setText(charSequence);
    }

    public void addDamus(LiveMessageModel<?> liveMessageModel) {
        com.guochao.faceshow.aaspring.danmu.b bVar = new com.guochao.faceshow.aaspring.danmu.b(liveMessageModel);
        bVar.i(this.mLTR ? 1 : 0);
        this.mDanmuView.d(bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void init() {
        this.mLTR = !q7.a.e().j();
        this.mDanmuView.setDanmuProvider(onCreateDanmuProvider());
    }

    public v7.b onCreateDanmuProvider() {
        return new a();
    }

    public void pause() {
        this.mDanmuView.h();
    }

    public void resume() {
        this.mDanmuView.j();
    }

    public void setOnDanmuClickListener(c.a aVar) {
        this.mDanmuView.setOnDanmuClickListener(aVar);
    }

    public void stop() {
        this.mDanmuView.i();
    }
}
