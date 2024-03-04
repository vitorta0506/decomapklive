package com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity;

import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import c8.b;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveMusicActivityView;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.promotion.data.PromotionData;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.Md5;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class LiveMusicActivityView implements b.c {

    /* renamed from: a  reason: collision with root package name */
    private View f20154a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f20155b;
    @BindView
    View bgFloatView;

    /* renamed from: c  reason: collision with root package name */
    private List<PromotionData.ActivityGiftEntity> f20156c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private PromotionData.ResultItem f20157d;

    /* renamed from: e  reason: collision with root package name */
    private long f20158e;

    /* renamed from: f  reason: collision with root package name */
    private f f20159f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f20160g;
    @BindView
    RecyclerView indicatorLay;
    @BindView
    ImageView ivExpand;
    @BindView
    CardView topImageLay;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (LiveMusicActivityView.this.f20155b) {
                view.findViewById(R.id.expand_lay).callOnClick();
            } else if (!TextUtils.isEmpty(LiveMusicActivityView.this.f20157d.webPageUrl)) {
                for (PromotionData.ResultItem resultItem : c8.b.k().j().result.getFullScreenLive()) {
                    if (resultItem.f26120id == LiveMusicActivityView.this.f20157d.f26120id) {
                        LiveMusicActivityView.this.o(view, resultItem);
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.Adapter {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(View view) {
            LiveMusicActivityView.this.f20154a.callOnClick();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return LiveMusicActivityView.this.f20156c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            ImageView imageView = (ImageView) viewHolder.itemView.findViewById(R.id.indicator_icon);
            TextView textView = (TextView) viewHolder.itemView.findViewById(R.id.indicator_text);
            LiveMusicActivityView liveMusicActivityView = LiveMusicActivityView.this;
            textView.setBackground(liveMusicActivityView.j(liveMusicActivityView.f20157d));
            PromotionData.ActivityGiftEntity activityGiftEntity = (PromotionData.ActivityGiftEntity) LiveMusicActivityView.this.f20156c.get(i9);
            LiveMusicActivityView.this.y(textView, activityGiftEntity.getSendCount(), activityGiftEntity.getGiftCount());
            if (activityGiftEntity.getSendCount() <= 0) {
                hc.a.j(imageView, TextUtils.isEmpty(activityGiftEntity.getGiftDarkImg()) ? activityGiftEntity.getGiftUrl() : activityGiftEntity.getGiftDarkImg());
                ColorMatrix colorMatrix = new ColorMatrix();
                colorMatrix.setSaturation(0.0f);
                imageView.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
                return;
            }
            hc.a.j(imageView, TextUtils.isEmpty(activityGiftEntity.getGiftLightImg()) ? activityGiftEntity.getGiftUrl() : activityGiftEntity.getGiftLightImg());
            imageView.clearColorFilter();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            BaseViewHolder baseViewHolder = new BaseViewHolder(viewGroup.getContext(), R.layout.item_music_indicator, viewGroup);
            baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LiveMusicActivityView.b.this.b(view);
                }
            });
            return baseViewHolder;
        }
    }

    /* loaded from: classes3.dex */
    class c extends com.guochao.faceshow.aaspring.base.http.callback.c<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f20163a;

        c(e eVar) {
            this.f20163a = eVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<File> aVar) {
            e eVar = this.f20163a;
            if (eVar != null) {
                eVar.a(null);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
            if (file != null && file.exists()) {
                LiveMusicActivityView.p(file, this.f20163a);
            } else {
                onFailure(new g7.a<>(new Exception(""), -1));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements SVGAParser.ParseCompletion {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f20164a;

        d(e eVar) {
            this.f20164a = eVar;
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            e eVar = this.f20164a;
            if (eVar != null) {
                eVar.a(sVGAVideoEntity);
            }
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
            e eVar = this.f20164a;
            if (eVar != null) {
                eVar.a(null);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void a(SVGAVideoEntity sVGAVideoEntity);
    }

    /* loaded from: classes3.dex */
    public interface f {
        void a(int i9);
    }

    public LiveMusicActivityView(View view) {
        this.f20154a = view;
        ButterKnife.c(this, view);
        this.f20154a.setOnClickListener(new a());
        l();
        c8.b.k().registerChangeListener(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003c A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.CharSequence h(boolean r3, int r4) {
        /*
            c8.b r0 = c8.b.k()
            boolean r0 = r0.m()
            if (r0 == 0) goto L39
            c8.b r0 = c8.b.k()
            com.guochao.faceshow.promotion.data.PromotionData r0 = r0.j()
            com.guochao.faceshow.promotion.data.PromotionData$PromotionResult r0 = r0.result
            java.util.List r0 = r0.getFullScreenLive()
            java.util.Iterator r0 = r0.iterator()
        L1c:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L39
            java.lang.Object r1 = r0.next()
            com.guochao.faceshow.promotion.data.PromotionData$ResultItem r1 = (com.guochao.faceshow.promotion.data.PromotionData.ResultItem) r1
            java.util.List<com.guochao.faceshow.promotion.data.PromotionData$ActivityGiftEntity> r2 = r1.appActivityGiftEntityList
            if (r2 != 0) goto L2d
            goto L1c
        L2d:
            int r2 = r1.f26120id
            if (r2 != r4) goto L1c
            if (r3 == 0) goto L36
            java.lang.String r3 = r1.liveMultilLang
            goto L3a
        L36:
            java.lang.String r3 = r1.normalMutilLang
            goto L3a
        L39:
            r3 = 0
        L3a:
            if (r3 != 0) goto L3e
            java.lang.String r3 = ""
        L3e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveMusicActivityView.h(boolean, int):java.lang.CharSequence");
    }

    private void l() {
        this.indicatorLay.setLayoutManager(new LinearLayoutManager(this.f20154a.getContext()));
        this.indicatorLay.setAdapter(new b());
    }

    private static boolean m(File file, String str) {
        String md5ByFile;
        return file != null && file.exists() && (md5ByFile = Md5.getMd5ByFile(file)) != null && md5ByFile.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void o(android.view.View r13, com.guochao.faceshow.promotion.data.PromotionData.ResultItem r14) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveMusicActivityView.o(android.view.View, com.guochao.faceshow.promotion.data.PromotionData$ResultItem):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p(@NotNull File file, e eVar) {
        try {
            SvgaImageViewUtils.getParser().decodeFromInputStream(new FileInputStream(file), file.getAbsolutePath(), new d(eVar), true);
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            if (eVar != null) {
                eVar.a(null);
            }
        }
    }

    public static void q(e eVar, int i9) {
        if (!c8.b.k().m()) {
            if (eVar != null) {
                eVar.a(null);
                return;
            }
            return;
        }
        String str = c8.b.k().j().result.getFullScreenLive().get(0).screenEffectUrl;
        String str2 = c8.b.k().j().result.getFullScreenLive().get(0).screenEffectMd5;
        Iterator<PromotionData.ResultItem> it = c8.b.k().j().result.getFullScreenLive().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            PromotionData.ResultItem next = it.next();
            if (next.appActivityGiftEntityList != null && i9 == next.f26120id) {
                str = next.screenEffectUrl;
                str2 = next.screenEffectMd5;
                break;
            }
        }
        String nXShowPath = FilePathProvider.getNXShowPath("FullActivityEvent");
        File file = new File(nXShowPath, "FullActivityEvent.svga");
        if (!m(file, str2)) {
            boolean delete = file.delete();
            LogUtils.i("zune：", "delete = " + delete);
            FaceCastHttpClientImpl h10 = FaceCastHttpClientImpl.h(BaseApplication.getInstance());
            h10.a(null, str, nXShowPath + FileUtils.RES_PREFIX_STORAGE + "FullActivityEvent.svga", new c(eVar));
            return;
        }
        p(file, eVar);
    }

    private void t(String str, ImageView.ScaleType scaleType) {
        this.topImageLay.removeAllViews();
        ImageView imageView = new ImageView(this.f20154a.getContext());
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        imageView.setScaleType(scaleType);
        com.bumptech.glide.c.u(BaseApplication.getInstance()).r(str).Q0(imageView);
        this.topImageLay.addView(imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(TextView textView, int i9, int i10) {
        String format = String.format("%s/%s", Integer.valueOf(Math.min(i9, i10)), Integer.valueOf(i10));
        int indexOf = format.indexOf(FileUtils.RES_PREFIX_STORAGE);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(format);
        PromotionData.ResultItem resultItem = this.f20157d;
        if (resultItem != null && !TextUtils.isEmpty(resultItem.getVariableNumberColor())) {
            try {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor(this.f20157d.getVariableNumberColor())), 0, indexOf, 33);
            } catch (Exception e10) {
                e10.printStackTrace();
                spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#ffe400")), 0, indexOf, 33);
            }
        }
        PromotionData.ResultItem resultItem2 = this.f20157d;
        if (resultItem2 != null && !TextUtils.isEmpty(resultItem2.getGiftNumberColor())) {
            try {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor(this.f20157d.getGiftNumberColor())), indexOf, format.length(), 33);
            } catch (Exception e11) {
                e11.printStackTrace();
                spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#ffffff")), indexOf, format.length(), 33);
            }
        }
        textView.setText(spannableStringBuilder);
    }

    public GradientDrawable i(PromotionData.ResultItem resultItem) {
        int dp2px = DensityUtil.dp2px(4.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        if (resultItem != null) {
            try {
                gradientDrawable.setColor(Color.parseColor(resultItem.getActiveBackgroundColor()));
            } catch (Exception e10) {
                e10.printStackTrace();
                gradientDrawable.setColor(Color.parseColor("#10471F"));
            }
        }
        gradientDrawable.setCornerRadius(dp2px);
        if (resultItem != null) {
            try {
                gradientDrawable.setStroke(DensityUtil.dp2px(0.5f), Color.parseColor(resultItem.getBorderColor()));
            } catch (Exception e11) {
                e11.printStackTrace();
                gradientDrawable.setStroke(DensityUtil.dp2px(0.5f), Color.parseColor("#FFFF00"));
            }
        }
        return gradientDrawable;
    }

    public GradientDrawable j(PromotionData.ResultItem resultItem) {
        int dp2px = DensityUtil.dp2px(6.5f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        if (resultItem != null) {
            try {
                gradientDrawable.setColor(Color.parseColor(resultItem.getNumberBannerColor()));
            } catch (Exception e10) {
                e10.printStackTrace();
                gradientDrawable.setColor(Color.parseColor("#052b05"));
            }
        }
        gradientDrawable.setCornerRadius(dp2px);
        return gradientDrawable;
    }

    public View k() {
        return this.f20154a;
    }

    public boolean n() {
        return this.f20160g;
    }

    @OnClick
    public void onViewClicked(View view) {
        if (view.getId() != R.id.expand_lay) {
            return;
        }
        boolean z10 = !this.f20155b;
        this.f20155b = z10;
        if (z10) {
            this.indicatorLay.setVisibility(8);
            this.topImageLay.getLayoutParams().height = DensityUtil.dp2px(30.0f);
            this.bgFloatView.getLayoutParams().height = DensityUtil.dp2px(31.0f);
            hc.a.j(this.ivExpand, this.f20157d.getRightFoldUpImg());
            PromotionData.ResultItem resultItem = this.f20157d;
            if (resultItem != null) {
                t(resultItem.getActivitiesCoverSmall(), ImageView.ScaleType.CENTER_CROP);
                return;
            }
            return;
        }
        this.indicatorLay.setVisibility(0);
        this.topImageLay.getLayoutParams().height = DensityUtil.dp2px(42.0f);
        this.bgFloatView.getLayoutParams().height = -2;
        hc.a.j(this.ivExpand, this.f20157d.getRightCornerImg());
        PromotionData.ResultItem resultItem2 = this.f20157d;
        if (resultItem2 != null) {
            t(resultItem2.getActivitiesCoverBig(), ImageView.ScaleType.FIT_CENTER);
        }
    }

    public void r(BaseLiveMessage baseLiveMessage) {
        if (c8.b.k().m()) {
            long serverTime = baseLiveMessage.getServerTime();
            if (this.f20158e > serverTime) {
                return;
            }
            this.f20158e = serverTime;
            for (PromotionData.ResultItem resultItem : c8.b.k().j().result.getFullScreenLive()) {
                List<PromotionData.ActivityGiftEntity> list = resultItem.appActivityGiftEntityList;
                if (list == null) {
                    list = new ArrayList();
                }
                boolean z10 = false;
                for (PromotionData.ActivityGiftEntity activityGiftEntity : list) {
                    if (String.valueOf(activityGiftEntity.getGiftId()).equals(baseLiveMessage.getGiftId())) {
                        try {
                            activityGiftEntity.setSendCount(activityGiftEntity.getSendCount() + (TextUtils.isEmpty(baseLiveMessage.getGiftNum()) ? 0 : Integer.parseInt(baseLiveMessage.getGiftNum())));
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        z10 = true;
                    }
                }
                if (z10) {
                    u();
                    return;
                }
            }
        }
    }

    public void s(int i9, boolean z10) {
        if (c8.b.k().m()) {
            for (PromotionData.ResultItem resultItem : c8.b.k().j().result.getFullScreenLive()) {
                if (resultItem.f26120id == i9) {
                    List<PromotionData.ActivityGiftEntity> list = resultItem.appActivityGiftEntityList;
                    if (list == null) {
                        list = new ArrayList();
                    }
                    for (PromotionData.ActivityGiftEntity activityGiftEntity : list) {
                        activityGiftEntity.setSendCount(0);
                    }
                    if (z10) {
                        u();
                        return;
                    }
                }
            }
        }
    }

    public void setOnPlayMusicAnimListener(f fVar) {
        this.f20159f = fVar;
    }

    public void u() {
        boolean z10 = this.f20157d == null;
        PromotionData.ResultItem resultItem = c8.b.k().j().result.getFullScreenLive().get(0);
        this.f20157d = resultItem;
        if (resultItem.appActivityGiftEntityList == null) {
            resultItem.appActivityGiftEntityList = new ArrayList();
        }
        this.f20156c.clear();
        this.f20156c.addAll(this.f20157d.appActivityGiftEntityList);
        if (this.indicatorLay.getAdapter() != null) {
            this.indicatorLay.getAdapter().notifyDataSetChanged();
        }
        this.bgFloatView.setBackground(i(this.f20157d));
        if (z10) {
            t(this.f20157d.getActivitiesCoverBig(), ImageView.ScaleType.FIT_CENTER);
            hc.a.j(this.ivExpand, this.f20157d.getRightCornerImg());
        }
    }

    public void v(long j10) {
        if (this.f20158e > j10) {
            return;
        }
        u();
        this.f20158e = j10;
    }

    @Override // c8.b.c
    public void w() {
        if (!c8.b.k().m()) {
            x(false, this.f20160g);
            return;
        }
        x(true, this.f20160g);
        u();
    }

    public void x(boolean z10, boolean z11) {
        this.f20160g = z11;
        View view = this.f20154a;
        if (view == null) {
            return;
        }
        if (z10) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    public void z(int i9) {
        f fVar = this.f20159f;
        if (fVar != null) {
            fVar.a(i9);
        }
    }
}
