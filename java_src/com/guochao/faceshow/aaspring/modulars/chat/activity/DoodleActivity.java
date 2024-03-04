package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.ColorItemBean;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.DoodleEditFragment;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightProvider;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MediaFileFinder;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.RangeSeekBar;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
import com.guochao.faceshow.aaspring.views.VerticalRangeSeekBar;
import com.guochao.faceshow.aaspring.views.doodle.DoodleColor;
import com.guochao.faceshow.aaspring.views.doodle.DoodleParams;
import com.guochao.faceshow.aaspring.views.doodle.DoodlePen;
import com.guochao.faceshow.aaspring.views.doodle.DoodleShape;
import com.guochao.faceshow.aaspring.views.doodle.DoodleView;
import com.guochao.faceshow.aaspring.views.doodle.c;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.DensityUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class DoodleActivity extends BaseActivity implements KeyboardHeightObserver {

    /* renamed from: a  reason: collision with root package name */
    private n f16771a;

    /* renamed from: b  reason: collision with root package name */
    private DoodleView f16772b;

    /* renamed from: c  reason: collision with root package name */
    private la.a f16773c;
    @BindView
    TextView complete;

    /* renamed from: d  reason: collision with root package name */
    private DoodleParams f16774d;
    @BindView
    FrameLayout doodleEditText;

    /* renamed from: e  reason: collision with root package name */
    private String f16775e;

    /* renamed from: f  reason: collision with root package name */
    private Uri f16776f;
    @BindView
    FrameLayout flSeek;
    @BindView
    TitleBackgroundView floatTitleBack;

    /* renamed from: g  reason: collision with root package name */
    private List<ColorItemBean> f16777g;

    /* renamed from: h  reason: collision with root package name */
    private com.guochao.faceshow.aaspring.views.doodle.c f16778h;
    @BindView
    ImageView ivCompile;
    @BindView
    ImageView ivCut;
    @BindView
    ImageView ivPainSize;
    @BindView
    ImageView ivRecall;
    @BindView
    ImageView ivText;
    @BindView
    ImageView ivTextRecall;

    /* renamed from: j  reason: collision with root package name */
    private int f16780j;

    /* renamed from: l  reason: collision with root package name */
    private Runnable f16782l;
    @BindView
    RelativeLayout llMulti;

    /* renamed from: m  reason: collision with root package name */
    private Runnable f16783m;
    @BindView
    FrameLayout mFrameLayout;
    @BindView
    FrameLayout mSettingsPanel;

    /* renamed from: n  reason: collision with root package name */
    private boolean f16784n;

    /* renamed from: p  reason: collision with root package name */
    private AlphaAnimation f16786p;

    /* renamed from: q  reason: collision with root package name */
    private AlphaAnimation f16787q;
    @BindView
    RecyclerView recyclerView;

    /* renamed from: s  reason: collision with root package name */
    KeyboardHeightProvider f16789s;
    @BindView
    VerticalRangeSeekBar seekBar;

    /* renamed from: t  reason: collision with root package name */
    private float f16790t;

    /* renamed from: u  reason: collision with root package name */
    private la.e f16791u;

    /* renamed from: v  reason: collision with root package name */
    private DoodleEditFragment f16792v;
    @BindView
    View viewLine;

    /* renamed from: w  reason: collision with root package name */
    private la.b f16793w;

    /* renamed from: x  reason: collision with root package name */
    private float f16794x;

    /* renamed from: y  reason: collision with root package name */
    private float f16795y;

    /* renamed from: i  reason: collision with root package name */
    private Map<la.e, Float> f16779i = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    private int f16781k = 10;

    /* renamed from: o  reason: collision with root package name */
    private boolean f16785o = true;

    /* renamed from: r  reason: collision with root package name */
    private int[] f16788r = {Color.parseColor("#FFFFFF"), Color.parseColor("#DF382C"), Color.parseColor("#000000"), Color.parseColor("#F19A36"), Color.parseColor("#83D753"), Color.parseColor("#3378F6"), Color.parseColor("#883C9B"), Color.parseColor("#A25617"), Color.parseColor("#EE858D")};

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DoodleActivity doodleActivity = DoodleActivity.this;
            doodleActivity.W0(doodleActivity.mSettingsPanel);
            DoodleActivity doodleActivity2 = DoodleActivity.this;
            doodleActivity2.W0(doodleActivity2.floatTitleBack);
            DoodleActivity.this.f16785o = false;
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DoodleActivity doodleActivity = DoodleActivity.this;
            doodleActivity.b1(doodleActivity.mSettingsPanel);
            DoodleActivity doodleActivity2 = DoodleActivity.this;
            doodleActivity2.b1(doodleActivity2.floatTitleBack);
            DoodleActivity.this.f16785o = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f16798a;

        c(boolean z10) {
            this.f16798a = z10;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return this.f16798a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f16800a;

        d(boolean z10) {
            this.f16800a = z10;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return this.f16800a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends s0.i<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.views.doodle.h f16802a;

        e(com.guochao.faceshow.aaspring.views.doodle.h hVar) {
            this.f16802a = hVar;
        }

        @Override // s0.a, s0.k
        public void onLoadFailed(@Nullable Drawable drawable) {
            DoodleActivity.this.getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.bottom_to_top, R.anim.top_to_bottom).replace(R.id.doodle_edit_text, DoodleActivity.this.f16792v).commitNowAllowingStateLoss();
            DoodleActivity.this.f16792v.V1(drawable);
            if (this.f16802a != null) {
                DoodleActivity.this.f16792v.W1(this.f16802a);
            }
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
        }

        public void onResourceReady(@NonNull Drawable drawable, @Nullable t0.f<? super Drawable> fVar) {
            DoodleActivity.this.getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.bottom_to_top, R.anim.top_to_bottom).replace(R.id.doodle_edit_text, DoodleActivity.this.f16792v).commitNowAllowingStateLoss();
            DoodleActivity.this.f16792v.V1(drawable);
            if (this.f16802a != null) {
                DoodleActivity.this.f16792v.W1(this.f16802a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements DoodleEditFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.views.doodle.h f16804a;

        f(com.guochao.faceshow.aaspring.views.doodle.h hVar) {
            this.f16804a = hVar;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.DoodleEditFragment.b
        public void a(com.guochao.faceshow.aaspring.views.doodle.h hVar, String str, int i9, int i10) {
            DoodleActivity.this.f16772b.setEditMode(true);
            com.guochao.faceshow.aaspring.views.doodle.h hVar2 = this.f16804a;
            if (hVar2 != null && !hVar2.P().equals(str)) {
                com.guochao.faceshow.aaspring.views.doodle.k kVar = new com.guochao.faceshow.aaspring.views.doodle.k();
                Rect rect = new Rect();
                rect.set(this.f16804a.getBounds());
                kVar.i(this.f16804a.f());
                kVar.j(hVar.P());
                kVar.h(this.f16804a.m());
                kVar.g(rect);
                PointF pointF = new PointF();
                pointF.set(this.f16804a.r());
                kVar.f(pointF);
                this.f16804a.V(kVar);
                this.f16804a.U(false);
            }
            DoodleActivity.this.hideSoftKeyboard();
            DoodleActivity.this.getSupportFragmentManager().beginTransaction().hide(DoodleActivity.this.f16792v).commitAllowingStateLoss();
            DoodleActivity.this.Z0(false);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (hVar == null) {
                com.guochao.faceshow.aaspring.views.doodle.h hVar3 = new com.guochao.faceshow.aaspring.views.doodle.h(DoodleActivity.this.f16773c, str, DoodleActivity.this.f16790t * 3.0f, new DoodleColor(i9), i10, DoodleActivity.this.f16773c.getBitmap().getWidth() / 2, DoodleActivity.this.f16773c.getBitmap().getHeight() / 2);
                DoodleActivity.this.f16773c.d(hVar3);
                DoodleActivity.this.f16778h.p(hVar3);
            } else {
                hVar.W(str);
                hVar.setColor(new DoodleColor(i9));
                hVar.S(i10);
                hVar.w();
            }
            DoodleActivity.this.f16773c.c();
            if (DoodleActivity.this.f16772b.getItemCount() > 0) {
                DoodleActivity.this.ivTextRecall.setImageResource(R.drawable.bitmap_im_recall_text);
            } else {
                DoodleActivity.this.ivTextRecall.setImageResource(R.drawable.bitmap_im_recall_gray_text);
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.DoodleEditFragment.b
        public void hide() {
            DoodleActivity.this.f16772b.setEditMode(true);
            DoodleActivity.this.getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.bottom_to_top, R.anim.top_to_bottom).hide(DoodleActivity.this.f16792v).commitAllowingStateLoss();
            DoodleActivity.this.Z0(false);
            DoodleActivity.this.hideSoftKeyboard();
            if (DoodleActivity.this.f16772b.getItemCount() > 0) {
                DoodleActivity.this.ivTextRecall.setImageResource(R.drawable.bitmap_im_recall_text);
            } else {
                DoodleActivity.this.ivTextRecall.setImageResource(R.drawable.bitmap_im_recall_gray_text);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DoodleActivity.this.isDestroyed() || DoodleActivity.this.isFinishing()) {
                return;
            }
            DoodleActivity.this.f16789s.start();
        }
    }

    /* loaded from: classes3.dex */
    class h extends v.d {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            DoodleActivity.this.f16773c.b(true);
        }
    }

    /* loaded from: classes3.dex */
    class i implements com.guochao.faceshow.aaspring.views.doodle.j {
        i() {
        }

        private void d(Runnable runnable, Bitmap bitmap, Boolean bool) {
            File file;
            FileOutputStream fileOutputStream = null;
            DoodleActivity.this.showProgressDialog(null);
            long currentTimeMillis = System.currentTimeMillis();
            String str = currentTimeMillis + "." + (!TextUtils.isEmpty(DoodleActivity.this.f16775e) ? DoodleActivity.this.f16775e.substring(DoodleActivity.this.f16775e.lastIndexOf(".") + 1) : "jpg");
            String str2 = DoodleActivity.this.f16774d.mSavePath;
            if (!bool.booleanValue()) {
                str2 = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + str;
            }
            if (TextUtils.isEmpty(str2)) {
                file = new File(Environment.getExternalStorageDirectory(), "DCIM");
            } else {
                file = new File(str2);
            }
            File file2 = new File(file, str);
            if (!file.exists()) {
                file.mkdirs();
            }
            try {
                try {
                    DoodleActivity.this.dismissProgressDialog();
                    if (bool.booleanValue()) {
                        com.guochao.faceshow.aaspring.utils.FileUtils.saveImageToGallery(BaseApplication.getInstance(), bitmap, "DCIM");
                        ToastUtils.showToast(DoodleActivity.this.getActivity(), DoodleActivity.this.getString(R.string.saved_system_album));
                    } else {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                        try {
                            bitmap.compress(Bitmap.CompressFormat.JPEG, 95, fileOutputStream2);
                            Intent intent = new Intent();
                            intent.putExtra("key_image_path", file2.getAbsolutePath());
                            if (file2.length() < MediaFileFinder.IMAGE_SIZE) {
                                intent.putExtra("key_image_selectable", true);
                            } else {
                                intent.putExtra("key_image_selectable", false);
                            }
                            intent.putExtra("key_image_duration", currentTimeMillis);
                            DoodleActivity.this.setResult(-1, intent);
                            DoodleActivity.this.finish();
                            fileOutputStream = fileOutputStream2;
                        } catch (Exception e10) {
                            e = e10;
                            fileOutputStream = fileOutputStream2;
                            e.printStackTrace();
                            DoodleActivity.this.dismissProgressDialog();
                            if (bool.booleanValue()) {
                                ToastUtils.showToast(DoodleActivity.this.getActivity(), DoodleActivity.this.getString(R.string.saved_error));
                            } else {
                                c(-2, e.getMessage());
                            }
                            ma.c.a(fileOutputStream);
                            runnable.run();
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            ma.c.a(fileOutputStream);
                            runnable.run();
                            throw th;
                        }
                    }
                } catch (Exception e11) {
                    e = e11;
                }
                ma.c.a(fileOutputStream);
                runnable.run();
            } catch (Throwable th3) {
                th = th3;
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.j
        public void a(la.a aVar) {
            DoodleActivity doodleActivity = DoodleActivity.this;
            doodleActivity.f16790t = doodleActivity.f16774d.mPaintUnitSize * DoodleActivity.this.f16773c.getUnitSize();
            if (DoodleActivity.this.f16790t <= 0.0f) {
                DoodleActivity doodleActivity2 = DoodleActivity.this;
                doodleActivity2.f16790t = doodleActivity2.f16773c.getSize();
            }
            DoodleActivity.this.f16773c.setSize(DoodleActivity.this.f16790t);
            DoodleActivity doodleActivity3 = DoodleActivity.this;
            doodleActivity3.seekBar.r(doodleActivity3.f16790t - (DoodleActivity.this.f16790t / 2.0f), DoodleActivity.this.f16790t + (DoodleActivity.this.f16790t / 2.0f));
            DoodleActivity doodleActivity4 = DoodleActivity.this;
            doodleActivity4.seekBar.setProgress(doodleActivity4.f16790t);
            la.a aVar2 = DoodleActivity.this.f16773c;
            DoodlePen doodlePen = DoodlePen.BRUSH;
            aVar2.setPen(doodlePen);
            DoodleActivity.this.f16773c.setShape(DoodleShape.HAND_WRITE);
            DoodleActivity.this.f16773c.setColor(new DoodleColor(DoodleActivity.this.f16774d.mPaintColor));
            DoodleActivity.this.f16773c.setZoomerScale(DoodleActivity.this.f16774d.mZoomerScale);
            DoodleActivity.this.f16778h.s(DoodleActivity.this.f16774d.mSupportScaleItem);
            DoodleActivity.this.f16779i.put(doodlePen, Float.valueOf(DoodleActivity.this.f16773c.getSize()));
            DoodleActivity.this.f16779i.put(DoodlePen.MOSAIC, Float.valueOf(DoodleActivity.this.f16773c.getUnitSize() * 20.0f));
            DoodleActivity.this.f16779i.put(DoodlePen.COPY, Float.valueOf(DoodleActivity.this.f16773c.getUnitSize() * 20.0f));
            DoodleActivity.this.f16779i.put(DoodlePen.ERASER, Float.valueOf(DoodleActivity.this.f16773c.getSize()));
            DoodleActivity.this.f16779i.put(DoodlePen.TEXT, Float.valueOf(DoodleActivity.this.f16773c.getUnitSize() * 18.0f));
            DoodleActivity.this.f16779i.put(DoodlePen.BITMAP, Float.valueOf(DoodleActivity.this.f16773c.getUnitSize() * 80.0f));
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.j
        public void b(Boolean bool, la.a aVar, Bitmap bitmap, Runnable runnable) {
            if (bool.booleanValue()) {
                d(runnable, bitmap, bool);
            } else if (DoodleActivity.this.f16773c.getItemCount() == 0) {
                DoodleActivity.this.finish();
            } else {
                d(runnable, bitmap, bool);
            }
        }

        public void c(int i9, String str) {
            DoodleActivity.this.dismissProgressDialog();
            DoodleActivity.this.setResult(-111);
            DoodleActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class j implements c.InterfaceC0237c {

        /* renamed from: a  reason: collision with root package name */
        la.e f16809a = null;

        /* renamed from: b  reason: collision with root package name */
        la.b f16810b = null;

        /* renamed from: c  reason: collision with root package name */
        Float f16811c = null;

        j() {
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.c.InterfaceC0237c
        public void a(la.a aVar, la.f fVar, boolean z10) {
            if (z10) {
                DoodleActivity.this.f16772b.setEditMode(true);
                if (fVar instanceof com.guochao.faceshow.aaspring.views.doodle.h) {
                    com.guochao.faceshow.aaspring.views.doodle.h hVar = (com.guochao.faceshow.aaspring.views.doodle.h) fVar;
                    if (hVar.N()) {
                        DoodleActivity.this.a1(hVar);
                        return;
                    }
                    for (la.c cVar : DoodleActivity.this.f16772b.getAllItem()) {
                        if (cVar instanceof com.guochao.faceshow.aaspring.views.doodle.h) {
                            ((com.guochao.faceshow.aaspring.views.doodle.h) cVar).T(false);
                        }
                    }
                    hVar.T(true);
                }
            } else if (DoodleActivity.this.f16778h.m() == null) {
                for (la.c cVar2 : DoodleActivity.this.f16772b.getAllItem()) {
                    if (cVar2 instanceof com.guochao.faceshow.aaspring.views.doodle.h) {
                        ((com.guochao.faceshow.aaspring.views.doodle.h) fVar).T(false);
                    }
                }
                if (this.f16809a != null) {
                    DoodleActivity.this.f16773c.setPen(this.f16809a);
                    this.f16809a = null;
                }
                if (this.f16810b != null) {
                    DoodleActivity.this.f16773c.setColor(this.f16810b);
                    this.f16810b = null;
                }
                if (this.f16811c != null) {
                    DoodleActivity.this.f16773c.setSize(this.f16811c.floatValue());
                    this.f16811c = null;
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.c.InterfaceC0237c
        public void b(la.a aVar, float f10, float f11) {
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnLongClickListener {
        k() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            DoodleActivity.this.f16773c.clear();
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnTouchListener {
        l() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                DoodleActivity.this.f16794x = x10;
                DoodleActivity.this.f16795y = y10;
                DoodleActivity doodleActivity = DoodleActivity.this;
                doodleActivity.mSettingsPanel.removeCallbacks(doodleActivity.f16782l);
                DoodleActivity doodleActivity2 = DoodleActivity.this;
                doodleActivity2.mSettingsPanel.removeCallbacks(doodleActivity2.f16783m);
                DoodleActivity doodleActivity3 = DoodleActivity.this;
                doodleActivity3.mSettingsPanel.postDelayed(doodleActivity3.f16782l, DoodleActivity.this.f16774d.mChangePanelVisibilityDelay);
            } else if (action == 1 || action == 3) {
                float f10 = x10 - DoodleActivity.this.f16794x;
                float f11 = y10 - DoodleActivity.this.f16795y;
                if (Math.abs(f10) > 8.0f && Math.abs(f11) > 8.0f) {
                    DoodleActivity doodleActivity4 = DoodleActivity.this;
                    doodleActivity4.mSettingsPanel.removeCallbacks(doodleActivity4.f16782l);
                    DoodleActivity doodleActivity5 = DoodleActivity.this;
                    doodleActivity5.mSettingsPanel.removeCallbacks(doodleActivity5.f16783m);
                    DoodleActivity doodleActivity6 = DoodleActivity.this;
                    doodleActivity6.mSettingsPanel.postDelayed(doodleActivity6.f16783m, DoodleActivity.this.f16774d.mChangePanelVisibilityDelay);
                    return false;
                }
                if (DoodleActivity.this.f16778h.m() == null) {
                    if (DoodleActivity.this.f16785o) {
                        DoodleActivity doodleActivity7 = DoodleActivity.this;
                        doodleActivity7.mSettingsPanel.removeCallbacks(doodleActivity7.f16782l);
                        DoodleActivity doodleActivity8 = DoodleActivity.this;
                        doodleActivity8.mSettingsPanel.removeCallbacks(doodleActivity8.f16783m);
                        DoodleActivity doodleActivity9 = DoodleActivity.this;
                        doodleActivity9.mSettingsPanel.postDelayed(doodleActivity9.f16782l, DoodleActivity.this.f16774d.mChangePanelVisibilityDelay);
                    } else {
                        DoodleActivity doodleActivity10 = DoodleActivity.this;
                        doodleActivity10.mSettingsPanel.removeCallbacks(doodleActivity10.f16782l);
                        DoodleActivity doodleActivity11 = DoodleActivity.this;
                        doodleActivity11.mSettingsPanel.removeCallbacks(doodleActivity11.f16783m);
                        DoodleActivity doodleActivity12 = DoodleActivity.this;
                        doodleActivity12.mSettingsPanel.postDelayed(doodleActivity12.f16783m, DoodleActivity.this.f16774d.mChangePanelVisibilityDelay);
                    }
                }
                return !DoodleActivity.this.f16772b.A();
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class m implements com.guochao.faceshow.aaspring.views.k {
        m() {
        }

        @Override // com.guochao.faceshow.aaspring.views.k
        public void a(RangeSeekBar rangeSeekBar, boolean z10) {
            DoodleActivity doodleActivity = DoodleActivity.this;
            doodleActivity.b1(doodleActivity.ivPainSize);
        }

        @Override // com.guochao.faceshow.aaspring.views.k
        public void b(RangeSeekBar rangeSeekBar, boolean z10) {
            DoodleActivity doodleActivity = DoodleActivity.this;
            doodleActivity.W0(doodleActivity.ivPainSize);
        }

        @Override // com.guochao.faceshow.aaspring.views.k
        public void c(RangeSeekBar rangeSeekBar, float f10, float f11, boolean z10) {
            if (f10 > 0.0d && ((int) DoodleActivity.this.f16773c.getSize()) != f10) {
                LogUtils.e("seekBar", "" + f10);
                if (DoodleActivity.this.f16784n) {
                    DoodleActivity.this.Y0(f10);
                } else {
                    DoodleActivity.this.f16784n = true;
                }
                DoodleActivity.this.f16773c.setSize(f10);
                if (DoodleActivity.this.f16778h.m() != null) {
                    DoodleActivity.this.f16778h.m().setSize(f10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n extends RecyclerView.Adapter<BaseViewHolder> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f16817a;

            a(int i9) {
                this.f16817a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f16817a == 0) {
                    DoodleActivity.this.f16773c.setPen(DoodlePen.MOSAIC);
                } else {
                    DoodleActivity.this.f16773c.setPen(DoodlePen.BRUSH);
                    DoodleActivity doodleActivity = DoodleActivity.this;
                    doodleActivity.f16780j = doodleActivity.f16788r[this.f16817a - 1];
                    DoodleActivity.this.f16773c.setColor(new DoodleColor(DoodleActivity.this.f16780j));
                    DoodleActivity.this.f16773c.setSize(DoodleActivity.this.seekBar.getLeftSeekBar().s());
                }
                if (!((ColorItemBean) DoodleActivity.this.f16777g.get(this.f16817a)).isSelect()) {
                    for (int i9 = 0; i9 < DoodleActivity.this.f16777g.size(); i9++) {
                        if (i9 != this.f16817a) {
                            ((ColorItemBean) DoodleActivity.this.f16777g.get(i9)).setSelect(false);
                        }
                    }
                    ((ColorItemBean) DoodleActivity.this.f16777g.get(this.f16817a)).setSelect(true);
                }
                n.this.notifyDataSetChanged();
            }
        }

        n() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DoodleActivity.this.f16777g.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_select);
            ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.iv_color);
            ImageView imageView3 = (ImageView) baseViewHolder.getView(R.id.iv_mosaic);
            if (((ColorItemBean) DoodleActivity.this.f16777g.get(i9)).isSelect()) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(4);
            }
            if (i9 == 0) {
                imageView3.setVisibility(0);
                imageView2.setVisibility(4);
            } else {
                imageView3.setVisibility(4);
                imageView2.setVisibility(0);
                imageView2.setBackground(((ColorItemBean) DoodleActivity.this.f16777g.get(i9)).getDrawable());
            }
            baseViewHolder.itemView.setOnClickListener(new a(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new BaseViewHolder(DoodleActivity.this.getLayoutInflater().inflate(R.layout.list_item_color, viewGroup, false));
        }
    }

    /* loaded from: classes3.dex */
    private class o extends DoodleView {
        Boolean I4;

        public o(Context context, Bitmap bitmap, boolean z10, com.guochao.faceshow.aaspring.views.doodle.j jVar) {
            super(context, bitmap, z10, jVar);
            this.I4 = null;
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.DoodleView
        public boolean P() {
            DoodleActivity.this.f16778h.p(null);
            return super.P();
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.DoodleView, la.a
        public void clear() {
            super.clear();
            DoodleActivity.this.f16778h.p(null);
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.DoodleView, la.a
        public void setColor(la.b bVar) {
            la.e pen = getPen();
            super.setColor(bVar);
            if ((bVar instanceof DoodleColor ? (DoodleColor) bVar : null) == null || !DoodleActivity.this.T0(pen) || DoodleActivity.this.f16778h.m() == null) {
                return;
            }
            DoodleActivity.this.f16778h.m().setColor(getColor().copy());
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.DoodleView
        public void setEditMode(boolean z10) {
            if (z10 == A()) {
                return;
            }
            super.setEditMode(z10);
            if (z10) {
                this.I4 = Boolean.valueOf(DoodleActivity.this.f16773c.a());
                DoodleActivity.this.f16773c.setIsDrawableOutside(true);
                return;
            }
            if (this.I4 != null) {
                DoodleActivity.this.f16773c.setIsDrawableOutside(this.I4.booleanValue());
            }
            DoodleActivity.this.f16778h.k();
            if (DoodleActivity.this.f16778h.m() == null) {
                setPen(getPen());
            }
            DoodleActivity.this.f16778h.p(null);
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.DoodleView, la.a
        public void setPen(la.e eVar) {
            la.e pen = getPen();
            super.setPen(eVar);
            if (DoodleActivity.this.f16778h.m() == null) {
                DoodleActivity.this.f16779i.put(pen, Float.valueOf(getSize()));
                Float f10 = (Float) DoodleActivity.this.f16779i.get(eVar);
                if (f10 != null) {
                    DoodleActivity.this.f16773c.setSize(f10.floatValue());
                }
            }
            if (eVar == DoodlePen.BRUSH) {
                DoodleActivity.this.f16773c.setColor(new DoodleColor(DoodleActivity.this.f16780j));
            } else if (eVar == DoodlePen.MOSAIC) {
                DoodleActivity.this.f16773c.setColor(com.guochao.faceshow.aaspring.views.doodle.e.P(DoodleActivity.this.f16773c, DoodleActivity.this.f16781k));
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.DoodleView, la.a
        public void setSize(float f10) {
            super.setSize(f10);
            if (DoodleActivity.this.f16778h.m() != null) {
                DoodleActivity.this.f16778h.m().setSize(getSize());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean T0(la.e eVar) {
        return (eVar == DoodlePen.ERASER || eVar == DoodlePen.BITMAP || eVar == DoodlePen.COPY || eVar == DoodlePen.MOSAIC) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W0(View view) {
        if (view.getVisibility() != 0) {
            return;
        }
        view.clearAnimation();
        view.startAnimation(this.f16787q);
        view.setVisibility(8);
    }

    private void X0() {
        n nVar = new n();
        this.f16771a = nVar;
        this.recyclerView.setAdapter(nVar);
        this.f16771a.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y0(float f10) {
        ViewGroup.LayoutParams layoutParams = this.ivPainSize.getLayoutParams();
        int i9 = (int) f10;
        layoutParams.height = DensityUtil.dp2px(5.0f) + i9;
        layoutParams.width = i9 + DensityUtil.dp2px(5.0f);
        this.ivPainSize.setLayoutParams(layoutParams);
        this.ivPainSize.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a1(com.guochao.faceshow.aaspring.views.doodle.h hVar) {
        this.f16772b.setEditMode(true);
        this.ivCompile.setImageResource(R.drawable.bitmap_im_graffito_brush_icon);
        this.llMulti.setVisibility(8);
        this.viewLine.setVisibility(8);
        this.f16792v = new DoodleEditFragment();
        com.bumptech.glide.c.x(getActivity()).c().b0(R.mipmap.im_graffito_bj).V0(this.f16776f).q0(new jc.a(20)).M0(new e(hVar));
        this.f16792v.X1(new f(hVar));
        Z0(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b1(View view) {
        if (view.getVisibility() == 0) {
            return;
        }
        view.clearAnimation();
        view.startAnimation(this.f16786p);
        view.setVisibility(0);
        if (this.f16772b.getItemCount() > 0) {
            this.ivRecall.setImageResource(R.drawable.bitmap_im_recall);
        } else {
            this.ivRecall.setImageResource(R.drawable.bitmap_im_recall_gray);
        }
        if (this.f16772b.A()) {
            this.flSeek.setVisibility(8);
            this.ivPainSize.setVisibility(8);
            this.ivRecall.setVisibility(8);
            this.llMulti.setVisibility(8);
            this.viewLine.setVisibility(8);
            this.ivTextRecall.setVisibility(0);
        }
    }

    public static void d1(Activity activity, DoodleParams doodleParams, int i9) {
        Intent intent = new Intent(activity, DoodleActivity.class);
        intent.putExtra("key_doodle_params", doodleParams);
        activity.startActivityForResult(intent, i9);
    }

    public void Z0(boolean z10) {
        this.ivRecall.setEnabled(!z10);
        this.ivCompile.setEnabled(!z10);
        this.ivText.setEnabled(!z10);
        this.ivCut.setEnabled(!z10);
        this.complete.setEnabled(!z10);
        this.seekBar.setEnabled(!z10);
        setRightFirstResEnable(!z10);
        this.mFrameLayout.setOnTouchListener(new c(z10));
        this.mSettingsPanel.setOnTouchListener(new d(z10));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).f(Color.parseColor("#66000000")).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_doodle;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.seekBar.getLayoutParams();
            marginLayoutParams.setMarginStart(0);
            marginLayoutParams.setMarginEnd(DensityUtil.dp2px(3.0f));
            this.seekBar.setLayoutParams(marginLayoutParams);
        }
        this.f16789s = new KeyboardHeightProvider(this, getWindow().getDecorView());
        getWindow().getDecorView().post(new g());
        setTitle("");
        setEndIcon(R.mipmap.im_graffito_save);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightIconClickListener(new h());
        }
        this.floatTitleBack.setBackgroundColor(Color.parseColor("#66000000"));
        this.floatTitleBack.setBottomEnable(false);
        setLeftBackIcon(R.drawable.bitmap_ugc_back_white);
        if (this.f16774d == null) {
            this.f16774d = (DoodleParams) getIntent().getExtras().getParcelable("key_doodle_params");
        }
        DoodleParams doodleParams = this.f16774d;
        if (doodleParams == null) {
            finish();
            return;
        }
        this.f16775e = doodleParams.mImagePath;
        Uri uri = doodleParams.mUri;
        this.f16776f = uri;
        Bitmap c10 = ma.b.c(uri, this);
        if (c10 == null) {
            finish();
            return;
        }
        this.seekBar.setIndicatorTextDecimalFormat("0.0");
        o oVar = new o(this, c10, this.f16774d.mOptimizeDrawing, new i());
        this.f16772b = oVar;
        this.f16773c = oVar;
        this.f16778h = new com.guochao.faceshow.aaspring.views.doodle.c(oVar, new j());
        this.f16772b.setDefaultTouchDetector(new com.guochao.faceshow.aaspring.views.doodle.i(getApplicationContext(), this.f16778h));
        this.f16773c.setIsDrawableOutside(this.f16774d.mIsDrawableOutside);
        this.mFrameLayout.addView(this.f16772b, -1, -1);
        this.f16773c.setDoodleMinScale(this.f16774d.mMinScale);
        this.f16773c.setDoodleMaxScale(this.f16774d.mMaxScale);
        this.ivRecall.setOnLongClickListener(new k());
        this.f16772b.setOnTouchListener(new l());
        this.seekBar.setOnRangeChangedListener(new m());
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        this.f16786p = alphaAnimation;
        alphaAnimation.setDuration(150L);
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        this.f16787q = alphaAnimation2;
        alphaAnimation2.setDuration(150L);
        this.f16782l = new a();
        this.f16783m = new b();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        this.f16777g = new ArrayList();
        ColorItemBean colorItemBean = new ColorItemBean();
        colorItemBean.setSelect(false);
        this.f16777g.add(colorItemBean);
        for (int i9 = 0; i9 < this.f16788r.length; i9++) {
            ColorItemBean colorItemBean2 = new ColorItemBean();
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(DensityUtil.dp2px(3.0f));
            gradientDrawable.setStroke(DensityUtil.dp2px(1.0f), Color.parseColor("#ffffff"));
            gradientDrawable.setColor(this.f16788r[i9]);
            colorItemBean2.setDrawable(gradientDrawable);
            if (i9 == 1) {
                colorItemBean2.setSelect(true);
            } else {
                colorItemBean2.setSelect(false);
            }
            this.f16777g.add(colorItemBean2);
        }
        X0();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        DoodleEditFragment doodleEditFragment = this.f16792v;
        if (doodleEditFragment != null && !doodleEditFragment.isHidden()) {
            hideSoftKeyboard();
            getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.bottom_to_top, R.anim.top_to_bottom).hide(this.f16792v).commitAllowingStateLoss();
            Z0(false);
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f16789s.close();
        super.onDestroy();
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public void onKeyboardHeightChanged(int i9, int i10) {
        if (i9 > 0) {
            DoodleEditFragment doodleEditFragment = this.f16792v;
            if (doodleEditFragment == null || !doodleEditFragment.isAdded()) {
                return;
            }
            this.f16792v.Y1(i9);
            return;
        }
        DoodleEditFragment doodleEditFragment2 = this.f16792v;
        if (doodleEditFragment2 == null || !doodleEditFragment2.isAdded()) {
            return;
        }
        this.f16792v.Y1(0);
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public /* synthetic */ void onKeyboardHeightChanged(int i9, int i10, int i11) {
        com.guochao.faceshow.aaspring.utils.e.a(this, i9, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f16789s.setKeyboardHeightObserver(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f16789s.setKeyboardHeightObserver(this);
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.complete /* 2131362361 */:
                this.f16773c.b(false);
                return;
            case R.id.iv_compile /* 2131363225 */:
                this.f16772b.setEditMode(false);
                this.ivCompile.setImageResource(R.drawable.bitmap_im_complete);
                la.e eVar = this.f16791u;
                if (eVar == null) {
                    this.f16773c.setPen(DoodlePen.BRUSH);
                    this.f16773c.setShape(DoodleShape.HAND_WRITE);
                    this.f16773c.setColor(new DoodleColor(this.f16774d.mPaintColor));
                } else {
                    this.f16773c.setPen(eVar);
                    this.f16773c.setColor(this.f16793w);
                }
                this.flSeek.setVisibility(0);
                this.ivPainSize.setVisibility(0);
                this.ivRecall.setVisibility(0);
                this.llMulti.setVisibility(0);
                this.viewLine.setVisibility(0);
                this.ivTextRecall.setVisibility(8);
                return;
            case R.id.iv_cut /* 2131363227 */:
                this.f16772b.setEditMode(true);
                return;
            case R.id.iv_recall /* 2131363278 */:
                if (this.f16773c.getAllItem().size() > 0) {
                    la.c cVar = this.f16773c.getAllItem().get(this.f16773c.getAllItem().size() - 1);
                    if (cVar instanceof com.guochao.faceshow.aaspring.views.doodle.h) {
                        com.guochao.faceshow.aaspring.views.doodle.h hVar = (com.guochao.faceshow.aaspring.views.doodle.h) cVar;
                        if (hVar.O().size() != 0) {
                            hVar.R();
                        } else {
                            this.f16772b.G(cVar);
                        }
                    } else {
                        this.f16772b.P();
                    }
                }
                if (this.f16772b.getItemCount() > 0) {
                    this.ivRecall.setBackgroundResource(R.drawable.bitmap_im_recall);
                    return;
                } else {
                    this.ivRecall.setBackgroundResource(R.drawable.bitmap_im_recall_gray);
                    return;
                }
            case R.id.iv_text /* 2131363295 */:
                this.flSeek.setVisibility(8);
                this.ivPainSize.setVisibility(8);
                this.llMulti.setVisibility(8);
                this.viewLine.setVisibility(8);
                this.ivTextRecall.setVisibility(0);
                a1(null);
                return;
            case R.id.iv_text_recall /* 2131363296 */:
                la.f m10 = this.f16778h.m();
                if (m10 != null) {
                    if (m10 instanceof com.guochao.faceshow.aaspring.views.doodle.h) {
                        com.guochao.faceshow.aaspring.views.doodle.h hVar2 = (com.guochao.faceshow.aaspring.views.doodle.h) m10;
                        if (hVar2.O().size() != 0) {
                            hVar2.R();
                        } else {
                            this.f16772b.G(m10);
                            this.f16778h.p(null);
                        }
                    } else {
                        this.f16772b.P();
                    }
                } else if (this.f16773c.getAllItem().size() > 0) {
                    la.c cVar2 = this.f16773c.getAllItem().get(this.f16773c.getAllItem().size() - 1);
                    if (cVar2 instanceof com.guochao.faceshow.aaspring.views.doodle.h) {
                        com.guochao.faceshow.aaspring.views.doodle.h hVar3 = (com.guochao.faceshow.aaspring.views.doodle.h) cVar2;
                        if (hVar3.O().size() != 0) {
                            hVar3.R();
                        } else {
                            this.f16772b.G(cVar2);
                        }
                    } else {
                        this.f16772b.P();
                    }
                }
                if (this.f16772b.getItemCount() > 0) {
                    this.ivTextRecall.setImageResource(R.drawable.bitmap_im_recall_text);
                    return;
                } else {
                    this.ivTextRecall.setImageResource(R.drawable.bitmap_im_recall_gray_text);
                    return;
                }
            default:
                return;
        }
    }
}
