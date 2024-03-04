package com.guochao.faceshow.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.Comment;
import com.guochao.faceshow.aaspring.modulars.main.fragment.SingleVideoPlayFragment;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.views.d;
import com.guochao.faceshow.views.e;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.ugc.UGCTransitionRules;
import org.greenrobot.eventbus.EventBus;
import y7.i;
/* loaded from: classes3.dex */
public class VideoPlayActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private int f24913a;

    /* renamed from: b  reason: collision with root package name */
    private String f24914b;

    /* renamed from: c  reason: collision with root package name */
    private int f24915c = 1;

    /* renamed from: d  reason: collision with root package name */
    private String f24916d;

    /* renamed from: e  reason: collision with root package name */
    Comment f24917e;

    /* renamed from: f  reason: collision with root package name */
    boolean f24918f;
    @BindView
    TitleBackgroundView mTitleLy;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements GCRequestJava.c<Object> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements GCRequestJava.d<Integer> {

        /* loaded from: classes3.dex */
        class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                dialog.dismiss();
                i iVar = new i();
                iVar.c(0);
                iVar.d(1);
                EventBus.getDefault().post(iVar);
                VideoPlayActivity.this.getActivity().finish();
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(e eVar) {
                d.a(this, eVar);
            }
        }

        /* renamed from: com.guochao.faceshow.activity.VideoPlayActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0243b implements e.a {
            C0243b() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                dialog.dismiss();
                i iVar = new i();
                iVar.c(0);
                iVar.d(1);
                EventBus.getDefault().post(iVar);
                VideoPlayActivity.this.getActivity().finish();
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(e eVar) {
                d.a(this, eVar);
            }
        }

        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Integer> response) {
            Integer data = response.getData();
            if (VideoPlayActivity.this.isDestroyed() || VideoPlayActivity.this.isFinishing()) {
                return;
            }
            int intValue = data.intValue();
            if (intValue != 0) {
                if (intValue == 1) {
                    FragmentTransaction beginTransaction = VideoPlayActivity.this.getSupportFragmentManager().beginTransaction();
                    int i9 = VideoPlayActivity.this.f24915c;
                    int parseInt = Integer.parseInt(VideoPlayActivity.this.f24914b);
                    String str = VideoPlayActivity.this.f24916d;
                    VideoPlayActivity videoPlayActivity = VideoPlayActivity.this;
                    beginTransaction.replace(R.id.main_layout, SingleVideoPlayFragment.U2(i9, parseInt, str, videoPlayActivity.f24917e, videoPlayActivity.f24918f)).commitAllowingStateLoss();
                    return;
                } else if (intValue == 2) {
                    e eVar = new e(VideoPlayActivity.this.getActivity(), new a());
                    eVar.f(VideoPlayActivity.this.getString(R.string.The_video_is_frozen));
                    eVar.j();
                    eVar.show();
                    return;
                } else if (intValue != 5) {
                    return;
                }
            }
            if (BaseApplication.getInstance().getCurrTopActivity() == null) {
                return;
            }
            e eVar2 = new e(VideoPlayActivity.this.getActivity(), new C0243b());
            eVar2.f(VideoPlayActivity.this.getString(R.string.The_video_is_deleted));
            eVar2.j();
            eVar2.show();
        }
    }

    private void g0() {
        new GCRequestJava("api/token/social/video/checkVideoIsExist").putBody("videoId", this.f24914b).j(new b()).d(new a()).request();
    }

    public static void start(Context context, String str) {
        Intent intent = new Intent(context, VideoPlayActivity.class);
        intent.putExtra(TCConstants.PLAYER_VIDEO_ID, str);
        intent.putExtra("check_video", true);
        PackageUtils.checkIntent(context, intent);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_video_play;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.mTitleLy.setBackgroundColor(getResources().getColor(R.color.transparent));
        this.mTitleLy.setBottomEnable(false);
        setTitle("");
        Intent intent = getIntent();
        this.f24913a = intent.getIntExtra("type", 0);
        this.f24914b = intent.getStringExtra(TCConstants.PLAYER_VIDEO_ID);
        this.f24915c = intent.getIntExtra(PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE, this.f24915c);
        this.f24916d = intent.getStringExtra("commentId");
        this.f24918f = intent.getBooleanExtra("with_comment", false);
        this.f24917e = (Comment) MemoryCache.getInstance().clear(Comment.class);
        if (TextUtils.isEmpty(this.f24914b)) {
            finish();
            return;
        }
        getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        if (getIntent().getBooleanExtra("check_video", false)) {
            g0();
        } else {
            getSupportFragmentManager().beginTransaction().replace(R.id.main_layout, SingleVideoPlayFragment.U2(this.f24915c, Integer.parseInt(this.f24914b), this.f24916d, this.f24917e, this.f24918f)).commit();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        getWindow().addFlags(2097152);
        getWindow().addFlags(128);
        super.onCreate(bundle);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean shouldShowLiveFloatWindow() {
        return false;
    }
}
