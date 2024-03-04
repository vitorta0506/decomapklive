package com.guochao.faceshow.activity;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.share.internal.ShareConstants;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.BeautyItemCache;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.adapter.ZZ_RecycleAdapter;
import com.guochao.faceshow.fragment.TCTimeFragment;
import com.guochao.faceshow.paster.TCPasterActivity;
import com.guochao.faceshow.utils.AAMethod;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.utils.TCEditerUtil;
import com.guochao.faceshow.utils.TCUtils;
import com.guochao.faceshow.utils.TCVideoEditerWrapper;
import com.guochao.faceshow.utils.Tool;
import com.guochao.faceshow.views.RangeSlider;
import com.guochao.faceshow.views.TCConfirmDialog;
import com.guochao.faceshow.views.TCReversalSeekBar;
import com.guochao.faceshow.views.VideoProgressView;
import com.guochao.faceshow.views.ZZRangeSlider;
import com.guochao.faceshow.views.s;
import com.guochao.pusher.beauty.FilterItem;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.TXVideoEditer;
import com.tencent.ugc.TXVideoInfoReader;
import com.tencent.ugc.UGCTransitionRules;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class ZTCVideoEditerActivity extends BaseActivity implements View.OnClickListener, TXVideoEditer.TXVideoProcessListener, TXVideoEditer.TXVideoGenerateListener, View.OnTouchListener {

    /* renamed from: t5  reason: collision with root package name */
    private static AtomicBoolean f24924t5;
    private int A;
    private com.guochao.faceshow.views.s B3;
    private LinearLayout C;
    private ZZRangeSlider C4;
    private ImageView D;
    private TextView D4;
    private ImageView E;
    private LinearLayout E4;
    private ImageView F;
    private boolean F4;
    private ImageView G;
    private int G4;
    private ImageView H;
    private int H4;
    private RelativeLayout I;
    private int I4;
    private TextView J;
    private int J4;
    private TextView K;
    private String L;
    private ArrayList<String> L4;
    private int M;
    private TextView N;
    private long N4;
    private RangeSlider O;
    private RelativeLayout P;
    private List<Bitmap> P4;
    private TCReversalSeekBar Q;
    private ImageView Q4;
    private LinearLayout R;
    private LinearLayout R4;
    private LinearLayout S4;
    private TextView U4;
    private VideoProgressView V2;
    private TCTimeFragment V3;
    private TCReversalSeekBar V4;
    private ImageView W4;
    private int X4;

    /* renamed from: a  reason: collision with root package name */
    private Uri f24925a;

    /* renamed from: a1  reason: collision with root package name */
    private List<FilterItem> f24926a1;

    /* renamed from: a2  reason: collision with root package name */
    private Bitmap f24927a2;

    /* renamed from: a5  reason: collision with root package name */
    private int f24928a5;

    /* renamed from: b  reason: collision with root package name */
    private String f24929b;

    /* renamed from: b5  reason: collision with root package name */
    private int f24930b5;

    /* renamed from: c  reason: collision with root package name */
    private int f24931c;

    /* renamed from: c5  reason: collision with root package name */
    private int f24932c5;

    /* renamed from: d  reason: collision with root package name */
    private TXVideoEditer f24933d;

    /* renamed from: d5  reason: collision with root package name */
    private PopupWindow f24934d5;

    /* renamed from: e  reason: collision with root package name */
    private boolean f24935e;

    /* renamed from: e5  reason: collision with root package name */
    private PopupWindow f24936e5;

    /* renamed from: f  reason: collision with root package name */
    private FrameLayout f24937f;

    /* renamed from: f5  reason: collision with root package name */
    private String f24938f5;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f24939g;

    /* renamed from: g5  reason: collision with root package name */
    private FrameLayout f24940g5;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f24941h;

    /* renamed from: j  reason: collision with root package name */
    private TXVideoEditConstants.TXVideoInfo f24945j;

    /* renamed from: k  reason: collision with root package name */
    private String f24947k;

    /* renamed from: k5  reason: collision with root package name */
    private String f24948k5;

    /* renamed from: l  reason: collision with root package name */
    private String f24949l;

    /* renamed from: l5  reason: collision with root package name */
    int f24950l5;

    /* renamed from: m  reason: collision with root package name */
    private String f24951m;

    /* renamed from: n  reason: collision with root package name */
    private String f24953n;

    /* renamed from: o  reason: collision with root package name */
    private String f24955o;

    /* renamed from: o5  reason: collision with root package name */
    private u f24956o5;

    /* renamed from: p  reason: collision with root package name */
    private String f24957p;

    /* renamed from: q  reason: collision with root package name */
    private KeyguardManager f24959q;

    /* renamed from: r  reason: collision with root package name */
    private String f24961r;

    /* renamed from: s  reason: collision with root package name */
    private com.guochao.faceshow.views.l f24963s;

    /* renamed from: s5  reason: collision with root package name */
    Toast f24964s5;

    /* renamed from: u  reason: collision with root package name */
    private long f24966u;

    /* renamed from: v  reason: collision with root package name */
    private TCVideoEditerWrapper f24967v;

    /* renamed from: w  reason: collision with root package name */
    private LinearLayout f24968w;

    /* renamed from: x  reason: collision with root package name */
    private TextView f24969x;

    /* renamed from: i  reason: collision with root package name */
    private int f24943i = 0;

    /* renamed from: t  reason: collision with root package name */
    private long f24965t = 0;

    /* renamed from: y  reason: collision with root package name */
    int f24970y = 0;

    /* renamed from: z  reason: collision with root package name */
    TCVideoEditerWrapper.TXVideoPreviewListenerWrapper f24971z = new a();
    TCVideoEditerWrapper.TXVideoPreviewListenerWrapper B = new m();
    private int V1 = -1;
    private int K4 = 1;
    private String M4 = "";
    private int O4 = -1;
    private int T4 = 1;
    private float Y4 = 0.8f;
    private float Z4 = 0.8f;

    /* renamed from: h5  reason: collision with root package name */
    private int f24942h5 = 0;

    /* renamed from: i5  reason: collision with root package name */
    private int f24944i5 = 0;

    /* renamed from: j5  reason: collision with root package name */
    private List<ResourceListItemBean> f24946j5 = new ArrayList();

    /* renamed from: m5  reason: collision with root package name */
    private TXVideoEditer.TXThumbnailListener f24952m5 = new r();

    /* renamed from: n5  reason: collision with root package name */
    private s.e f24954n5 = new t();

    /* renamed from: p5  reason: collision with root package name */
    ArrayList<Integer> f24958p5 = new ArrayList<>();

    /* renamed from: q5  reason: collision with root package name */
    ArrayList<Integer> f24960q5 = new ArrayList<>();

    /* renamed from: r5  reason: collision with root package name */
    private Boolean f24962r5 = Boolean.FALSE;

    /* loaded from: classes3.dex */
    class a implements TCVideoEditerWrapper.TXVideoPreviewListenerWrapper {

        /* renamed from: com.guochao.faceshow.activity.ZTCVideoEditerActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0244a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f24973a;

            RunnableC0244a(int i9) {
                this.f24973a = i9;
            }

            @Override // java.lang.Runnable
            public void run() {
                ZTCVideoEditerActivity.this.B3.B(this.f24973a);
            }
        }

        a() {
        }

        @Override // com.guochao.faceshow.utils.TCVideoEditerWrapper.TXVideoPreviewListenerWrapper
        public void onPreviewFinishedWrapper() {
            ZTCVideoEditerActivity.this.d2();
            ZTCVideoEditerActivity zTCVideoEditerActivity = ZTCVideoEditerActivity.this;
            zTCVideoEditerActivity.a2(zTCVideoEditerActivity.f24965t, ZTCVideoEditerActivity.this.f24966u);
        }

        @Override // com.guochao.faceshow.utils.TCVideoEditerWrapper.TXVideoPreviewListenerWrapper
        public void onPreviewProgressWrapper(int i9) {
            ZTCVideoEditerActivity.this.A = i9;
            if (ZTCVideoEditerActivity.this.f24943i == 2 || ZTCVideoEditerActivity.this.f24943i == 1) {
                ZTCVideoEditerActivity.this.runOnUiThread(new RunnableC0244a(i9));
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ZTCVideoEditerActivity.this.f24934d5.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class c implements RangeSlider.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f24976a;

        c(TextView textView) {
            this.f24976a = textView;
        }

        @Override // com.guochao.faceshow.views.RangeSlider.c
        public void a(int i9, int i10, int i11) {
            ZTCVideoEditerActivity zTCVideoEditerActivity = ZTCVideoEditerActivity.this;
            zTCVideoEditerActivity.f24928a5 = (zTCVideoEditerActivity.M * i10) / 100;
            ZTCVideoEditerActivity zTCVideoEditerActivity2 = ZTCVideoEditerActivity.this;
            zTCVideoEditerActivity2.f24930b5 = (zTCVideoEditerActivity2.M * i11) / 100;
            ZTCVideoEditerActivity zTCVideoEditerActivity3 = ZTCVideoEditerActivity.this;
            zTCVideoEditerActivity3.O1(zTCVideoEditerActivity3.f24928a5, ZTCVideoEditerActivity.this.f24930b5);
            this.f24976a.setText(String.format(ZTCVideoEditerActivity.this.getString(R.string.time_left_right), TCUtils.duration(ZTCVideoEditerActivity.this.f24928a5), TCUtils.duration(ZTCVideoEditerActivity.this.f24930b5)));
        }

        @Override // com.guochao.faceshow.views.RangeSlider.c
        public void b(int i9) {
        }
    }

    /* loaded from: classes3.dex */
    class d implements TCReversalSeekBar.a {
        d() {
        }

        @Override // com.guochao.faceshow.views.TCReversalSeekBar.a
        public void a() {
        }

        @Override // com.guochao.faceshow.views.TCReversalSeekBar.a
        public void b(float f10) {
            ZTCVideoEditerActivity.this.Y4 = 1.0f - f10;
            ZTCVideoEditerActivity.this.f24933d.setVideoVolume(ZTCVideoEditerActivity.this.Y4);
            ZTCVideoEditerActivity.this.f24933d.setBGMVolume(ZTCVideoEditerActivity.this.Z4);
        }

        @Override // com.guochao.faceshow.views.TCReversalSeekBar.a
        public void c() {
        }
    }

    /* loaded from: classes3.dex */
    class e implements TCReversalSeekBar.a {
        e() {
        }

        @Override // com.guochao.faceshow.views.TCReversalSeekBar.a
        public void a() {
        }

        @Override // com.guochao.faceshow.views.TCReversalSeekBar.a
        public void b(float f10) {
            ZTCVideoEditerActivity.this.Z4 = 1.0f - f10;
            if (TextUtils.isEmpty(ZTCVideoEditerActivity.this.L)) {
                ZTCVideoEditerActivity.this.f24933d.setVideoVolume(ZTCVideoEditerActivity.this.Z4);
                ZTCVideoEditerActivity.this.f24933d.setBGMVolume(0.0f);
                return;
            }
            ZTCVideoEditerActivity.this.f24933d.setBGMVolume(ZTCVideoEditerActivity.this.Z4);
            ZTCVideoEditerActivity.this.f24933d.setVideoVolume(0.0f);
        }

        @Override // com.guochao.faceshow.views.TCReversalSeekBar.a
        public void c() {
        }
    }

    /* loaded from: classes3.dex */
    class f implements PopupWindow.OnDismissListener {
        f() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            ZTCVideoEditerActivity.this.V1(4);
        }
    }

    /* loaded from: classes3.dex */
    class g extends ZZ_RecycleAdapter<FilterItem> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f24982a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ LinearLayout f24983b;

            a(int i9, LinearLayout linearLayout) {
                this.f24982a = i9;
                this.f24983b = linearLayout;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f24982a != ZTCVideoEditerActivity.this.V1) {
                    ZTCVideoEditerActivity.this.V1 = this.f24982a;
                    if (ZTCVideoEditerActivity.this.R != null) {
                        ZTCVideoEditerActivity.this.R.setBackgroundColor(ContextCompat.getColor(ZTCVideoEditerActivity.this, R.color.transparent));
                    }
                    this.f24983b.setBackgroundColor(ContextCompat.getColor(ZTCVideoEditerActivity.this, R.color.myblue));
                    ZTCVideoEditerActivity.this.R = this.f24983b;
                    ZTCVideoEditerActivity.this.x1(this.f24982a);
                    return;
                }
                if (ZTCVideoEditerActivity.this.R != null) {
                    ZTCVideoEditerActivity.this.R.setBackgroundColor(ContextCompat.getColor(ZTCVideoEditerActivity.this, R.color.transparent));
                }
                this.f24983b.setBackgroundColor(ContextCompat.getColor(ZTCVideoEditerActivity.this, R.color.transparent));
                ZTCVideoEditerActivity.this.V1 = -1;
                ZTCVideoEditerActivity.this.x1(-1);
            }
        }

        g(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
        /* renamed from: a */
        public void convert(ZZ_RecycleAdapter.ViewHolder viewHolder, FilterItem filterItem) {
            hc.a.j(viewHolder.c(R.id.lift_iv), filterItem.getIcon());
            int position = viewHolder.getPosition();
            LinearLayout d10 = viewHolder.d(R.id.item);
            if (position == ZTCVideoEditerActivity.this.V1) {
                ZTCVideoEditerActivity.this.R = d10;
                d10.setBackgroundColor(ContextCompat.getColor(ZTCVideoEditerActivity.this, R.color.myblue));
            } else {
                d10.setBackgroundColor(ContextCompat.getColor(ZTCVideoEditerActivity.this, R.color.transparent));
            }
            viewHolder.getView(R.id.item).setOnClickListener(new a(position, d10));
        }
    }

    /* loaded from: classes3.dex */
    class h implements PopupWindow.OnDismissListener {
        h() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (ZTCVideoEditerActivity.this.V1 != -1 && ZTCVideoEditerActivity.this.V1 != 0) {
                ZTCVideoEditerActivity.this.H.setBackgroundResource(R.mipmap.ugc_record_beautiful_girl_show);
            } else {
                ZTCVideoEditerActivity.this.H.setBackgroundResource(R.mipmap.ugc_record_beautiful_girl);
            }
            ZTCVideoEditerActivity.this.V1(2);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f24986a;

        i(float f10) {
            this.f24986a = f10;
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e("Activity", "v = " + this.f24986a);
            if (this.f24986a < 0.0f) {
                ZTCVideoEditerActivity.this.f24963s.h("1%");
                return;
            }
            com.guochao.faceshow.views.l lVar = ZTCVideoEditerActivity.this.f24963s;
            lVar.h(((int) (this.f24986a * 100.0f)) + "%");
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TXVideoEditConstants.TXGenerateResult f24988a;

        j(TXVideoEditConstants.TXGenerateResult tXGenerateResult) {
            this.f24988a = tXGenerateResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            TXVideoEditConstants.TXGenerateResult tXGenerateResult = this.f24988a;
            if (tXGenerateResult.retCode == 0) {
                ZTCVideoEditerActivity.this.B1(tXGenerateResult);
            } else {
                Toast.makeText(ZTCVideoEditerActivity.this, tXGenerateResult.descMsg, 0).show();
            }
            if (ZTCVideoEditerActivity.this.f24941h != null) {
                ZTCVideoEditerActivity.this.f24941h.setEnabled(true);
                ZTCVideoEditerActivity.this.f24941h.setClickable(true);
            }
            ZTCVideoEditerActivity.this.f24943i = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends SimpleObserver<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f24990a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TXVideoEditConstants.TXGenerateResult f24991b;

        k(List list, TXVideoEditConstants.TXGenerateResult tXGenerateResult) {
            this.f24990a = list;
            this.f24991b = tXGenerateResult;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onError(Throwable th2) {
            super.onError(th2);
            if (ZTCVideoEditerActivity.this.f24963s != null) {
                ZTCVideoEditerActivity.this.f24963s.d();
            }
            LogUtils.i("zune", "获取截图失败");
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(String str) {
            if (ZTCVideoEditerActivity.this.f24963s != null) {
                ZTCVideoEditerActivity.this.f24963s.d();
            }
            this.f24990a.add(str);
            if (this.f24990a.size() == Math.min(10L, ZTCVideoEditerActivity.this.f24945j.duration / 1000)) {
                com.guochao.faceshow.aaspring.manager.b.h("Thumb", this.f24990a);
                ZTCVideoEditerActivity.this.b2(this.f24991b, str);
            }
            LogUtils.i("zune", "获取截图完成 = " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements vh.o<Bitmap, String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f24993a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f24994b;

        l(List list, List list2) {
            this.f24993a = list;
            this.f24994b = list2;
        }

        @Override // vh.o
        /* renamed from: a */
        public String apply(Bitmap bitmap) throws Exception {
            FileOutputStream fileOutputStream;
            File file = new File(ZTCVideoEditerActivity.this.f24961r);
            if (file.exists()) {
                String absolutePath = file.getAbsolutePath();
                if (absolutePath.lastIndexOf(".") != -1) {
                    absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf("."));
                }
                File file2 = new File(absolutePath);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                File file3 = new File(file2, "thumbnail" + System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG);
                try {
                    fileOutputStream = new FileOutputStream(file3);
                } catch (IOException e10) {
                    e10.printStackTrace();
                    LogUtils.i("zune", "截图保存失败 = " + e10.getCause());
                }
                if (bitmap == null) {
                    return file3.getAbsolutePath();
                }
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                if (this.f24993a.size() == Math.min(10L, ZTCVideoEditerActivity.this.f24945j.duration / 1000)) {
                    com.guochao.faceshow.aaspring.manager.b.h("Thumb", this.f24994b);
                }
                LogUtils.i("zune", "截图保存成功");
                return file3.getAbsolutePath();
            }
            return null;
        }
    }

    /* loaded from: classes3.dex */
    class m implements TCVideoEditerWrapper.TXVideoPreviewListenerWrapper {
        m() {
        }

        @Override // com.guochao.faceshow.utils.TCVideoEditerWrapper.TXVideoPreviewListenerWrapper
        public void onPreviewFinishedWrapper() {
            ZTCVideoEditerActivity.this.d2();
            ZTCVideoEditerActivity zTCVideoEditerActivity = ZTCVideoEditerActivity.this;
            zTCVideoEditerActivity.a2(zTCVideoEditerActivity.f24965t, ZTCVideoEditerActivity.this.f24966u);
        }

        @Override // com.guochao.faceshow.utils.TCVideoEditerWrapper.TXVideoPreviewListenerWrapper
        public void onPreviewProgressWrapper(int i9) {
            ZTCVideoEditerActivity.this.A = i9;
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ File f24998a;

            a(File file) {
                this.f24998a = file;
            }

            @Override // java.lang.Runnable
            public void run() {
                ZTCVideoEditerActivity.this.N1(this.f24998a);
            }
        }

        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String cachePath = FilePathProvider.getCachePath("crop");
            File file = new File(cachePath, System.currentTimeMillis() + FileUtils.PIC_POSTFIX_MP4);
            ZTCVideoEditerActivity zTCVideoEditerActivity = ZTCVideoEditerActivity.this;
            FileUtil.copyUriToFile(zTCVideoEditerActivity, zTCVideoEditerActivity.f24925a, file);
            ZTCVideoEditerActivity.this.runOnUiThread(new a(file));
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ File f25001a;

            a(File file) {
                this.f25001a = file;
            }

            @Override // java.lang.Runnable
            public void run() {
                ZTCVideoEditerActivity.this.N1(this.f25001a);
            }
        }

        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String cachePath = FilePathProvider.getCachePath("crop");
            File file = new File(cachePath, System.currentTimeMillis() + FileUtils.PIC_POSTFIX_MP4);
            try {
                file.createNewFile();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            FileUtil.copyFile(ZTCVideoEditerActivity.this.f24925a.getPath(), file.getAbsolutePath());
            ZTCVideoEditerActivity.this.runOnUiThread(new a(file));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p implements Runnable {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ View f25004a;

            a(View view) {
                this.f25004a = view;
            }

            @Override // java.lang.Runnable
            public void run() {
                ZTCVideoEditerActivity.this.E4.addView(this.f25004a);
            }
        }

        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ZTCVideoEditerActivity.this.isFinishing()) {
                return;
            }
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(ZTCVideoEditerActivity.this.getActivity(), ZTCVideoEditerActivity.this.f24925a);
            String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
            if (TextUtils.isEmpty(extractMetadata)) {
                return;
            }
            float floatValue = Float.valueOf(extractMetadata).floatValue() / 18.0f;
            for (float f10 = 1.0f; f10 <= 18.0f && !ZTCVideoEditerActivity.this.isFinishing(); f10 += 1.0f) {
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(f10 * floatValue * 1000.0f);
                View inflate = View.inflate(ZTCVideoEditerActivity.this, R.layout.item_video_progress_thumbnail, null);
                ((ImageView) inflate.findViewById(R.id.iv_video_progress_thumbnail)).setImageBitmap(frameAtTime);
                ZTCVideoEditerActivity.this.runOnUiThread(new a(inflate));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements ZZRangeSlider.a {
        q() {
        }

        @Override // com.guochao.faceshow.views.ZZRangeSlider.a
        public void a(int i9, int i10, int i11) {
            ZTCVideoEditerActivity zTCVideoEditerActivity = ZTCVideoEditerActivity.this;
            zTCVideoEditerActivity.f24965t = (zTCVideoEditerActivity.f24945j.duration * i10) / 100;
            ZTCVideoEditerActivity zTCVideoEditerActivity2 = ZTCVideoEditerActivity.this;
            zTCVideoEditerActivity2.f24966u = (zTCVideoEditerActivity2.f24945j.duration * i11) / 100;
            ZTCVideoEditerActivity zTCVideoEditerActivity3 = ZTCVideoEditerActivity.this;
            zTCVideoEditerActivity3.a2(zTCVideoEditerActivity3.f24965t, ZTCVideoEditerActivity.this.f24966u);
            ZTCVideoEditerActivity.this.D4.setVisibility(0);
            ZTCVideoEditerActivity.this.D4.setText(String.format(ZTCVideoEditerActivity.this.getString(R.string.time_left_right), TCUtils.duration(ZTCVideoEditerActivity.this.f24965t), TCUtils.duration(ZTCVideoEditerActivity.this.f24966u)));
        }

        @Override // com.guochao.faceshow.views.ZZRangeSlider.a
        public void b(int i9) {
        }
    }

    /* loaded from: classes3.dex */
    class r implements TXVideoEditer.TXThumbnailListener {
        r() {
        }

        @Override // com.tencent.ugc.TXVideoEditer.TXThumbnailListener
        public void onThumbnail(int i9, long j10, Bitmap bitmap) {
            TCVideoEditerWrapper.getInstance().addThumbnailBitmap(j10, bitmap);
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TXVideoEditConstants.TXGenerateResult f25008a;

        /* loaded from: classes3.dex */
        class a implements TCConfirmDialog.c {
            a() {
            }

            @Override // com.guochao.faceshow.views.TCConfirmDialog.c
            public void a() {
                ZTCVideoEditerActivity.this.finish();
            }

            @Override // com.guochao.faceshow.views.TCConfirmDialog.c
            public void b() {
            }
        }

        s(TXVideoEditConstants.TXGenerateResult tXGenerateResult) {
            this.f25008a = tXGenerateResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            ZTCVideoEditerActivity.this.S1();
            TXVideoEditConstants.TXGenerateResult tXGenerateResult = this.f25008a;
            if (tXGenerateResult.retCode == 0) {
                ZTCVideoEditerActivity.this.G.setVisibility(0);
                ZTCVideoEditerActivity.this.F.setVisibility(0);
                ZTCVideoEditerActivity.this.f24935e = true;
                return;
            }
            TCConfirmDialog Q1 = TCConfirmDialog.Q1("错误", tXGenerateResult.descMsg, false, "取消", "取消");
            Q1.setCancelable(false);
            Q1.S1(new a());
            Q1.show(ZTCVideoEditerActivity.this.getSupportFragmentManager(), "confirm_dialog");
        }
    }

    /* loaded from: classes3.dex */
    class t implements s.e {
        t() {
        }

        @Override // com.guochao.faceshow.views.s.e
        public void a(long j10) {
            ZTCVideoEditerActivity.this.Q1(j10);
        }

        @Override // com.guochao.faceshow.views.s.e
        public void b(long j10) {
            ZTCVideoEditerActivity zTCVideoEditerActivity = ZTCVideoEditerActivity.this;
            zTCVideoEditerActivity.a2(zTCVideoEditerActivity.N4, ZTCVideoEditerActivity.this.f24945j.duration);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class u extends PhoneStateListener {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<ZTCVideoEditerActivity> f25012a;

        public u(ZTCVideoEditerActivity zTCVideoEditerActivity) {
            this.f25012a = new WeakReference<>(zTCVideoEditerActivity);
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i9, String str) {
            super.onCallStateChanged(i9, str);
            ZTCVideoEditerActivity zTCVideoEditerActivity = this.f25012a.get();
            if (zTCVideoEditerActivity == null) {
                return;
            }
            if (i9 == 1 || i9 == 2) {
                zTCVideoEditerActivity.r1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B1(TXVideoEditConstants.TXGenerateResult tXGenerateResult) {
        LogUtils.i("zune", "开始获取缩略图");
        int min = (int) Math.min(10L, this.f24945j.duration / 1000);
        ArrayList arrayList = new ArrayList();
        for (long j10 = 0; j10 < min; j10++) {
            arrayList.add(Long.valueOf(j10 * 1000));
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(this, this.f24925a);
            Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(((Long) arrayList.get(i9)).longValue() * 1000);
            if (frameAtTime != null) {
                LogUtils.i("zune", String.format("第%s张，bitmap = %s", Integer.valueOf(i9), frameAtTime));
                arrayList2.add(frameAtTime);
                io.reactivex.k.just(frameAtTime).map(new l(arrayList2, arrayList3)).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new k(arrayList3, tXGenerateResult));
            }
        }
    }

    private void F1() {
        this.F4 = false;
        this.J.setVisibility(8);
        if (this.V3 != null) {
            FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
            beginTransaction.hide(this.V3);
            beginTransaction.commit();
        }
        V1(2);
    }

    private void G1() {
        if (this.f24956o5 != null || Build.VERSION.SDK_INT >= 31) {
            return;
        }
        this.f24956o5 = new u(this);
        ((TelephonyManager) getApplicationContext().getSystemService("phone")).listen(this.f24956o5, 32);
    }

    private void H1() {
        ViewGroup.LayoutParams layoutParams = this.f24937f.getLayoutParams();
        layoutParams.height = AAMethod.getRealHeight(this);
        this.f24937f.setLayoutParams(layoutParams);
        TXVideoEditConstants.TXPreviewParam tXPreviewParam = new TXVideoEditConstants.TXPreviewParam();
        tXPreviewParam.videoView = this.f24937f;
        tXPreviewParam.renderMode = 1;
        TXVideoEditer tXVideoEditer = this.f24933d;
        if (tXVideoEditer != null) {
            tXVideoEditer.initWithPreview(tXPreviewParam);
        }
    }

    private void I1() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        int i9 = point.x;
        VideoProgressView videoProgressView = (VideoProgressView) findViewById(R.id.editer_video_progress_view);
        this.V2 = videoProgressView;
        videoProgressView.setViewWidth(i9);
        this.V2.setThumbnailData(this.P4);
        com.guochao.faceshow.views.s sVar = new com.guochao.faceshow.views.s(this.f24945j.duration);
        this.B3 = sVar;
        sVar.F(this.V2);
        this.B3.E(this.f24954n5);
        this.B3.D(i9);
    }

    private void J1() {
        this.f24937f = (FrameLayout) findViewById(R.id.editer_fl_video);
        this.C = (LinearLayout) findViewById(R.id.bgm_layput);
        this.f24939g = (ImageView) findViewById(R.id.tv_left_back);
        this.f24941h = (ImageView) findViewById(R.id.btn_confirm);
        this.f24969x = (TextView) findViewById(R.id.app_title_text);
        this.D = (ImageView) findViewById(R.id.btn_music_pannel);
        this.E = (ImageView) findViewById(R.id.voice_set);
        this.R4 = (LinearLayout) findViewById(R.id.time_line);
        this.S4 = (LinearLayout) findViewById(R.id.tcp_line);
        this.F = (ImageView) findViewById(R.id.btn_torch);
        this.G = (ImageView) findViewById(R.id.btn_beauty);
        this.W4 = (ImageView) findViewById(R.id.btn_switch_camera);
        this.U4 = (TextView) findViewById(R.id.tcp_ok);
        this.H = (ImageView) findViewById(R.id.btn_delete_last_part);
        this.I = (RelativeLayout) findViewById(R.id.rl_play_root);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.paster_fl_player);
        this.f24940g5 = frameLayout;
        frameLayout.setOnTouchListener(this);
        this.f24968w = (LinearLayout) findViewById(R.id.edit_layout);
        this.f24939g.setOnClickListener(this);
        this.f24941h.setOnClickListener(this);
        this.D.setOnClickListener(this);
        this.F.setOnClickListener(this);
        this.F.setVisibility(8);
        this.E.setOnClickListener(this);
        this.G.setOnClickListener(this);
        this.G.setVisibility(8);
        this.G.setOnClickListener(this);
        this.W4.setOnClickListener(this);
        this.W4.setVisibility(8);
        this.H.setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.yes_sure);
        this.J = textView;
        textView.setOnClickListener(this);
        this.K = (TextView) findViewById(R.id.question_title);
        if (!TextUtils.isEmpty(this.M4)) {
            hc.a.q(this.M4, this.D, R.mipmap.dog, this);
        }
        ImageView imageView = (ImageView) findViewById(R.id.btn_play);
        this.Q4 = imageView;
        imageView.setOnClickListener(this);
        this.U4.setOnClickListener(this);
        this.D4 = (TextView) findViewById(R.id.cut_sure);
        this.E4 = (LinearLayout) findViewById(R.id.sc_ll);
        ZZRangeSlider zZRangeSlider = (ZZRangeSlider) findViewById(R.id.bgm_range_slider);
        this.C4 = zZRangeSlider;
        zZRangeSlider.setRangeChangeListener(new q());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L1() {
        if (findViewById(R.id.title_lay).getMeasuredHeight() > ScreenTools.getScreenHeight() - findViewById(R.id.time_line).getMeasuredHeight()) {
            ((ViewGroup.MarginLayoutParams) findViewById(R.id.time_line).getLayoutParams()).setMarginEnd(DensityUtil.dp2px(DensityUtil.dp2px(24.0f)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N1(File file) {
        if (this.f24933d.setVideoPath(file.getPath()) != 0) {
            return;
        }
        this.f24933d.setBGMVolume(0.8f);
        this.f24933d.setVideoVolume(0.8f);
        TCVideoEditerWrapper tCVideoEditerWrapper = TCVideoEditerWrapper.getInstance();
        this.f24967v = tCVideoEditerWrapper;
        tCVideoEditerWrapper.setEditer(this.f24933d);
        TXVideoEditConstants.TXVideoInfo videoFileInfo = TXVideoInfoReader.getInstance().getVideoFileInfo(file.getAbsolutePath());
        this.f24945j = videoFileInfo;
        this.f24967v.setTXVideoInfo(videoFileInfo);
        this.f24967v.addTXVideoPreviewListenerWrapper(this.B);
        G1();
        long j10 = this.f24945j.duration;
        this.f24966u = j10;
        this.H4 = (int) j10;
        this.G4 = 0;
        J1();
        R1();
        f24924t5 = new AtomicBoolean(false);
        this.f24959q = (KeyguardManager) getApplicationContext().getSystemService("keyguard");
        c2();
        new Thread(new p()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O1(long j10, long j11) {
        this.f24933d.setBGMStartTime(j10, j11);
        this.f24933d.setBGMLoop(true);
    }

    private void R1() {
        H1();
        a2(this.f24965t, this.f24966u);
    }

    private void T1() {
        this.Q4.setImageResource(R.mipmap.video_stop);
        int i9 = this.f24943i;
        if (i9 == 3) {
            this.f24933d.resumePlay();
        } else if (i9 == 6) {
            this.f24933d.startPlayFromTime(this.N4, this.H4);
        }
        this.f24943i = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1(int i9) {
        if (i9 == 1) {
            this.f24968w.setVisibility(4);
            this.f24939g.setVisibility(0);
            this.f24969x.setVisibility(4);
        } else if (i9 == 2) {
            this.f24968w.setVisibility(0);
            this.f24939g.setVisibility(0);
            this.f24969x.setVisibility(0);
        } else if (i9 == 3) {
            this.f24968w.setVisibility(4);
            this.f24939g.setVisibility(4);
            this.f24969x.setVisibility(4);
        } else if (i9 != 4) {
        } else {
            this.f24968w.setVisibility(0);
            this.f24939g.setVisibility(0);
            this.f24969x.setVisibility(0);
        }
    }

    private void W1(int i9) {
        switch (i9) {
            case 0:
                e2(0, getString(R.string.normal_my));
                return;
            case 1:
                e2(1, "1");
                return;
            case 2:
                e2(2, "2");
                return;
            case 3:
                e2(3, "3");
                return;
            case 4:
                e2(4, "4");
                return;
            case 5:
                e2(5, "5");
                return;
            case 6:
                e2(6, MVPActivity.FROM_BAG_BADGE);
                return;
            case 7:
                e2(7, "7");
                return;
            case 8:
                e2(8, ReportController.REPORT_TYPE_ONE_V_ONE);
                return;
            case 9:
                e2(9, "9");
                return;
            default:
                return;
        }
    }

    private void X1() {
        this.F4 = true;
        this.J.setVisibility(0);
        this.R4.setVisibility(0);
        this.V2.setVisibility(0);
        LinearLayout linearLayout = this.S4;
        if (linearLayout != null && linearLayout.getVisibility() == 0) {
            this.S4.setVisibility(4);
        }
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        TCTimeFragment tCTimeFragment = this.V3;
        if (tCTimeFragment == null) {
            TCTimeFragment tCTimeFragment2 = new TCTimeFragment();
            this.V3 = tCTimeFragment2;
            beginTransaction.add(R.id.editer_fl_container, tCTimeFragment2, "time_fragment");
        } else {
            beginTransaction.show(tCTimeFragment);
        }
        beginTransaction.commit();
        V1(1);
        this.R4.post(new Runnable() { // from class: com.guochao.faceshow.activity.c
            @Override // java.lang.Runnable
            public final void run() {
                ZTCVideoEditerActivity.this.L1();
            }
        });
    }

    private void Y1() {
        this.f24967v.removeTXVideoPreviewListenerWrapper(this.B);
        this.f24967v.addTXVideoPreviewListenerWrapper(this.f24971z);
        if (this.f24933d != null && this.f24967v.getTXVideoInfo() != null) {
            I1();
            d2();
            a2(this.f24965t, this.f24966u);
            return;
        }
        Toast.makeText(this, "状态异常，结束编辑", 0).show();
        finish();
    }

    private void Z1() {
        d2();
        this.f24943i = 8;
        ImageView imageView = this.f24941h;
        if (imageView != null) {
            imageView.setEnabled(false);
            this.f24941h.setClickable(false);
        }
        this.f24961r = TCEditerUtil.generateVideoPath();
        if (this.f24963s == null) {
            com.guochao.faceshow.views.l lVar = new com.guochao.faceshow.views.l();
            this.f24963s = lVar;
            lVar.c(this, "");
            this.f24963s.f(false);
            this.f24963s.g(false);
        }
        this.f24963s.i();
        this.f24963s.h("0.00%");
        this.f24933d.setCutFromTime(this.f24965t, this.f24966u);
        this.f24933d.setVideoGenerateListener(this);
        LogUtils.i("zune", "开始输出视频");
        this.f24933d.setVideoBitrate(LocalCache.TIME_HOUR);
        if (this.f24931c == -1) {
            this.f24933d.generateVideo(3, this.f24961r);
        } else {
            this.f24933d.generateVideo(3, this.f24961r);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b2(TXVideoEditConstants.TXGenerateResult tXGenerateResult, String str) {
        Intent intent = new Intent(getApplicationContext(), PushVideoActivity.class);
        intent.putExtra(TCConstants.VIDEO_EDITER_PATH, this.f24961r);
        intent.putExtra("from", this.J4);
        intent.putExtra("titleName", this.f24955o);
        intent.putExtra("typeId", this.f24947k);
        intent.putExtra("topic_id", this.f24949l);
        intent.putExtra("topicName", this.f24948k5);
        intent.putExtra("musicId", this.f24951m);
        intent.putExtra("musicName", this.f24953n);
        intent.putExtra("tyPeName", this.f24957p);
        intent.putExtra(ShareConstants.FEED_SOURCE_PARAM, this.f24938f5);
        intent.putExtra("width", this.f24945j.width);
        intent.putExtra("height", this.f24945j.height);
        if (str != null) {
            intent.putExtra(TCConstants.VIDEO_RECORD_COVERPATH, str);
        }
        intent.putExtra("type", 4);
        intent.putExtra("result", tXGenerateResult.retCode);
        intent.putExtra(TCConstants.VIDEO_RECORD_DESCMSG, tXGenerateResult.descMsg);
        intent.putExtra(TCConstants.VIDEO_RECORD_VIDEPATH, this.f24961r);
        intent.putExtra("duration", this.f24966u - this.f24965t);
        intent.putExtra(ShareConstants.FEED_SOURCE_PARAM, this.f24938f5);
        startActivity(intent);
    }

    private void c2() {
        this.f24933d.setVideoProcessListener(this);
        this.f24950l5 = 10;
        TXVideoEditConstants.TXThumbnail tXThumbnail = new TXVideoEditConstants.TXThumbnail();
        tXThumbnail.count = this.f24950l5;
        tXThumbnail.width = 50;
        tXThumbnail.height = 100;
        this.f24933d.setThumbnail(tXThumbnail);
        this.f24933d.setThumbnailListener(this.f24952m5);
        this.f24933d.processVideo();
    }

    private void e2(int i9, String str) {
        Toast toast = this.f24964s5;
        if (toast != null) {
            toast.cancel();
        }
        View inflate = getLayoutInflater().inflate(R.layout.video_toast_bg, (ViewGroup) null);
        Toast toast2 = new Toast(this);
        this.f24964s5 = toast2;
        toast2.setView(inflate);
        TextView textView = (TextView) inflate.findViewById(R.id.show_text);
        TextView textView2 = (TextView) inflate.findViewById(R.id.show_unm);
        if (i9 == 0) {
            textView.setText(" ");
        } else {
            textView.setText("F ");
        }
        textView2.setText(str);
        this.f24964s5.setGravity(49, 0, 200);
        this.f24964s5.setDuration(0);
        this.f24964s5.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r1() {
        if (this.f24935e) {
            return;
        }
        TCVideoEditerWrapper.getInstance().clear();
        TXVideoEditer tXVideoEditer = this.f24933d;
        if (tXVideoEditer != null) {
            tXVideoEditer.cancel();
            this.f24933d.release();
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x1(int i9) {
        if (i9 == -1) {
            BeautyItemCache last = BeautyItemCacheManager.getLast(6);
            last.setLastFilter(null);
            last.setLastFilterStrength(0.0f);
            BeautyItemCacheManager.saveLast(6, last);
            return;
        }
        List<FilterItem> list = this.f24926a1;
        if (list == null || i9 >= list.size() - 1) {
            return;
        }
        FilterItem filterItem = this.f24926a1.get(i9);
        File file = new File(BeautyItemCacheManager.getFilterPath(filterItem));
        if (file.exists()) {
            Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
            this.f24927a2 = decodeFile;
            this.f24933d.setFilter(decodeFile);
        }
        BeautyItemCache last2 = BeautyItemCacheManager.getLast(6);
        last2.setLastFilter(file.getAbsolutePath());
        last2.setLastFilterStrength(filterItem.getDefaultValue());
        BeautyItemCacheManager.saveLast(6, last2);
    }

    public com.guochao.faceshow.views.s D1() {
        return this.B3;
    }

    public void P1() {
        int i9 = this.f24943i;
        if (i9 == 2 || i9 == 1) {
            this.f24933d.pausePlay();
            this.f24943i = 3;
        }
    }

    public void Q1(long j10) {
        P1();
        this.f24933d.previewAtTime(j10);
        this.N4 = j10;
        this.f24943i = 6;
    }

    public void S1() {
        a2(this.f24965t, this.f24966u);
    }

    public void U1(boolean z10) {
        this.f24962r5 = Boolean.valueOf(z10);
    }

    public void a2(long j10, long j11) {
        try {
            this.f24933d.startPlayFromTime(j10, j11);
            this.f24943i = 1;
        } catch (Exception e10) {
            e10.getStackTrace();
        }
    }

    public void d2() {
        int i9 = this.f24943i;
        if (i9 == 2 || i9 == 1 || i9 == 4 || i9 == 3) {
            this.f24933d.stopPlay();
            this.f24943i = 4;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_video_edit;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        TXVideoEditer tXVideoEditer;
        super.onActivityResult(i9, i10, intent);
        if (i9 == 1) {
            H1();
        }
        if (intent != null && i9 == 1000) {
            this.f24934d5 = null;
            this.f24936e5 = null;
            String stringExtra = intent.getStringExtra("music_url");
            String stringExtra2 = intent.getStringExtra("musicPath");
            if (TextUtils.isEmpty(stringExtra) && TextUtils.isEmpty(stringExtra2) && (tXVideoEditer = this.f24933d) != null) {
                tXVideoEditer.setBGM(null);
                return;
            }
            String stringExtra3 = intent.getStringExtra("musicImg");
            this.M4 = stringExtra3;
            if (!TextUtils.isEmpty(stringExtra3)) {
                hc.a.q(this.M4, this.D, R.mipmap.dog, this);
            } else {
                hc.a.q(SpUtils.getStr(this, Contants.USER_HEADIMG), this.D, R.mipmap.default_head, this);
            }
            if (!TextUtils.isEmpty(stringExtra)) {
                this.L = stringExtra;
                this.f24951m = intent.getStringExtra("musicId");
                this.E.setEnabled(true);
            }
            if (!TextUtils.isEmpty(stringExtra2)) {
                this.L = stringExtra2;
                this.f24951m = intent.getStringExtra("musicId");
                this.E.setEnabled(true);
            }
            this.W4.setVisibility(0);
            MediaPlayer mediaPlayer = new MediaPlayer();
            try {
                mediaPlayer.setDataSource(this.L);
                mediaPlayer.prepare();
                this.M = mediaPlayer.getDuration();
                mediaPlayer.release();
                this.f24933d.setBGMLoop(true);
                this.f24933d.setBGMVolume(0.8f);
                if (this.X4 == 1) {
                    this.f24933d.setVideoVolume(0.0f);
                } else {
                    this.f24933d.setVideoVolume(0.8f);
                }
                this.f24928a5 = 0;
                int i11 = this.M;
                this.f24930b5 = i11;
                this.f24932c5 = i11;
                this.f24933d.setBGMStartTime(0L, i11);
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            if (TextUtils.isEmpty(this.L)) {
                this.f24933d.setBGM(null);
            } else if (this.f24933d.setBGM(this.L) != 0) {
                com.guochao.faceshow.views.h.e(this, "视频编辑失败", "背景音仅支持MP3格式或M4A音频");
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAddPaster(y7.c cVar) {
        ResourceListItemBean resourceListItemBean = cVar.f60129a;
        if (resourceListItemBean != null && cVar.f60130b) {
            this.f24946j5.add(resourceListItemBean);
        } else if (resourceListItemBean != null) {
            this.f24946j5.remove(resourceListItemBean);
        }
        if (this.f24946j5.size() > 0) {
            this.F.setBackgroundResource(R.mipmap.luping_biaoqing);
        } else {
            this.F.setBackgroundResource(R.mipmap.luping_biaoqing);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_beauty /* 2131362177 */:
                if (this.F4) {
                    return;
                }
                if (this.K4 == 1) {
                    this.P4 = TCVideoEditerWrapper.getInstance().getAllThumbnails();
                    Y1();
                    this.K4++;
                }
                X1();
                return;
            case R.id.btn_confirm /* 2131362182 */:
                if (this.f24945j == null) {
                    return;
                }
                int rightIndex = this.C4.getRightIndex() - this.C4.getLeftIndex();
                if (BaseConfig.isChinese()) {
                    long j10 = this.f24945j.duration;
                    long j11 = rightIndex;
                    if (((float) (j10 * j11)) / 100.0f < 3000.0f || ((float) (j10 * j11)) / 100.0f > 16000.0f) {
                        showToast(R.string.video_upload_self_video_sub_toast);
                        return;
                    }
                }
                if (this.f24963s.e()) {
                    return;
                }
                Z1();
                return;
            case R.id.btn_delete_last_part /* 2131362184 */:
                int i9 = this.V1;
                if (i9 != -1 && i9 != 0) {
                    this.H.setBackgroundResource(R.mipmap.ugc_record_beautiful_girl_show);
                } else {
                    this.H.setBackgroundResource(R.mipmap.ugc_record_beautiful_girl);
                }
                if (this.F4) {
                    F1();
                }
                LinearLayout linearLayout = this.S4;
                if (linearLayout != null && linearLayout.getVisibility() == 0) {
                    this.S4.setVisibility(4);
                }
                Tool.dismissPopWindow();
                View inflate = View.inflate(this, R.layout.popbeauty_layout, null);
                RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.horizontalListView);
                ((SeekBar) inflate.findViewById(R.id.ThirdGradle_seekbar)).setVisibility(4);
                ((TextView) inflate.findViewById(R.id.TextSeekBarValue)).setVisibility(4);
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
                linearLayoutManager.setOrientation(0);
                recyclerView.setLayoutManager(linearLayoutManager);
                g gVar = new g(this, R.layout.item_beauty);
                recyclerView.setAdapter(gVar);
                if (this.f24926a1 == null) {
                    this.f24926a1 = Tool.getLJList();
                    this.L4 = Tool.getljListName(this);
                }
                gVar.resetData(this.f24926a1);
                Tool.creatPopWindowBottomAnim(inflate, this.I, -1, -2).setOnDismissListener(new h());
                V1(1);
                return;
            case R.id.btn_music_pannel /* 2131362191 */:
                if (this.F4) {
                    F1();
                }
                LinearLayout linearLayout2 = this.S4;
                if (linearLayout2 != null && linearLayout2.getVisibility() == 0) {
                    this.S4.setVisibility(4);
                }
                d2();
                Intent intent = new Intent(this, MusicActivity.class);
                intent.putExtra("type", 33);
                startActivityForResult(intent, 1000);
                return;
            case R.id.btn_switch_camera /* 2131362204 */:
                if (this.F4) {
                    F1();
                }
                LinearLayout linearLayout3 = this.S4;
                if (linearLayout3 != null && linearLayout3.getVisibility() == 0) {
                    this.S4.setVisibility(4);
                }
                if (TextUtils.isEmpty(this.L)) {
                    return;
                }
                PopupWindow popupWindow = this.f24934d5;
                if (popupWindow == null) {
                    View inflate2 = View.inflate(this, R.layout.pop_bgm_layout, null);
                    TextView textView = (TextView) inflate2.findViewById(R.id.sure);
                    this.N = textView;
                    textView.setOnClickListener(new b());
                    this.O = (RangeSlider) inflate2.findViewById(R.id.bgm_range_slider);
                    TextView textView2 = (TextView) inflate2.findViewById(R.id.start_end_time);
                    textView2.setText(String.format(getString(R.string.time_left_right), TCUtils.duration(this.f24928a5), TCUtils.duration(this.f24930b5)));
                    this.O.setRangeChangeListener(new c(textView2));
                    RelativeLayout relativeLayout = (RelativeLayout) inflate2.findViewById(R.id.jianqie_bgm);
                    this.P = relativeLayout;
                    relativeLayout.setOnClickListener(this);
                    this.O.n();
                    this.P.setVisibility(0);
                    this.f24934d5 = t1(inflate2, this.I, -1, -2);
                    return;
                } else if (popupWindow == null || popupWindow.isShowing()) {
                    return;
                } else {
                    this.f24934d5.showAtLocation(this.I, 83, 0, 0);
                    return;
                }
            case R.id.btn_torch /* 2131362205 */:
                if (this.f24946j5.size() > 0) {
                    this.F.setBackgroundResource(R.mipmap.luping_biaoqing);
                } else {
                    this.F.setBackgroundResource(R.mipmap.luping_biaoqing);
                }
                if (this.F4) {
                    F1();
                }
                d2();
                Intent intent2 = new Intent(this, TCPasterActivity.class);
                MemoryCache.getInstance().put("ResourceListItemBean", this.f24946j5);
                startActivityForResult(intent2, 1);
                return;
            case R.id.sure /* 2131364592 */:
                Tool.dismissPopWindow();
                return;
            case R.id.tcp_ok /* 2131364670 */:
                this.S4.setVisibility(8);
                if (this.f24943i == 2) {
                    return;
                }
                this.f24943i = 3;
                T1();
                return;
            case R.id.tv_left_back /* 2131365038 */:
                finish();
                return;
            case R.id.voice_set /* 2131365416 */:
                if (this.F4) {
                    F1();
                }
                LinearLayout linearLayout4 = this.S4;
                if (linearLayout4 != null && linearLayout4.getVisibility() == 0) {
                    this.S4.setVisibility(4);
                }
                PopupWindow popupWindow2 = this.f24936e5;
                if (popupWindow2 == null) {
                    View inflate3 = View.inflate(this, R.layout.pop_music_big_small, null);
                    this.Q = (TCReversalSeekBar) inflate3.findViewById(R.id.bgm_sb_voice);
                    this.V4 = (TCReversalSeekBar) inflate3.findViewById(R.id.music_voice);
                    if (this.X4 == 1) {
                        this.Q.setProgress(1.0f);
                        this.Q.setEnabled(false);
                        this.V4.setProgress(0.2f);
                        this.V4.setEnabled(true);
                    } else {
                        this.Q.setProgress(0.2f);
                        this.Q.setEnabled(true);
                        if (TextUtils.isEmpty(this.L)) {
                            this.V4.setProgress(1.0f);
                            this.V4.setEnabled(false);
                        } else {
                            this.V4.setProgress(0.2f);
                            this.V4.setEnabled(true);
                        }
                    }
                    this.Q.setOnSeekProgressListener(new d());
                    this.V4.setOnSeekProgressListener(new e());
                    PopupWindow t12 = t1(inflate3, this.I, -1, -2);
                    this.f24936e5 = t12;
                    t12.setOnDismissListener(new f());
                } else if (popupWindow2 != null && !popupWindow2.isShowing()) {
                    this.f24936e5.showAtLocation(this.I, 83, 0, 0);
                }
                V1(3);
                return;
            case R.id.yes_sure /* 2131365510 */:
                if (this.F4) {
                    F1();
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(2097152);
        getWindow().addFlags(128);
        ((ViewGroup.MarginLayoutParams) findViewById(R.id.title_lay).getLayoutParams()).topMargin += StatusBarHelper.getStatusbarHeight(this);
        if (this.f24963s == null) {
            com.guochao.faceshow.views.l lVar = new com.guochao.faceshow.views.l();
            this.f24963s = lVar;
            lVar.c(this, "");
            this.f24963s.f(false);
            this.f24963s.g(false);
        }
        this.f24963s.i();
        TCVideoEditerWrapper.getInstance().clear();
        ab.b.d().b();
        EventBus.getDefault().register(this);
        this.f24925a = (Uri) getIntent().getParcelableExtra(TCConstants.VIDEO_EDITER_URI);
        this.f24929b = getIntent().getStringExtra(TCConstants.VIDEO_RECORD_COVERPATH);
        this.f24947k = getIntent().getStringExtra("type_id");
        this.f24949l = getIntent().getStringExtra("topic_id");
        this.f24948k5 = getIntent().getStringExtra("topicName");
        this.f24951m = getIntent().getStringExtra("musicId");
        this.f24953n = getIntent().getStringExtra("musicName");
        this.f24955o = getIntent().getStringExtra("titleName");
        this.f24957p = getIntent().getStringExtra("tyPeName");
        this.I4 = getIntent().getIntExtra("choose", 0);
        this.J4 = getIntent().getIntExtra("from", 0);
        this.M4 = getIntent().getStringExtra("musicImg");
        this.X4 = getIntent().getIntExtra("isHaveBGM", 0);
        this.f24938f5 = getIntent().getStringExtra(ShareConstants.FEED_SOURCE_PARAM);
        this.f24931c = getIntent().getIntExtra("resolution", -1);
        this.f24933d = new TXVideoEditer(this);
        if (this.f24925a == null) {
            finish();
        } else if (Build.VERSION.SDK_INT >= 29 && this.I4 == 1) {
            new Thread(new n()).start();
        } else {
            new Thread(new o()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        FileUtil.deleteFile(this.f24929b);
        this.f24946j5.clear();
        if (this.f24956o5 != null) {
            ((TelephonyManager) getApplicationContext().getSystemService("phone")).listen(this.f24956o5, 0);
        }
        if (this.f24933d != null) {
            d2();
            this.f24933d.setThumbnailListener(null);
            this.f24933d.setVideoProcessListener(null);
            this.f24933d.cancel();
            this.f24933d.setVideoGenerateListener(null);
            this.f24933d.release();
            this.f24933d = null;
        }
        TCVideoEditerWrapper tCVideoEditerWrapper = this.f24967v;
        if (tCVideoEditerWrapper != null) {
            tCVideoEditerWrapper.removeTXVideoPreviewListenerWrapper(this.B);
            this.f24967v.cleaThumbnails();
            this.f24967v.clear();
            this.f24967v = null;
        }
        System.gc();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventBus(String str) {
        if (str.equals("upLoadOver")) {
            finish();
        }
    }

    @Override // com.tencent.ugc.TXVideoEditer.TXVideoGenerateListener
    public void onGenerateComplete(TXVideoEditConstants.TXGenerateResult tXGenerateResult) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("预处理完成 = ");
        sb2.append(tXGenerateResult == null ? "null" : tXGenerateResult.descMsg);
        LogUtils.i("zune", sb2.toString());
        File file = new File(this.f24961r);
        LogUtils.i("zune", "文件存在 = " + file.exists() + ", 文件大小 = " + file.length());
        runOnUiThread(new j(tXGenerateResult));
    }

    @Override // com.tencent.ugc.TXVideoEditer.TXVideoGenerateListener
    public void onGenerateProgress(float f10) {
        runOnUiThread(new i(f10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        P1();
    }

    @Override // com.tencent.ugc.TXVideoEditer.TXVideoProcessListener
    public void onProcessComplete(TXVideoEditConstants.TXGenerateResult tXGenerateResult) {
        com.guochao.faceshow.views.l lVar = this.f24963s;
        if (lVar != null) {
            lVar.d();
        }
        if (isFinishing()) {
            return;
        }
        runOnUiThread(new s(tXGenerateResult));
    }

    @Override // com.tencent.ugc.TXVideoEditer.TXVideoProcessListener
    public void onProcessProgress(float f10) {
        LogUtils.i("Process", "progress is " + f10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        S1();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f24942h5 = (int) motionEvent.getX();
            this.f24944i5 = (int) motionEvent.getY();
        } else if (action == 1) {
            int x10 = (int) motionEvent.getX();
            motionEvent.getY();
            int i9 = this.f24942h5;
            if (x10 - i9 > 200) {
                int i10 = this.f24970y;
                if (i10 > 0) {
                    this.f24970y = i10 - 1;
                } else {
                    this.f24970y = 9;
                }
                x1(this.f24970y);
                int i11 = this.f24970y;
                this.V1 = i11;
                W1(i11);
                return true;
            } else if (i9 - x10 > 200) {
                int i12 = this.f24970y;
                if (i12 < 9) {
                    this.f24970y = i12 + 1;
                } else {
                    this.f24970y = 0;
                }
                x1(this.f24970y);
                int i13 = this.f24970y;
                this.V1 = i13;
                W1(i13);
                return true;
            }
        }
        return true;
    }

    public PopupWindow t1(View view, View view2, int i9, int i10) {
        PopupWindow popupWindow = new PopupWindow(view, i9, i10);
        ColorDrawable colorDrawable = new ColorDrawable(14474460);
        popupWindow.setFocusable(true);
        popupWindow.setTouchable(true);
        popupWindow.setSoftInputMode(1);
        popupWindow.setSoftInputMode(16);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(colorDrawable);
        popupWindow.setAnimationStyle(R.style.mypopwindow_anim_style);
        popupWindow.showAtLocation(view2, 83, 0, 0);
        return popupWindow;
    }
}
