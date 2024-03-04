package com.guochao.faceshow.aaspring.modulars.customerservice.helper;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultCaller;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FeedbackFileInfo;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.beans.UploadAvatarResult;
import com.guochao.faceshow.aaspring.beans.UploadedVideoInfo;
import com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackImagePreviewActivity;
import com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PhotoActivity;
import com.guochao.faceshow.aaspring.utils.AsyncUtils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.LengthFilter;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.utils.ZipUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.utils.TimeUtil;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class UploadFeedImageHelper {

    /* renamed from: a  reason: collision with root package name */
    List<LocalImageOrVideoBean> f17480a;

    /* renamed from: b  reason: collision with root package name */
    FragmentActivity f17481b;

    /* renamed from: c  reason: collision with root package name */
    ActivityResultLauncher<Intent> f17482c;

    /* renamed from: d  reason: collision with root package name */
    p f17483d;

    /* renamed from: e  reason: collision with root package name */
    FeedbackImageViewModel f17484e;

    /* renamed from: f  reason: collision with root package name */
    MutableLiveData<List<LocalImageOrVideoBean>> f17485f;

    /* renamed from: g  reason: collision with root package name */
    String f17486g;

    /* renamed from: h  reason: collision with root package name */
    String f17487h;

    /* renamed from: i  reason: collision with root package name */
    List<FeedbackFileInfo> f17488i;

    /* renamed from: j  reason: collision with root package name */
    View.OnClickListener f17489j;

    /* renamed from: k  reason: collision with root package name */
    q f17490k;
    @BindView
    CheckBox mCheckBox;
    @BindView
    EditText mEditText;
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    TextView mTextViewCount;
    @BindView
    TextView mTextViewWordLimit;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17491a;

        a(String str) {
            this.f17491a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            UploadFeedImageHelper.this.i();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (str == null) {
                onFailure(new g7.a<>());
                return;
            }
            new File(this.f17491a).delete();
            UploadFeedImageHelper uploadFeedImageHelper = UploadFeedImageHelper.this;
            uploadFeedImageHelper.f17487h = str;
            uploadFeedImageHelper.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            List<LocalImageOrVideoBean> list = UploadFeedImageHelper.this.f17480a;
            for (int i9 = 0; i9 < list.size(); i9++) {
                String str = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + i9 + "_" + list.get(i9).getFileName();
                FileUtil.copyUriToFile(BaseApplication.getInstance(), list.get(i9).getUri(), new File(str));
                list.get(i9).setPath(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UploadFeedImageHelper.this.g(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<UploadAvatarResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LocalImageOrVideoBean f17495a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f17496b;

        d(LocalImageOrVideoBean localImageOrVideoBean, int i9) {
            this.f17495a = localImageOrVideoBean;
            this.f17496b = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UploadAvatarResult uploadAvatarResult, @NonNull FaceCastBaseResponse<UploadAvatarResult> faceCastBaseResponse) {
            if (uploadAvatarResult == null) {
                onFailure(new g7.a<>());
                return;
            }
            String bigImgUrl = uploadAvatarResult.getBigImgUrl();
            String smallImgUrl = uploadAvatarResult.getSmallImgUrl();
            FeedbackFileInfo feedbackFileInfo = new FeedbackFileInfo();
            feedbackFileInfo.setUrl(bigImgUrl);
            feedbackFileInfo.setSmallUrl(smallImgUrl);
            feedbackFileInfo.setFileType(2);
            feedbackFileInfo.setWidth(this.f17495a.getWidth());
            feedbackFileInfo.setHeight(this.f17495a.getHeight());
            UploadFeedImageHelper.this.f17488i.add(feedbackFileInfo);
            UploadFeedImageHelper.this.k(this.f17496b + 1, false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UploadAvatarResult> aVar) {
            UploadFeedImageHelper.this.f17490k.onFail(aVar.a(), aVar.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.d<UploadedVideoInfo> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f17498a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LocalImageOrVideoBean f17499b;

        e(int i9, LocalImageOrVideoBean localImageOrVideoBean) {
            this.f17498a = i9;
            this.f17499b = localImageOrVideoBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UploadedVideoInfo uploadedVideoInfo, @NonNull FaceCastBaseResponse<UploadedVideoInfo> faceCastBaseResponse) {
            if (uploadedVideoInfo == null) {
                onFailure(new g7.a<>(new RuntimeException(""), -1));
                return;
            }
            FeedbackFileInfo feedbackFileInfo = new FeedbackFileInfo();
            feedbackFileInfo.setUrl(uploadedVideoInfo.getVideoUrl());
            feedbackFileInfo.setSmallUrl(uploadedVideoInfo.getImgUrl());
            feedbackFileInfo.setFileType(1);
            feedbackFileInfo.setWidth(this.f17499b.getWidth());
            feedbackFileInfo.setHeight(this.f17499b.getHeight());
            UploadFeedImageHelper.this.f17488i.add(feedbackFileInfo);
            UploadFeedImageHelper.this.k(this.f17498a + 1, false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UploadedVideoInfo> aVar) {
            UploadFeedImageHelper.this.f17490k.onFail(aVar.a(), aVar.b());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements aa.b<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimpleDateFormat f17501a;

        f(SimpleDateFormat simpleDateFormat) {
            this.f17501a = simpleDateFormat;
        }

        @Override // aa.b
        /* renamed from: a */
        public boolean accept(String str) {
            int i9;
            if (!str.startsWith("imsdk_C_")) {
                i9 = str.startsWith("LiteAV_C_") ? 9 : 9;
                return false;
            }
            i9 = 8;
            try {
                Date parse = this.f17501a.parse(str.substring(i9, i9 + 8));
                Calendar calendar = Calendar.getInstance();
                calendar.set(10, 0);
                calendar.set(12, 0);
                calendar.set(13, 0);
                return calendar.getTimeInMillis() - parse.getTime() <= TimeUtil.WEEK;
            } catch (ParseException e10) {
                e10.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    class g extends ActivityResultContract<Intent, LocalImageOrVideoBean> {
        g() {
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        /* renamed from: a */
        public LocalImageOrVideoBean parseResult(int i9, @Nullable Intent intent) {
            if (intent == null || i9 != -1) {
                return null;
            }
            return (LocalImageOrVideoBean) intent.getParcelableExtra("data");
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(@NonNull Context context, Intent intent) {
            return intent;
        }
    }

    /* loaded from: classes3.dex */
    class h implements ActivityResultCallback<LocalImageOrVideoBean> {
        h() {
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a */
        public void onActivityResult(LocalImageOrVideoBean localImageOrVideoBean) {
            if (localImageOrVideoBean != null) {
                UploadFeedImageHelper.this.f17480a.add(localImageOrVideoBean);
                UploadFeedImageHelper uploadFeedImageHelper = UploadFeedImageHelper.this;
                uploadFeedImageHelper.f17485f.setValue(uploadFeedImageHelper.f17480a);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i implements Observer<List<LocalImageOrVideoBean>> {
        i() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(List<LocalImageOrVideoBean> list) {
            UploadFeedImageHelper.this.f17483d.notifyDataSetChanged();
            UploadFeedImageHelper uploadFeedImageHelper = UploadFeedImageHelper.this;
            UploadFeedImageHelper.j(uploadFeedImageHelper.mTextViewCount, 5, uploadFeedImageHelper.f17480a.size());
        }
    }

    /* loaded from: classes3.dex */
    class j extends RecyclerView.ItemDecoration {
        j() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@NonNull @NotNull Rect rect, @NonNull @NotNull View view, @NonNull @NotNull RecyclerView recyclerView, @NonNull @NotNull RecyclerView.State state) {
            int viewAdapterPosition = ((RecyclerView.LayoutParams) view.getLayoutParams()).getViewAdapterPosition() % 3;
            if (viewAdapterPosition == 0) {
                rect.right = DensityUtil.dp2px(3.0f);
            } else if (viewAdapterPosition != 2) {
                rect.left = DensityUtil.dp2px(1.5f);
                rect.right = DensityUtil.dp2px(1.5f);
            } else {
                rect.left = DensityUtil.dp2px(3.0f);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k extends RecyclerView.ItemDecoration {
        k() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@NonNull @NotNull Rect rect, @NonNull @NotNull View view, @NonNull @NotNull RecyclerView recyclerView, @NonNull @NotNull RecyclerView.State state) {
            int viewAdapterPosition = ((RecyclerView.LayoutParams) view.getLayoutParams()).getViewAdapterPosition() % 4;
            if (viewAdapterPosition == 1 || viewAdapterPosition == 2) {
                rect.right = DensityUtil.dp2px(3.5f);
            } else if (viewAdapterPosition != 3) {
                rect.right = DensityUtil.dp2px(3.5f);
            } else {
                rect.left = DensityUtil.dp2px(3.5f);
            }
            rect.top = DensityUtil.dp2px(6.0f);
            rect.bottom = DensityUtil.dp2px(1.0f);
        }
    }

    /* loaded from: classes3.dex */
    class l implements TextWatcher {
        l() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            UploadFeedImageHelper.j(UploadFeedImageHelper.this.mTextViewWordLimit, 1000, TextViewUtils.length(editable.toString()));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UploadFeedImageHelper.this.f17482c.launch(new Intent(UploadFeedImageHelper.this.f17481b, PhotoActivity.class).putExtra("type", 1).putExtra("isVip", b8.e.g().c().isVip()).putExtra("nogif", true).putExtra("mode", 103));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n extends SimpleObserver<String> {
        n() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onError(Throwable th2) {
            super.onError(th2);
            UploadFeedImageHelper.this.i();
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(String str) {
            super.onNext((n) str);
            UploadFeedImageHelper.this.n(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o implements vh.o<Integer, String> {
        o() {
        }

        @Override // vh.o
        /* renamed from: a */
        public String apply(@NonNull Integer num) throws Exception {
            return UploadFeedImageHelper.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class p extends RecyclerView.Adapter<BaseViewHolder> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f17512a;

            a(int i9) {
                this.f17512a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UploadFeedImageHelper.this.f17480a.remove(this.f17512a);
                UploadFeedImageHelper uploadFeedImageHelper = UploadFeedImageHelper.this;
                uploadFeedImageHelper.f17485f.setValue(uploadFeedImageHelper.f17480a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f17514a;

            b(int i9) {
                this.f17514a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UploadFeedImageHelper.this.f17480a.get(this.f17514a).getFileType() == 2) {
                    UploadFeedImageHelper.this.f17481b.startActivity(new Intent(UploadFeedImageHelper.this.f17481b, FeedbackVideoPreviewActivity.class).putExtra(TCConstants.VIDEO_RECORD_VIDEPATH, UploadFeedImageHelper.this.f17480a.get(this.f17514a).getDisplayUri()));
                } else {
                    UploadFeedImageHelper.this.f17481b.startActivity(new Intent(UploadFeedImageHelper.this.f17481b, FeedbackImagePreviewActivity.class).putExtra("position", this.f17514a).putExtra("key", UploadFeedImageHelper.this.f17486g));
                }
            }
        }

        private p() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (UploadFeedImageHelper.this.f17480a.isEmpty()) {
                return 1;
            }
            if (UploadFeedImageHelper.this.f17480a.size() == 5) {
                return 5;
            }
            return UploadFeedImageHelper.this.f17480a.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i9) {
            if (UploadFeedImageHelper.this.f17480a.isEmpty()) {
                return 1;
            }
            return (UploadFeedImageHelper.this.f17480a.size() >= 5 || i9 < UploadFeedImageHelper.this.f17480a.size()) ? 0 : 1;
        }

        /* synthetic */ p(UploadFeedImageHelper uploadFeedImageHelper, g gVar) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull @NotNull BaseViewHolder baseViewHolder, int i9) {
            if (baseViewHolder.getItemViewType() == 1) {
                return;
            }
            hc.a.g((ImageView) baseViewHolder.getView(R.id.thumb), UploadFeedImageHelper.this.f17480a.get(i9).getDisplayUri());
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.video);
            if (UploadFeedImageHelper.this.f17480a.get(i9).getFileType() == 2) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
            ((ImageView) baseViewHolder.getView(R.id.btnRemove)).setOnClickListener(new a(i9));
            baseViewHolder.itemView.setOnClickListener(new b(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        @NotNull
        public BaseViewHolder onCreateViewHolder(@NonNull @NotNull ViewGroup viewGroup, int i9) {
            if (i9 == 0) {
                return new BaseViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.grid_item_feedback_image, viewGroup, false));
            }
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.grid_item_feedback_image_add, viewGroup, false);
            inflate.setOnClickListener(UploadFeedImageHelper.this.f17489j);
            return new BaseViewHolder(inflate);
        }
    }

    /* loaded from: classes3.dex */
    public interface q {
        void a(List<FeedbackFileInfo> list, String str);

        void onFail(int i9, String str);
    }

    public UploadFeedImageHelper(FragmentActivity fragmentActivity, ViewGroup viewGroup, ActivityResultCaller activityResultCaller, boolean z10) {
        this.f17480a = new ArrayList();
        this.f17488i = new ArrayList();
        this.f17489j = new m();
        this.f17481b = fragmentActivity;
        ButterKnife.c(this, viewGroup);
        ViewModelProvider a10 = d7.e.a();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("feedback");
        sb2.append(z10 ? "_dialog" : "");
        String sb3 = sb2.toString();
        this.f17486g = sb3;
        FeedbackImageViewModel feedbackImageViewModel = (FeedbackImageViewModel) a10.get(sb3, FeedbackImageViewModel.class);
        this.f17484e = feedbackImageViewModel;
        this.f17485f = feedbackImageViewModel.b();
        RecyclerView recyclerView = this.mRecyclerView;
        p pVar = new p(this, null);
        this.f17483d = pVar;
        recyclerView.setAdapter(pVar);
        this.f17482c = activityResultCaller.registerForActivityResult(new g(), new h());
        this.f17485f.observe(this.f17481b, new i());
        if (z10) {
            this.mRecyclerView.setLayoutManager(new GridLayoutManager(this.f17481b, 5));
            this.mRecyclerView.addItemDecoration(new j());
        } else {
            this.mRecyclerView.setLayoutManager(new GridLayoutManager(this.f17481b, 4));
            this.mRecyclerView.addItemDecoration(new k());
        }
        this.mEditText.setFilters(new InputFilter[]{new LengthFilter(1000)});
        this.mEditText.addTextChangedListener(new l());
        j(this.mTextViewWordLimit, 1000, 0);
    }

    private void e() {
        AsyncUtils.run(new b(), new c());
    }

    public static String f() {
        new File(BaseApplication.getInstance().getExternalCacheDir().getAbsolutePath() + "/temp/").mkdirs();
        File externalCacheDir = BaseApplication.getInstance().getExternalCacheDir();
        File file = new File(externalCacheDir, System.currentTimeMillis() + ".zip");
        File file2 = new File(BaseApplication.getInstance().getExternalFilesDir("log"), "/tencent/");
        try {
            ZipUtils.ZipFolder(file2.getAbsolutePath(), file.getAbsolutePath(), new f(new SimpleDateFormat("yyyyMMdd")));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return file.getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i9) {
        LocalImageOrVideoBean localImageOrVideoBean = this.f17480a.get(i9);
        if (localImageOrVideoBean.getFileType() == 2) {
            o(i9, localImageOrVideoBean);
        } else {
            m(i9, localImageOrVideoBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        List<LocalImageOrVideoBean> list = this.f17480a;
        if (list != null && !list.isEmpty()) {
            k(0, true);
        } else {
            this.f17490k.a(new ArrayList(), this.f17487h);
        }
    }

    public static void j(TextView textView, int i9, int i10) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        SpannableString spannableString = new SpannableString(String.valueOf(i10));
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#6365FF")), 0, spannableString.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString);
        SpannableString spannableString2 = new SpannableString(String.format("/%s", Integer.valueOf(i9)));
        spannableString2.setSpan(new ForegroundColorSpan(Color.parseColor("#9497A2")), 0, spannableString2.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString2);
        textView.setText(spannableStringBuilder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i9, boolean z10) {
        if (i9 >= this.f17480a.size()) {
            this.f17490k.a(this.f17488i, this.f17487h);
        } else if (z10 && Build.VERSION.SDK_INT >= 29) {
            e();
        } else {
            g(i9);
        }
    }

    private void m(int i9, LocalImageOrVideoBean localImageOrVideoBean) {
        new PostRequest(f7.b.f39645j0).O(this.f17481b).P(this.f17481b).R("imgFile", new File(localImageOrVideoBean.getPath())).B(Contants.CURRENT_COUNTRY_FLAG, 2).M(new d(localImageOrVideoBean, i9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(String str) {
        new PostRequest(f7.b.f39645j0).O(this.f17481b).P(this.f17481b).R(ShareInternalUtility.STAGING_PARAM, new File(str)).B(Contants.CURRENT_COUNTRY_FLAG, 6).M(new a(str));
    }

    private void o(int i9, LocalImageOrVideoBean localImageOrVideoBean) {
        new PostRequest(f7.b.f39645j0).O(this.f17481b).P(this.f17481b).R("videoFile", new File(localImageOrVideoBean.getPath())).R("imgFile", new File(localImageOrVideoBean.getThumbnailPath())).B(Contants.CURRENT_COUNTRY_FLAG, 1).M(new e(i9, localImageOrVideoBean));
    }

    public String h() {
        return this.mEditText.getText().toString();
    }

    public void l(q qVar) {
        this.f17490k = qVar;
        this.f17488i.clear();
        if (this.mCheckBox.isChecked()) {
            io.reactivex.k.just(1).map(new o()).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new n());
        } else {
            i();
        }
    }

    public UploadFeedImageHelper(FragmentActivity fragmentActivity, ViewGroup viewGroup) {
        this(fragmentActivity, viewGroup, fragmentActivity, false);
    }
}
