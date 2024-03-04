package com.guochao.faceshow.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.callback.d;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.UploadedVideoInfo;
import com.guochao.faceshow.aaspring.beans.UploadedVideoResult;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.Tools;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class AppBackgroundService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private String f26225a;

    /* renamed from: b  reason: collision with root package name */
    private String f26226b;

    /* renamed from: c  reason: collision with root package name */
    private String f26227c;

    /* renamed from: d  reason: collision with root package name */
    private String f26228d;

    /* renamed from: e  reason: collision with root package name */
    private String f26229e;

    /* renamed from: f  reason: collision with root package name */
    private String f26230f;

    /* renamed from: g  reason: collision with root package name */
    private String f26231g;

    /* renamed from: h  reason: collision with root package name */
    private String f26232h;

    /* renamed from: i  reason: collision with root package name */
    private String f26233i;

    /* renamed from: j  reason: collision with root package name */
    private int f26234j;

    /* renamed from: k  reason: collision with root package name */
    private int f26235k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f26236l;

    /* renamed from: n  reason: collision with root package name */
    private String f26238n;

    /* renamed from: p  reason: collision with root package name */
    private String f26240p;

    /* renamed from: q  reason: collision with root package name */
    private String f26241q;

    /* renamed from: m  reason: collision with root package name */
    private List<String> f26237m = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    private String f26239o = PushUtils.CHAT_PUSH_TYPE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends d<UploadedVideoInfo> {

        /* renamed from: a  reason: collision with root package name */
        long f26242a = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.service.AppBackgroundService$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class C0263a implements GCRequestJava.c<Object> {
            C0263a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
            public void a(Response<Object> response) {
                LogUtils.i("AppBackgroundService", "short_video :上传失败");
                Intent intent = new Intent(LOCAL_EVENT_MSG.SHORT_VIDEO_UPLOAD_STATUS);
                intent.putExtra("type", 2);
                LocalBroadcastManager.getInstance(AppBackgroundService.this).sendBroadcast(intent);
                if (response.getCode() == 1010) {
                    AppBackgroundService appBackgroundService = AppBackgroundService.this;
                    ToastUtils.showToast(appBackgroundService, appBackgroundService.getString(R.string.minganci_ugc));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class b implements GCRequestJava.d<UploadedVideoResult> {
            b() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
            public void a(@NonNull Response<UploadedVideoResult> response) {
                UploadedVideoResult data = response.getData();
                if (data == null) {
                    a.this.onFailure(new g7.a<>(new RuntimeException(""), -1));
                    return;
                }
                String shortUrl = data.getShortUrl();
                String prospectus = data.getProspectus();
                String img = data.getImg();
                int isLottery = data.getIsLottery();
                String lotteryUrl = data.getLotteryUrl();
                Intent intent = new Intent(LOCAL_EVENT_MSG.SHORT_VIDEO_UPLOAD_STATUS);
                intent.putExtra("type", 1);
                intent.putExtra("shortUrl", shortUrl);
                intent.putExtra("prospectus", prospectus);
                intent.putExtra("img", img);
                intent.putExtra("result", shortUrl);
                intent.putExtra("isLottery", isLottery);
                intent.putExtra("lotteryUrl", lotteryUrl);
                LocalBroadcastManager.getInstance(AppBackgroundService.this).sendBroadcast(intent);
            }
        }

        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UploadedVideoInfo uploadedVideoInfo, @NonNull FaceCastBaseResponse<UploadedVideoInfo> faceCastBaseResponse) {
            if (uploadedVideoInfo == null) {
                onFailure(new g7.a<>(new RuntimeException(""), -1));
                return;
            }
            Tools.deleteDirWihtFile(new File(FilePathProvider.getPrivateRootPathV2(TypedValues.AttributesType.S_FRAME)));
            uploadedVideoInfo.setTypeId(AppBackgroundService.this.f26226b);
            uploadedVideoInfo.setCountry(SpUtils.getStr(AppBackgroundService.this, Contants.CURRENT_COUNTRY_CODING));
            uploadedVideoInfo.setMusicId(AppBackgroundService.this.f26228d);
            uploadedVideoInfo.setMusicName(AppBackgroundService.this.f26233i);
            uploadedVideoInfo.setIsSource(AppBackgroundService.this.f26232h);
            uploadedVideoInfo.setIsPrivate(AppBackgroundService.this.f26230f);
            uploadedVideoInfo.setAutoSyncVideoToDynamic(AppBackgroundService.this.f26236l ? "0" : "1");
            uploadedVideoInfo.setContent(AppBackgroundService.this.f26225a);
            new GCRequestJava("api/token/social/video/create").putBody("musicUrl", uploadedVideoInfo.getMusicUrl()).putBody("topicId", "").putBody("musicId", AppBackgroundService.this.f26228d).putBody("musicName", AppBackgroundService.this.f26233i).putBody("url", uploadedVideoInfo.getVideoUrl()).putBody("img", uploadedVideoInfo.getImgUrl()).putBody("isPrivate", AppBackgroundService.this.f26230f).putBody("isSource", AppBackgroundService.this.f26232h).putBody("width", Integer.valueOf(uploadedVideoInfo.getWidth())).putBody("height", Integer.valueOf(uploadedVideoInfo.getHeight())).putBody("autoSyncVideoToDynamic", AppBackgroundService.this.f26236l ? "0" : "1").putBody("content", AppBackgroundService.this.f26225a).putBody("prospectus", AppBackgroundService.this.f26229e).j(new b()).d(new C0263a()).request();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UploadedVideoInfo> aVar) {
            LogUtils.i("AppBackgroundService", "short_video :上传失败");
            Intent intent = new Intent(LOCAL_EVENT_MSG.SHORT_VIDEO_UPLOAD_STATUS);
            intent.putExtra("type", 2);
            LocalBroadcastManager.getInstance(AppBackgroundService.this).sendBroadcast(intent);
            if (aVar.a() == 1010) {
                AppBackgroundService appBackgroundService = AppBackgroundService.this;
                ToastUtils.showToast(appBackgroundService, appBackgroundService.getString(R.string.minganci_ugc));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
            LogUtils.i("HttpClient", "onProgress: " + j10);
            if (j10 > this.f26242a) {
                this.f26242a = j10;
            }
            Intent intent = new Intent(LOCAL_EVENT_MSG.SHORT_VIDEO_UPLOAD_STATUS);
            intent.putExtra("type", 3);
            intent.putExtra("total", j11);
            intent.putExtra("imgPath", AppBackgroundService.this.f26227c);
            intent.putExtra("current", this.f26242a);
            LocalBroadcastManager.getInstance(AppBackgroundService.this).sendBroadcast(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends d<List<String>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<Object> aVar) {
                LogUtils.i("AppBackgroundService", "REPORT_PIC_TEXT_UPLOAD_STATUS :上传失败");
                Intent intent = new Intent(LOCAL_EVENT_MSG.REPORT_PIC_TEXT_UPLOAD_STATUS);
                intent.putExtra("type", 2);
                LocalBroadcastManager.getInstance(AppBackgroundService.this).sendBroadcast(intent);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
                Intent intent = new Intent(LOCAL_EVENT_MSG.REPORT_PIC_TEXT_UPLOAD_STATUS);
                intent.putExtra("type", 1);
                intent.putExtra("videoUrl", AppBackgroundService.this.f26227c);
                LocalBroadcastManager.getInstance(AppBackgroundService.this).sendBroadcast(intent);
            }
        }

        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<String>> aVar) {
            LogUtils.i("AppBackgroundService", "REPORT_PIC_TEXT_UPLOAD_STATUS :上传失败");
            Intent intent = new Intent(LOCAL_EVENT_MSG.REPORT_PIC_TEXT_UPLOAD_STATUS);
            intent.putExtra("type", 2);
            LocalBroadcastManager.getInstance(AppBackgroundService.this).sendBroadcast(intent);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
            LogUtils.i("AppBackgroundService", "REPORT_PIC_TEXT_UPLOAD_STATUS :上传进度:  " + ((100 * j10) / j11) + "%");
            Intent intent = new Intent(LOCAL_EVENT_MSG.REPORT_PIC_TEXT_UPLOAD_STATUS);
            intent.putExtra("type", 3);
            intent.putExtra("total", j11);
            intent.putExtra("imgPath", AppBackgroundService.this.f26227c);
            intent.putExtra("current", j10);
            LocalBroadcastManager.getInstance(AppBackgroundService.this).sendBroadcast(intent);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public /* bridge */ /* synthetic */ void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
            onResponse((List) obj, (FaceCastBaseResponse<List<String>>) faceCastBaseResponse);
        }

        public void onResponse(@Nullable List<String> list, @NonNull FaceCastBaseResponse<List<String>> faceCastBaseResponse) {
            if (list != null && !list.isEmpty()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(list.get(0));
                for (int i9 = 1; i9 < list.size(); i9++) {
                    sb2.append(",");
                    sb2.append(list.get(i9));
                }
                new PostRequest(f7.b.f39642g0).y("account", AppBackgroundService.this.f26238n).y("content", AppBackgroundService.this.f26225a).y("type", 1).y("infoId", AppBackgroundService.this.f26239o).y("reportType", AppBackgroundService.this.f26241q).y("typeId", AppBackgroundService.this.f26240p).y("img", sb2).M(new a());
                return;
            }
            onFailure(new g7.a<>());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            LogUtils.i("AppBackgroundService", "REPORT_PIC_TEXT_UPLOAD_STATUS :上传失败");
            Intent intent = new Intent(LOCAL_EVENT_MSG.REPORT_PIC_TEXT_UPLOAD_STATUS);
            intent.putExtra("type", 2);
            LocalBroadcastManager.getInstance(AppBackgroundService.this).sendBroadcast(intent);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            Intent intent = new Intent(LOCAL_EVENT_MSG.REPORT_PIC_TEXT_UPLOAD_STATUS);
            intent.putExtra("type", 1);
            intent.putExtra("videoUrl", AppBackgroundService.this.f26227c);
            LocalBroadcastManager.getInstance(AppBackgroundService.this).sendBroadcast(intent);
        }
    }

    private void n() {
        new PostRequest(f7.b.f39645j0).R("videoFile", new File(this.f26231g)).R("imgFile", new File(this.f26227c)).B(Contants.CURRENT_COUNTRY_FLAG, 1).D("musicId", this.f26228d).M(new a());
    }

    private void o() {
        List<String> list = this.f26237m;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < this.f26237m.size(); i9++) {
                arrayList.add(new File(this.f26237m.get(i9)));
            }
            new PostRequest(f7.b.f39645j0).S("files", arrayList).B(Contants.CURRENT_COUNTRY_FLAG, 3).M(new b());
            return;
        }
        p();
    }

    private void p() {
        new PostRequest(f7.b.f39642g0).y("account", this.f26238n).y("content", this.f26225a).y("type", 1).y("infoId", this.f26239o).y("reportType", this.f26241q).y("typeId", this.f26240p).M(new c());
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i9, int i10) {
        try {
            if (intent.getStringExtra(LOCAL_EVENT_MSG.SHORT_VIDEO_UPLOAD) != null) {
                if (intent.getBooleanExtra("retry", false)) {
                    n();
                    LogUtils.i("AppBackgroundService", "short_video :service 收到 重试上传的intent");
                    return 2;
                }
                LogUtils.i("AppBackgroundService", "short_video : service收到上传的intent");
                String stringExtra = intent.getStringExtra("json");
                String str = "";
                if (stringExtra == null) {
                    stringExtra = "";
                }
                this.f26229e = stringExtra;
                this.f26227c = intent.getStringExtra("imgPath");
                this.f26230f = intent.getStringExtra("isPrivate");
                this.f26226b = intent.getStringExtra("videoType");
                this.f26231g = intent.getStringExtra("videoPath");
                this.f26232h = intent.getStringExtra("isSource");
                String stringExtra2 = intent.getStringExtra("musicId");
                if (stringExtra2 == null) {
                    stringExtra2 = "";
                }
                this.f26228d = stringExtra2;
                String stringExtra3 = intent.getStringExtra("musicName");
                if (stringExtra3 != null) {
                    str = stringExtra3;
                }
                this.f26233i = str;
                this.f26234j = intent.getIntExtra("width", 0);
                this.f26235k = intent.getIntExtra("height", 0);
                this.f26225a = intent.getStringExtra("content");
                this.f26236l = intent.getBooleanExtra("sync_to_dynamic", true);
                n();
            }
            if (intent.getStringExtra(LOCAL_EVENT_MSG.REPORT_UPLOAD) != null) {
                this.f26237m = (ArrayList) intent.getSerializableExtra("files");
                LogUtils.i("AppBackgroundService", "REPORT_UPLOAD : service收到上传的intent");
                this.f26225a = intent.getStringExtra("content");
                this.f26238n = intent.getStringExtra("account");
                this.f26240p = intent.getStringExtra("typeId");
                this.f26239o = intent.getStringExtra("infoId");
                this.f26241q = intent.getStringExtra("reportType");
                o();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return 2;
    }
}
