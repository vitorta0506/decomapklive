package com.guochao.faceshow.aaspring.modulars.live.broadcaster;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.facebook.share.internal.ShareConstants;
import com.guochao.component.voiceliveroom.fragment.CreateVoiceRoomFragment;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback;
import com.guochao.faceshow.aaspring.beans.LiveLaunchResponse;
import com.guochao.faceshow.aaspring.beans.LiveOverResult;
import com.guochao.faceshow.aaspring.beans.MediaLocalData;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.beans.UploadUgcImageResponse;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.i;
import com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LaunchLiveTitleModel;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.dialog.Photo_Dialog_Fragment;
import com.guochao.faceshow.utils.AAImageUtil;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.PhotoCameraPermissionUtils;
import com.guochao.faceshow.utils.Photo_Take_Util;
import com.guochao.faceshow.utils.SensitiveWordFilter;
import com.guochao.faceshow.utils.TXIMUtils;
import com.guochao.pusher.GCLivePusher;
import com.guochao.user.RoomInfo;
import java.io.File;
import java.io.Serializable;
import java.util.Random;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
import r7.a;
/* loaded from: classes3.dex */
public class LaunchLiveHolder implements Serializable, View.OnClickListener {
    private static final String TAG = "LaunchLiveHolder";
    private static String cameraPath;
    private static String myPath;
    @BindView
    View bottomButtonArea;
    private BroadCastFragment context;
    @BindView
    ImageView faceBookShare;
    public boolean isErrorPush;
    public boolean isFontCamera;
    private boolean isPersons;
    private boolean isReleased;
    private int lastIndex;
    @BindView
    EditText launchLiveEdit;
    @BindView
    TextView launchNextBtn;
    private long launchTime;
    @BindView
    ImageView liveLaunchDice;
    @Nullable
    CreateVoiceRoomFragment mCreateVoiceRoomFragment;
    private int mCurPersonsTitle;
    @BindView
    ImageView mImageViewCover;
    LaunchBottomSwitchHolder mLaunchBottomSwitchHolder;
    private LaunchLiveTitleModel mLaunchLiveTitleModel;
    private BroadCasterLiveModel mLiveRoomModel;
    private Handler mMainHandler;
    private Photo_Dialog_Fragment mPhotoDialogFragment;
    @BindView
    ImageView mPicTipsIV;
    private PopupWindow mPopupWindow;
    private String mPushUrl;
    private GCLivePusher mTXLivePusher;
    private o onResultListener;
    private boolean parentResumed;
    private Runnable pushRunnable;
    private boolean pushed;
    private ViewGroup rootView;
    private boolean[] selectShare;
    @BindView
    View shareArea;
    @BindView
    View spaceArea;
    @BindView
    ImageView switchPrivateLive;
    @BindView
    View syncDynamicDivider;
    @BindView
    View syncDynamicLay;
    @BindView
    View syncDynamicToggle;
    @BindView
    ImageView twitterShare;
    @BindView
    ImageView voiceRoomBackground;
    private boolean voiceRoomIsCreate;
    @BindView
    ImageView weiboShare;
    @BindView
    ImageView weichatShare;
    private boolean withPk;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context = LaunchLiveHolder.this.rootView.getContext();
            if ((context instanceof BaseActivity ? ((BaseActivity) context).isProgressLoading() : false) && !UserStateHolder.isLiving() && LaunchLiveHolder.this.parentResumed) {
                LaunchLiveHolder.this.createRoomSuccess();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements LaunchLiveTitleModel.OnResultListener {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.model.LaunchLiveTitleModel.OnResultListener
        public void onResult(LaunchLiveTitleModel launchLiveTitleModel) {
            if (LaunchLiveHolder.this.isPersons && TextUtils.isEmpty(LaunchLiveHolder.this.launchLiveEdit.getText().toString().trim())) {
                LaunchLiveHolder.this.launchLiveEdit.setText(launchLiveTitleModel.getPersonsTitle() == null ? "" : launchLiveTitleModel.getPersonsTitle().trim());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements a.InterfaceC0631a<LiveOverResult> {
        c() {
        }

        @Override // r7.a.InterfaceC0631a
        /* renamed from: b */
        public void a(@Nullable LiveOverResult liveOverResult) {
            LaunchLiveHolder.this.notifyNetServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveLaunchResponse> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f18397a;

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                LaunchLiveHolder.this.notifyNetServer();
            }
        }

        d(Context context) {
            this.f18397a = context;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveLaunchResponse liveLaunchResponse, @NonNull FaceCastBaseResponse<LiveLaunchResponse> faceCastBaseResponse) {
            if (LaunchLiveHolder.this.isReleased || LaunchLiveHolder.this.isErrorPush) {
                return;
            }
            Context context = this.f18397a;
            if ((context instanceof BaseActivity) && (((BaseActivity) context).isFinishing() || ((BaseActivity) this.f18397a).isDestroyed())) {
                return;
            }
            if (liveLaunchResponse == null) {
                if (LaunchLiveHolder.this.onResultListener != null) {
                    LogUtils.i("LiveRoom：", "START_LIVE = null");
                    LaunchLiveHolder.this.onResultListener.G0(BaseApplication.getInstance().getString(R.string.live_launch_server_error), 10);
                }
            } else if ("1".equals(liveLaunchResponse.getUserLiveBanned())) {
                if (LaunchLiveHolder.this.onResultListener != null) {
                    LogUtils.i("LiveRoom：", "START_LIVE = 禁播");
                    LaunchLiveHolder.this.onResultListener.G0(liveLaunchResponse.getReasonMsgLang(), 1);
                }
            } else if ("0".equals(liveLaunchResponse.getUserLiveBanned())) {
                UserStateHolder.setLiving(true);
                UserStateHolder.setLocalLiving(liveLaunchResponse.getLiveRoomId());
                if (LaunchLiveHolder.this.mLiveRoomModel != null) {
                    LaunchLiveHolder.this.mLiveRoomModel.setChatGroupId(liveLaunchResponse.getChatGroupId());
                    LaunchLiveHolder.this.mLiveRoomModel.setLiveRoomId(liveLaunchResponse.getLiveRoomId());
                    LaunchLiveHolder.this.mLiveRoomModel.setStreamUrl(liveLaunchResponse.getStreamUrl());
                    LaunchLiveHolder.this.mLiveRoomModel.setCity(liveLaunchResponse.getCity());
                    LaunchLiveHolder.this.mLiveRoomModel.setIsFullScreenActivity(liveLaunchResponse.getIsMusicActivity());
                    LaunchLiveHolder.this.mLiveRoomModel.setLiveCountry(liveLaunchResponse.getLiveCountry());
                    ((LiveLaunchResponse) LaunchLiveHolder.this.mLiveRoomModel).setStreamId(liveLaunchResponse.getStreamId());
                    LaunchLiveHolder.this.mLiveRoomModel.setLiveStartTimestamp(liveLaunchResponse.getLiveStartTimestamp());
                    ((LiveLaunchResponse) LaunchLiveHolder.this.mLiveRoomModel).setFcoin(liveLaunchResponse.getFcoin());
                    LaunchLiveHolder.this.mLiveRoomModel.setVideoOpen(liveLaunchResponse.getVideoOpen());
                    LaunchLiveHolder.this.mLiveRoomModel.setVideoSwitch(liveLaunchResponse.getVideoSwitch());
                    LaunchLiveHolder.this.mLiveRoomModel.setScreenShotSwitch(liveLaunchResponse.getScreenShotSwitch());
                }
                LaunchLiveHolder.this.pushStream(liveLaunchResponse.getStreamUrl());
                if (LaunchLiveHolder.this.onResultListener != null) {
                    LaunchLiveHolder.this.onResultListener.Y();
                }
            } else if (LaunchLiveHolder.this.onResultListener != null) {
                LogUtils.i("LiveRoom：", "START_LIVE = error");
                LaunchLiveHolder.this.onResultListener.G0(BaseApplication.getInstance().getString(R.string.live_launch_server_error), 10);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveLaunchResponse> aVar) {
            if (LaunchLiveHolder.this.isReleased || LaunchLiveHolder.this.isErrorPush) {
                return;
            }
            Context context = this.f18397a;
            if ((context instanceof BaseActivity) && (((BaseActivity) context).isFinishing() || ((BaseActivity) this.f18397a).isDestroyed())) {
                return;
            }
            if (1010 == aVar.a()) {
                ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(R.string.minganci_live_name));
                if (LaunchLiveHolder.this.context != null) {
                    LaunchLiveHolder.this.context.onLiveFinish(-1, "");
                    return;
                }
                return;
            }
            LaunchLiveHolder.this.mMainHandler.postDelayed(new a(), 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentActivity activity = LaunchLiveHolder.this.context.getActivity();
            View findViewById = LaunchLiveHolder.this.rootView.findViewById(R.id.launch_live_beauty_filter_btn);
            PopupWindow popupWindow = new PopupWindow(activity);
            LinearLayout linearLayout = new LinearLayout(activity);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(17);
            AppCompatTextView appCompatTextView = new AppCompatTextView(activity);
            appCompatTextView.setIncludeFontPadding(false);
            appCompatTextView.setTextSize(14.0f);
            appCompatTextView.setGravity(17);
            appCompatTextView.setText(R.string.new_beauty_tips);
            appCompatTextView.setPadding(DensityUtil.dp2px(8.0f), DensityUtil.dp2px(10.0f), DensityUtil.dp2px(8.0f), DensityUtil.dp2px(10.0f));
            appCompatTextView.setTextColor(-1);
            appCompatTextView.setBackgroundResource(R.drawable.shape_new_beauty_tips);
            ImageView imageView = new ImageView(activity);
            imageView.setImageResource(R.mipmap.new_beauty_angel);
            linearLayout.addView(appCompatTextView);
            linearLayout.addView(imageView);
            linearLayout.setLayoutParams(new ViewGroup.MarginLayoutParams(-2, -2));
            linearLayout.measure(View.MeasureSpec.makeMeasureSpec(10000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(10000, Integer.MIN_VALUE));
            linearLayout.getMeasuredWidth();
            int measuredHeight = linearLayout.getMeasuredHeight();
            popupWindow.setWidth(DensityUtil.dp2px(200));
            popupWindow.setHeight(-2);
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
            popupWindow.setTouchable(false);
            popupWindow.setOutsideTouchable(false);
            popupWindow.setContentView(linearLayout);
            LaunchLiveHolder.this.mPopupWindow = popupWindow;
            if (LaunchLiveHolder.this.context == null || LaunchLiveHolder.this.context.isDetached() || LaunchLiveHolder.this.context.getActivity() == null || LaunchLiveHolder.this.context.getActivity().isDestroyed() || LaunchLiveHolder.this.context.getActivity().isFinishing()) {
                return;
            }
            popupWindow.showAsDropDown(findViewById, DensityUtil.dp2px((-200) / 2.0f) + (findViewById.getWidth() / 2), ((-measuredHeight) * 2) - (findViewById.getHeight() / 2));
        }
    }

    /* loaded from: classes3.dex */
    class f implements TextWatcher {
        f() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (LaunchLiveHolder.this.lastIndex != 2 || LaunchLiveHolder.this.mCreateVoiceRoomFragment == null) {
                return;
            }
            if (editable.length() > 24) {
                LaunchLiveHolder.this.launchLiveEdit.setText(editable.subSequence(0, 24));
                Selection.setSelection(LaunchLiveHolder.this.launchLiveEdit.getText(), 24);
            }
            LaunchLiveHolder launchLiveHolder = LaunchLiveHolder.this;
            launchLiveHolder.mCreateVoiceRoomFragment.setTitleTV(launchLiveHolder.launchLiveEdit.getText().toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements LaunchLiveTitleModel.OnResultListener {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.model.LaunchLiveTitleModel.OnResultListener
        public void onResult(LaunchLiveTitleModel launchLiveTitleModel) {
            LaunchLiveHolder.this.setEditData(launchLiveTitleModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.d<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f18403a;

        h(long j10) {
            this.f18403a = j10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public /* bridge */ /* synthetic */ void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
            onResponse((String) obj, (FaceCastBaseResponse<String>) faceCastBaseResponse);
        }

        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            UploadUgcImageResponse uploadUgcImageResponse = (UploadUgcImageResponse) GsonGetter.getGson().fromJson(str, (Class<Object>) UploadUgcImageResponse.class);
            if (new File(LaunchLiveHolder.myPath).exists()) {
                LaunchLiveHolder.this.mImageViewCover.setImageURI(Uri.parse(LaunchLiveHolder.myPath));
            } else {
                LaunchLiveHolder.this.mImageViewCover.setImageResource(R.mipmap.icon_zb_logo);
            }
            String url = uploadUgcImageResponse.getResult().getUrl();
            if (LaunchLiveHolder.this.lastIndex == 2) {
                LaunchLiveHolder.this.mCreateVoiceRoomFragment.setCoverIV(url);
                BaseApplication baseApplication = BaseApplication.getInstance();
                SpUtils.setStr(baseApplication, "voice_room_cover" + b8.e.g().getUserId(), url);
            } else {
                LaunchLiveHolder.this.mLaunchLiveTitleModel.setPicUrl(url);
                BaseApplication baseApplication2 = BaseApplication.getInstance();
                SpUtils.setStr(baseApplication2, "live_cover" + b8.e.g().getUserId(), url);
            }
            LogUtils.i("zune：", "图片处理成功，耗时 = " + (System.currentTimeMillis() - this.f18403a));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends SimpleObserver<MediaLocalData> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f18405a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends com.guochao.faceshow.aaspring.base.http.callback.d<String> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MediaLocalData f18407a;

            a(MediaLocalData mediaLocalData) {
                this.f18407a = mediaLocalData;
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<String> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.d
            public void onProgress(long j10, long j11, double d10) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public /* bridge */ /* synthetic */ void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
                onResponse((String) obj, (FaceCastBaseResponse<String>) faceCastBaseResponse);
            }

            public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                UploadUgcImageResponse uploadUgcImageResponse = (UploadUgcImageResponse) GsonGetter.getGson().fromJson(str, (Class<Object>) UploadUgcImageResponse.class);
                if (new File(LaunchLiveHolder.myPath).exists()) {
                    LaunchLiveHolder.this.mImageViewCover.setImageURI(Uri.parse(LaunchLiveHolder.myPath));
                    ba.a.r().n(this.f18407a.getThumb());
                } else {
                    LaunchLiveHolder.this.mImageViewCover.setImageResource(R.mipmap.icon_zb_logo);
                }
                String url = uploadUgcImageResponse.getResult().getUrl();
                if (LaunchLiveHolder.this.lastIndex == 2) {
                    LaunchLiveHolder.this.mCreateVoiceRoomFragment.setCoverIV(url);
                    BaseApplication baseApplication = BaseApplication.getInstance();
                    SpUtils.setStr(baseApplication, "voice_room_cover" + b8.e.g().getUserId(), url);
                } else {
                    LaunchLiveHolder.this.mLaunchLiveTitleModel.setPicUrl(url);
                    BaseApplication baseApplication2 = BaseApplication.getInstance();
                    SpUtils.setStr(baseApplication2, "live_cover" + b8.e.g().getUserId(), url);
                }
                LogUtils.i("zune：", "图片处理成功，耗时 = " + (System.currentTimeMillis() - i.this.f18405a));
            }
        }

        i(long j10) {
            this.f18405a = j10;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(MediaLocalData mediaLocalData) {
            super.onNext((i) mediaLocalData);
            ba.a.q(mediaLocalData.getThumb(), new a(mediaLocalData));
        }
    }

    /* loaded from: classes3.dex */
    class j implements i.a {
        j() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.common.i.a
        public void onResponse() {
            LaunchLiveHolder.this.onLocationResponse();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements GCValueCallback<String> {
        k() {
        }

        @Override // com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback
        /* renamed from: a */
        public void onValue(String str) {
            LaunchLiveHolder.this.launchNextBtn.setClickable(true);
            BaseApplication baseApplication = BaseApplication.getInstance();
            SpUtils.setInt(baseApplication, "live_index" + b8.e.g().getUserId(), 2);
        }

        @Override // com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback
        public void onError(int i9, @Nullable String str) {
            LaunchLiveHolder.this.launchNextBtn.setClickable(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10 = false;
            for (boolean z11 : LaunchLiveHolder.this.selectShare) {
                if (z11) {
                    z10 = true;
                }
            }
            if (z10) {
                LaunchLiveHolder.this.showProgressDialog();
            }
            TXIMUtils.loginTIM(3);
            LaunchLiveHolder.this.uploadInfoToServer();
            LaunchLiveHolder.this.launchNextBtn.setClickable(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements CreateVoiceRoomFragment.IData {
        m() {
        }

        @Override // com.guochao.component.voiceliveroom.fragment.CreateVoiceRoomFragment.IData
        public void setData(@Nullable VoiceRoomInfoModel voiceRoomInfoModel) {
            LaunchLiveHolder.this.voiceRoomIsCreate = voiceRoomInfoModel.getId() != -1;
            if (LaunchLiveHolder.this.lastIndex == 2) {
                if (voiceRoomInfoModel.getId() == -1) {
                    LaunchLiveHolder.this.launchNextBtn.setText(R.string.voice_room_create_room);
                } else {
                    LaunchLiveHolder.this.launchNextBtn.setText(R.string.voice_room_enter_room);
                }
                LaunchLiveHolder.this.setVoiceTitleAndCover();
            }
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (LaunchLiveHolder.this.isReleased) {
                return;
            }
            LaunchLiveHolder launchLiveHolder = LaunchLiveHolder.this;
            if (launchLiveHolder.isErrorPush) {
                return;
            }
            Context context = launchLiveHolder.rootView.getContext();
            if (context instanceof BaseActivity) {
                BaseActivity baseActivity = (BaseActivity) context;
                if (baseActivity.isFinishing() || baseActivity.isDestroyed() || !(context instanceof LiveBroadCastActivity)) {
                    return;
                }
            }
            if (LaunchLiveHolder.this.pushed || LaunchLiveHolder.this.onResultListener == null) {
                return;
            }
            LogUtils.i("LiveRoom：", "30秒未推流成功");
            LaunchLiveHolder.this.onResultListener.G0(BaseApplication.getInstance().getString(R.string.net_poor_start_again), 10);
        }
    }

    /* loaded from: classes3.dex */
    public interface o {
        void D1(int i9);

        void G0(String str, int i9);

        void Y();
    }

    public LaunchLiveHolder(ViewGroup viewGroup, BroadCastFragment broadCastFragment, Bundle bundle) {
        this(viewGroup);
        this.context = broadCastFragment;
        this.switchPrivateLive.setVisibility(com.guochao.faceshow.aaspring.manager.i.u().s().isLivePrivateEnable() ? 0 : 8);
        TextView textView = (TextView) viewGroup.findViewById(R.id.launch_live_next_btn);
        this.launchNextBtn = textView;
        textView.setOnClickListener(this);
        checkShowNewBeautyPopupWindow();
        if (bundle != null) {
            myPath = bundle.getString("my_path");
            cameraPath = bundle.getString("camera_path");
            PhotoCameraPermissionUtils.mCameraUri = (Uri) bundle.getParcelable(ShareConstants.MEDIA_URI);
            LogUtils.i("savedInstance", bundle.toString());
        }
        CreateVoiceRoomFragment createVoiceRoomFragment = (CreateVoiceRoomFragment) broadCastFragment.getChildFragmentManager().findFragmentById(R.id.create_voice_room);
        this.mCreateVoiceRoomFragment = createVoiceRoomFragment;
        if (createVoiceRoomFragment != null) {
            createVoiceRoomFragment.setImageView(this.voiceRoomBackground);
        }
        this.launchLiveEdit.addTextChangedListener(new f());
    }

    private void checkShowNewBeautyPopupWindow() {
        BroadCastFragment broadCastFragment = this.context;
        if (broadCastFragment == null || broadCastFragment.getActivity() == null || !BeautyItemCacheManager.hasOldBeautyItemSaved()) {
            return;
        }
        HandlerGetter.getMainHandler().post(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
        r2 = 2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void createRoomSuccess() {
        /*
            r6 = this;
            boolean r0 = r6.isReleased
            if (r0 == 0) goto L5
            return
        L5:
            com.guochao.faceshow.BaseApplication r0 = com.guochao.faceshow.BaseApplication.getInstance()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "live_index"
            r1.append(r2)
            b8.d r2 = b8.e.g()
            java.lang.String r2 = r2.getUserId()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r2 = 0
            com.guochao.faceshow.aaspring.utils.SpUtils.setInt(r0, r1, r2)
            com.guochao.faceshow.BaseApplication r0 = com.guochao.faceshow.BaseApplication.getInstance()
            android.app.Activity r0 = r0.getCurrTopActivity()
            boolean r1 = r0 instanceof com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity
            if (r1 == 0) goto L36
            com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity r0 = (com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity) r0
            r0.f18069m = r2
        L36:
            com.guochao.faceshow.aaspring.modulars.live.broadcaster.LaunchLiveHolder$o r0 = r6.onResultListener
            r1 = 1
            if (r0 == 0) goto L56
            boolean r2 = com.guochao.faceshow.utils.BaseConfig.isChinese()
            if (r2 == 0) goto L49
            boolean[] r2 = r6.selectShare
            r3 = 4
            boolean r2 = r2[r3]
            if (r2 == 0) goto L52
            goto L50
        L49:
            boolean[] r2 = r6.selectShare
            r3 = 3
            boolean r2 = r2[r3]
            if (r2 == 0) goto L52
        L50:
            r2 = 2
            goto L53
        L52:
            r2 = 1
        L53:
            r0.D1(r2)
        L56:
            r6.removeLaunchView()
            com.guochao.faceshow.aaspring.modulars.live.model.LaunchLiveTitleModel r0 = r6.mLaunchLiveTitleModel
            r0.saveModelData()
            r6.dismissProgressDialog()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "进入直播间，准备推流信息中... ， 耗时 ："
            r0.append(r2)
            long r2 = java.lang.System.currentTimeMillis()
            long r4 = r6.launchTime
            long r2 = r2 - r4
            r0.append(r2)
            java.lang.String r2 = "毫秒"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "LaunchLiveHolder"
            com.guochao.faceshow.aaspring.utils.LogUtils.i(r2, r0)
            long r2 = java.lang.System.currentTimeMillis()
            r6.launchTime = r2
            android.os.Handler r0 = r6.mMainHandler
            java.lang.Runnable r2 = r6.pushRunnable
            r3 = 30000(0x7530, double:1.4822E-319)
            r0.postDelayed(r2, r3)
            com.guochao.faceshow.aaspring.modulars.live.broadcaster.LaunchLiveHolder$c r0 = new com.guochao.faceshow.aaspring.modulars.live.broadcaster.LaunchLiveHolder$c
            r0.<init>()
            com.guochao.faceshow.aaspring.utils.UserStateHolder.checkLocalLiving(r0, r1)
            r2 = 0
            com.guochao.faceshow.aaspring.manager.a.f16444d = r2
            com.guochao.faceshow.aaspring.manager.a r0 = com.guochao.faceshow.aaspring.manager.a.g()
            r2 = 0
            r0.w(r2, r2, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.live.broadcaster.LaunchLiveHolder.createRoomSuccess():void");
    }

    private void delayThreeSecond() {
        this.mMainHandler.postDelayed(new a(), 3000L);
    }

    private void dismissProgressDialog() {
        Context context = this.rootView.getContext();
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).dismissProgressDialog();
        }
    }

    private void getLiveRoomMsg() {
        this.mLaunchLiveTitleModel.setOnResultListener(this.isPersons, new g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyNetServer() {
        Context context = this.rootView.getContext();
        if (context instanceof BaseActivity) {
            BaseActivity baseActivity = (BaseActivity) context;
            if (baseActivity.isFinishing() || baseActivity.isDestroyed() || !(context instanceof LiveBroadCastActivity)) {
                return;
            }
        }
        if (this.isErrorPush) {
            return;
        }
        PostRequest v10 = new PostRequest("tokens/live/newLive/startLive").v("streamType", "1").v("liveImg", this.mLaunchLiveTitleModel.getPicUrl());
        String str = "";
        if (this.isPersons) {
            if (this.mLaunchLiveTitleModel.getPersonsTitle() != null) {
                str = this.mLaunchLiveTitleModel.getPersonsTitle().trim();
            }
        } else if (this.mLaunchLiveTitleModel.getNormalTitle() != null) {
            str = this.mLaunchLiveTitleModel.getNormalTitle().trim();
        }
        v10.v("infoName", str).v("isSync", this.syncDynamicToggle.isSelected() ? "1" : "0").v(Contants.USER_statues, this.selectShare[BaseConfig.isChinese() ? (char) 4 : (char) 3] ? "2" : "1").v("isLockMicrophone", this.isPersons ? "0" : getLastMicStatus()).v("types", this.isPersons ? "2" : "1").M(new d(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLocationResponse() {
        LaunchBottomSwitchHolder launchBottomSwitchHolder;
        if (this.mLaunchBottomSwitchHolder.f18380b != 2) {
            if (TextUtils.isEmpty(this.mLaunchLiveTitleModel.getPicUrl())) {
                ToastUtils.showToast(this.rootView.getContext(), BaseApplication.getInstance().getString(R.string.live_room_cover_empty));
                this.launchNextBtn.setClickable(true);
                return;
            } else if (TextUtils.isEmpty(this.launchLiveEdit.getText().toString().trim())) {
                ToastUtils.showToast(this.rootView.getContext(), BaseApplication.getInstance().getString(R.string.live_room_title_empty));
                this.launchNextBtn.setClickable(true);
                return;
            } else if (com.guochao.faceshow.aaspring.modulars.live.common.i.b(this.rootView.getContext())) {
                this.launchNextBtn.setClickable(true);
                return;
            }
        }
        dismissPopupwindow();
        CreateVoiceRoomFragment createVoiceRoomFragment = this.mCreateVoiceRoomFragment;
        if (createVoiceRoomFragment != null && (launchBottomSwitchHolder = this.mLaunchBottomSwitchHolder) != null && launchBottomSwitchHolder.f18380b == 2) {
            if (TextUtils.isEmpty(createVoiceRoomFragment.getCoverIV())) {
                ToastUtils.showToast(this.rootView.getContext(), BaseApplication.getInstance().getString(R.string.live_room_cover_empty));
                this.launchNextBtn.setClickable(true);
                return;
            }
            String titleTV = this.mCreateVoiceRoomFragment.getTitleTV();
            if (TextUtils.isEmpty(titleTV)) {
                ToastUtils.showToast(this.rootView.getContext(), BaseApplication.getInstance().getString(R.string.voice_room_room_title_hint));
                this.launchNextBtn.setClickable(true);
                return;
            }
            CreateVoiceRoomFragment createVoiceRoomFragment2 = this.mCreateVoiceRoomFragment;
            createVoiceRoomFragment2.createVoiceRoom(titleTV, createVoiceRoomFragment2.getCoverIV(), new k());
            return;
        }
        this.mMainHandler.postDelayed(new l(), 50L);
    }

    private void refreshShareLay() {
        int i9 = 0;
        while (true) {
            boolean[] zArr = this.selectShare;
            if (i9 >= zArr.length) {
                return;
            }
            if (i9 == 0) {
                if (zArr[i9]) {
                    this.faceBookShare.setImageResource(R.mipmap.icon_share_facebook_blue);
                    ToastUtils.showToast(this.rootView.getContext(), (int) R.string.live_share_toast_facebook);
                } else {
                    this.faceBookShare.setImageResource(R.mipmap.icon_share_facebook);
                }
                setSelected(this.faceBookShare, this.selectShare[i9]);
            } else if (i9 == 1) {
                if (zArr[i9]) {
                    this.twitterShare.setImageResource(R.mipmap.icon_share_twitter_blue);
                    ToastUtils.showToast(this.rootView.getContext(), (int) R.string.live_share_toast_twitter);
                } else {
                    this.twitterShare.setImageResource(R.mipmap.icon_live_share_twitter);
                }
                setSelected(this.twitterShare, this.selectShare[i9]);
            } else if (i9 == 2) {
                if (zArr[i9]) {
                    this.weichatShare.setImageResource(R.mipmap.icon_share_friends_blue);
                    ToastUtils.showToast(this.rootView.getContext(), (int) R.string.live_share_toast_weichat);
                } else {
                    this.weichatShare.setImageResource(R.mipmap.icon_share_friends);
                }
                setSelected(this.weichatShare, this.selectShare[i9]);
            } else if (i9 == 3) {
                if (zArr[i9]) {
                    this.switchPrivateLive.setImageResource(R.mipmap.icon_zb_private_select);
                    if (SpUtils.getBool(this.rootView.getContext(), "FirstShowLiveToast", true)) {
                        Context context = this.rootView.getContext();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(this.context.getString(R.string.live_launch_switch_private));
                        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                        String string = this.context.getString(R.string.private_live_limit_num);
                        Object[] objArr = new Object[1];
                        LaunchLiveTitleModel launchLiveTitleModel = this.mLaunchLiveTitleModel;
                        objArr[0] = String.valueOf(launchLiveTitleModel == null ? 100 : launchLiveTitleModel.getPrivateOnlineNum());
                        sb2.append(String.format(string, objArr));
                        ToastUtils.showLiveToast(context, R.mipmap.icon_zb_room_lock, sb2.toString());
                        SpUtils.setBool(this.rootView.getContext(), "FirstShowLiveToast", false);
                    }
                    this.syncDynamicLay.setVisibility(8);
                    this.syncDynamicDivider.setVisibility(8);
                    this.syncDynamicToggle.setSelected(false);
                } else {
                    this.switchPrivateLive.setImageResource(R.mipmap.icon_zb_private_gray);
                    this.syncDynamicLay.setVisibility(8);
                    this.syncDynamicDivider.setVisibility(8);
                }
                setSelected(this.switchPrivateLive, this.selectShare[i9]);
            }
            i9++;
        }
    }

    private void removeLaunchView() {
        ViewGroup viewGroup = this.rootView;
        if (viewGroup == null || viewGroup.getParent() == null) {
            return;
        }
        ((ViewGroup) this.rootView.getParent()).removeView(this.rootView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEditData(LaunchLiveTitleModel launchLiveTitleModel) {
        if (launchLiveTitleModel == null || this.launchLiveEdit == null) {
            return;
        }
        String picUrl = launchLiveTitleModel.getPicUrl();
        if (this.lastIndex == 2) {
            setVoiceTitleAndCover();
        } else {
            this.launchLiveEdit.setEnabled(true);
            this.mImageViewCover.setClickable(true);
            this.mPicTipsIV.setVisibility(0);
            if (!TextUtils.isEmpty(picUrl)) {
                hc.a.h(this.mImageViewCover, picUrl, R.mipmap.icon_zb_logo);
            } else {
                this.mImageViewCover.setImageResource(R.mipmap.icon_zb_logo);
            }
            String str = "";
            if (this.isPersons) {
                if (launchLiveTitleModel.getPersonsTitle() != null && !TextUtils.isEmpty(launchLiveTitleModel.getPersonsTitle().trim())) {
                    this.launchLiveEdit.setText(launchLiveTitleModel.getPersonsTitle().trim());
                } else {
                    this.launchLiveEdit.setText("");
                }
            } else {
                EditText editText = this.launchLiveEdit;
                if (launchLiveTitleModel.getNormalTitle() != null && !TextUtils.isEmpty(launchLiveTitleModel.getNormalTitle().trim())) {
                    str = launchLiveTitleModel.getNormalTitle().trim();
                }
                editText.setText(str);
            }
        }
        EditText editText2 = this.launchLiveEdit;
        editText2.setSelection(editText2.length());
    }

    private void setSelected(View view, boolean z10) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVoiceTitleAndCover() {
        CreateVoiceRoomFragment createVoiceRoomFragment = this.mCreateVoiceRoomFragment;
        if (createVoiceRoomFragment != null && createVoiceRoomFragment.getTitleTV() != null && !TextUtils.isEmpty(this.mCreateVoiceRoomFragment.getTitleTV())) {
            this.launchLiveEdit.setText(this.mCreateVoiceRoomFragment.getTitleTV());
            EditText editText = this.launchLiveEdit;
            editText.setSelection(editText.getText().length());
            if (this.voiceRoomIsCreate) {
                this.launchLiveEdit.setEnabled(false);
            }
        } else {
            this.launchLiveEdit.setText("");
        }
        CreateVoiceRoomFragment createVoiceRoomFragment2 = this.mCreateVoiceRoomFragment;
        if (createVoiceRoomFragment2 != null && createVoiceRoomFragment2.getCoverIV() != null) {
            if (!TextUtils.isEmpty(this.mCreateVoiceRoomFragment.getCoverIV())) {
                if (this.voiceRoomIsCreate) {
                    this.mImageViewCover.setClickable(false);
                    this.mPicTipsIV.setVisibility(4);
                }
                hc.a.h(this.mImageViewCover, this.mCreateVoiceRoomFragment.getCoverIV(), R.mipmap.icon_zb_logo);
            } else {
                this.mImageViewCover.setImageResource(R.mipmap.icon_zb_logo);
            }
        } else {
            this.mImageViewCover.setImageResource(R.mipmap.icon_zb_logo);
        }
        CreateVoiceRoomFragment createVoiceRoomFragment3 = this.mCreateVoiceRoomFragment;
        if (createVoiceRoomFragment3 != null && createVoiceRoomFragment3.getBgUrl() != null) {
            com.bumptech.glide.c.w(this.context).r(this.mCreateVoiceRoomFragment.getBgUrl()).b0(R.mipmap.voice_room_create_bg).Q0(this.voiceRoomBackground);
        } else {
            this.voiceRoomBackground.setImageResource(R.mipmap.voice_room_create_bg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProgressDialog() {
        Context context = this.rootView.getContext();
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).showProgressDialog("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadInfoToServer() {
        String str;
        String str2;
        this.mLiveRoomModel.setLiveCoverImg(this.mLaunchLiveTitleModel.getPicUrl());
        if (this.isPersons) {
            this.mLaunchLiveTitleModel.setPersonsTitle(this.launchLiveEdit.getText().toString().trim());
        } else {
            this.mLaunchLiveTitleModel.setNormalTitle(this.launchLiveEdit.getText().toString().trim());
        }
        int i9 = 0;
        while (true) {
            boolean[] zArr = this.selectShare;
            if (i9 < zArr.length) {
                if (zArr[i9]) {
                    int i10 = R.string.live_share_text;
                    int i11 = R.string.live_share_title;
                    if (i9 == 0) {
                        if (TextUtils.isEmpty(this.mLiveRoomModel.getShareUrl())) {
                            createRoomSuccess();
                            return;
                        }
                        if (BaseConfig.isChinese()) {
                            str = SharePlatformBean.Wechat.NAME;
                        } else {
                            str = SharePlatformBean.FaceBook.NAME;
                        }
                        String str3 = str;
                        Activity activity = (Activity) this.rootView.getContext();
                        BaseApplication baseApplication = BaseApplication.getInstance();
                        if (!this.isPersons) {
                            i11 = R.string.live_share_title_single;
                        }
                        String string = baseApplication.getString(i11, new Object[]{b8.e.g().c().getUserName()});
                        BaseApplication baseApplication2 = BaseApplication.getInstance();
                        if (!this.isPersons) {
                            i10 = R.string.live_share_text_single;
                        }
                        v9.c.g(activity, str3, string, baseApplication2.getString(i10), this.mLaunchLiveTitleModel.getPicUrl(), this.mLiveRoomModel.getShareUrl(), 0, null);
                        delayThreeSecond();
                        return;
                    } else if (i9 == 1) {
                        if (TextUtils.isEmpty(this.mLiveRoomModel.getShareUrl())) {
                            createRoomSuccess();
                            return;
                        }
                        String str4 = BaseConfig.isChinese() ? "" : Constants.ThirdPartyLogin.PLATFORM_TWITTER;
                        Activity activity2 = (Activity) this.rootView.getContext();
                        BaseApplication baseApplication3 = BaseApplication.getInstance();
                        if (!this.isPersons) {
                            i11 = R.string.live_share_title_single;
                        }
                        String string2 = baseApplication3.getString(i11, new Object[]{b8.e.g().c().getUserName()});
                        BaseApplication baseApplication4 = BaseApplication.getInstance();
                        if (!this.isPersons) {
                            i10 = R.string.live_share_text_single;
                        }
                        v9.c.g(activity2, str4, string2, baseApplication4.getString(i10), this.mLaunchLiveTitleModel.getPicUrl(), this.mLiveRoomModel.getShareUrl(), 0, null);
                        delayThreeSecond();
                        return;
                    } else if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return;
                            }
                            createRoomSuccess();
                            return;
                        }
                        if (BaseConfig.isChinese()) {
                            Activity activity3 = (Activity) this.rootView.getContext();
                            String str5 = SharePlatformBean.WechatMoments.NAME;
                            BaseApplication baseApplication5 = BaseApplication.getInstance();
                            if (!this.isPersons) {
                                i11 = R.string.live_share_title_single;
                            }
                            String string3 = baseApplication5.getString(i11, new Object[]{b8.e.g().c().getUserName()});
                            BaseApplication baseApplication6 = BaseApplication.getInstance();
                            if (!this.isPersons) {
                                i10 = R.string.live_share_text_single;
                            }
                            v9.c.g(activity3, str5, string3, baseApplication6.getString(i10), this.mLaunchLiveTitleModel.getPicUrl(), this.mLiveRoomModel.getShareUrl(), 0, null);
                        }
                        createRoomSuccess();
                        return;
                    } else if (TextUtils.isEmpty(this.mLiveRoomModel.getShareUrl())) {
                        createRoomSuccess();
                        return;
                    } else {
                        if (BaseConfig.isChinese()) {
                            str2 = SharePlatformBean.SinaWeibo.NAME;
                        } else {
                            str2 = SharePlatformBean.WechatMoments.NAME;
                        }
                        String str6 = str2;
                        Activity activity4 = (Activity) this.rootView.getContext();
                        BaseApplication baseApplication7 = BaseApplication.getInstance();
                        if (!this.isPersons) {
                            i11 = R.string.live_share_title_single;
                        }
                        String string4 = baseApplication7.getString(i11, new Object[]{b8.e.g().c().getUserName()});
                        BaseApplication baseApplication8 = BaseApplication.getInstance();
                        if (!this.isPersons) {
                            i10 = R.string.live_share_text_single;
                        }
                        v9.c.g(activity4, str6, string4, baseApplication8.getString(i10), this.mLaunchLiveTitleModel.getPicUrl(), this.mLiveRoomModel.getShareUrl(), 0, null);
                        delayThreeSecond();
                        return;
                    }
                }
                i9++;
            } else {
                createRoomSuccess();
                return;
            }
        }
    }

    public void dismissPopupwindow() {
        PopupWindow popupWindow = this.mPopupWindow;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.mPopupWindow.dismiss();
            ja.a.b().e("KEY_LIVE_NEW_BEAUTY");
            SpUtils.setStr(BaseApplication.getInstance(), "FaceBean", "");
        }
        this.mPopupWindow = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getLastMicStatus() {
        int selfInt2 = SpUtils.getSelfInt2("last_mic_status");
        return selfInt2 == -1 ? "0" : String.valueOf(selfInt2);
    }

    public int getLayoutId() {
        return R.layout.layout_launch_live;
    }

    public LiveLaunchResponse getLiveRoomModel() {
        return (LiveLaunchResponse) this.mLiveRoomModel;
    }

    public boolean isPersons() {
        return this.isPersons;
    }

    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        Bundle extras;
        LogUtils.i("LaunchLiveHolder:myPath", myPath);
        LogUtils.i("LaunchLiveHolder:this", toString());
        if (i10 == -1 && !TextUtils.isEmpty(myPath)) {
            if (i9 == 51) {
                LogUtils.i("PhotoCameraPermissionUtils", PhotoCameraPermissionUtils.getmCameraUri().toString());
                Photo_Take_Util.startPhotoZoom(this.rootView.getContext(), cameraPath, myPath, PhotoCameraPermissionUtils.getmCameraUri(), this.context.getActivity());
            } else if (i9 == 52) {
                if (intent != null) {
                    Photo_Take_Util.startPhotoZoom(this.rootView.getContext(), AAImageUtil.getImageAbsolutePath(this.rootView.getContext(), intent.getData()), myPath, intent.getData(), this.context.getActivity());
                }
            } else if (i9 == 69) {
                ba.a.p(this.context.getActivity(), com.yalantis.ucrop.a.b(intent), new h(System.currentTimeMillis()));
            } else if (i9 != 121) {
                if (i9 != 10023 || intent == null || (extras = intent.getExtras()) == null) {
                    return;
                }
                Photo_Take_Util.startPhotoZoom(this.context.getActivity(), extras.getString(BaseConfig.INTENT_EXTRA_KEY_QR_SCAN), myPath, (Uri) extras.getParcelable(ShareConstants.MEDIA_URI), this.context.getActivity());
            } else {
                MediaLocalData mediaLocalData = new MediaLocalData();
                mediaLocalData.setThumb(myPath);
                mediaLocalData.setUri(mediaLocalData.getDisplayThumbUri());
                long currentTimeMillis = System.currentTimeMillis();
                if (mediaLocalData.copy(mediaLocalData, false) != null) {
                    mediaLocalData.copy(mediaLocalData, false).subscribe(new i(currentTimeMillis));
                }
            }
        }
    }

    @Override // android.view.View.OnClickListener
    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.face_book_share /* 2131362747 */:
                int i9 = 0;
                while (true) {
                    boolean[] zArr = this.selectShare;
                    if (i9 >= zArr.length) {
                        if (BaseConfig.isChinese()) {
                            com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.a(this.selectShare, this.faceBookShare, this.rootView, this.twitterShare, this.weichatShare, this.switchPrivateLive, this.syncDynamicLay, this.syncDynamicDivider, this.syncDynamicToggle, this.weiboShare);
                            return;
                        } else {
                            refreshShareLay();
                            return;
                        }
                    }
                    if (i9 == 0) {
                        zArr[0] = !zArr[0];
                    } else {
                        zArr[i9] = false;
                    }
                    i9++;
                }
            case R.id.launch_live_next_btn /* 2131363348 */:
                String trim = this.launchLiveEdit.getText().toString().trim();
                String checkKeyword = SensitiveWordFilter.getInstance().checkKeyword(trim);
                if (!TextUtils.isEmpty(trim) && !TextUtils.isEmpty(checkKeyword)) {
                    ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(R.string.minganci_live_name));
                    return;
                }
                this.mLiveRoomModel.setLiveTitle(trim);
                this.launchTime = System.currentTimeMillis();
                view.setClickable(false);
                if (!com.guochao.faceshow.aaspring.modulars.live.common.i.e(this.rootView.getContext())) {
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.Network_Error);
                    view.setClickable(true);
                    return;
                }
                LaunchBottomSwitchHolder launchBottomSwitchHolder = this.mLaunchBottomSwitchHolder;
                if (launchBottomSwitchHolder != null && launchBottomSwitchHolder.f18380b == 2) {
                    onLocationResponse();
                    return;
                } else if (this.withPk) {
                    onLocationResponse();
                    return;
                } else {
                    com.guochao.faceshow.aaspring.modulars.live.common.i.d((FragmentActivity) view.getContext(), new j());
                    return;
                }
            case R.id.launch_live_pic /* 2131363349 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    Fragment findFragmentByTag = ((FragmentActivity) view.getContext()).getSupportFragmentManager().findFragmentByTag("Photo_Dialog_Fragment");
                    if (findFragmentByTag instanceof Photo_Dialog_Fragment) {
                        this.mPhotoDialogFragment = (Photo_Dialog_Fragment) findFragmentByTag;
                    }
                    if (this.mPhotoDialogFragment == null) {
                        this.mPhotoDialogFragment = new Photo_Dialog_Fragment();
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("openLive", true);
                        this.mPhotoDialogFragment.setArguments(bundle);
                    }
                    if (this.mPhotoDialogFragment.isAdded()) {
                        return;
                    }
                    myPath = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + (System.currentTimeMillis() / 1000) + FileUtils.PIC_POSTFIX_JPEG;
                    String str = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + (System.currentTimeMillis() / 1000) + FileUtils.PIC_POSTFIX_JPEG;
                    cameraPath = str;
                    this.mPhotoDialogFragment.setCameraPath(str);
                    this.mPhotoDialogFragment.setUpdatePath(myPath);
                    this.mPhotoDialogFragment.show(((FragmentActivity) view.getContext()).getSupportFragmentManager(), "Photo_Dialog_Fragment");
                    return;
                }
                return;
            case R.id.launch_live_switch_camera_btn /* 2131363351 */:
                this.context.switchCamera();
                return;
            case R.id.live_dynamic_toggle /* 2131363463 */:
                view.setSelected(!view.isSelected());
                return;
            case R.id.live_launch_dice /* 2131363489 */:
                if (this.mLaunchLiveTitleModel.getPersonsTitles() == null || this.mLaunchLiveTitleModel.getPersonsTitles().isEmpty()) {
                    return;
                }
                int i10 = this.mCurPersonsTitle;
                if (i10 < 0) {
                    Random random = new Random();
                    while (true) {
                        if (this.mLaunchLiveTitleModel.getPersonsTitles().size() > 1) {
                            int nextInt = random.nextInt(this.mLaunchLiveTitleModel.getPersonsTitles().size());
                            if (this.mCurPersonsTitle != nextInt) {
                                this.mCurPersonsTitle = nextInt;
                            }
                        }
                    }
                    if (this.mCurPersonsTitle < 0) {
                        this.mCurPersonsTitle = 0;
                    }
                    String str2 = this.mLaunchLiveTitleModel.getPersonsTitles().get(this.mCurPersonsTitle);
                    this.mLaunchLiveTitleModel.setPersonsTitle(str2);
                    this.launchLiveEdit.setText(str2 != null ? str2.trim() : "");
                    EditText editText = this.launchLiveEdit;
                    editText.setSelection(editText.getText().length());
                    return;
                }
                int i11 = i10 + 1;
                this.mCurPersonsTitle = i11;
                if (i11 >= this.mLaunchLiveTitleModel.getPersonsTitles().size()) {
                    this.mCurPersonsTitle = 0;
                }
                String str3 = this.mLaunchLiveTitleModel.getPersonsTitles().get(this.mCurPersonsTitle);
                this.launchLiveEdit.setText(str3 != null ? str3.trim() : "");
                EditText editText2 = this.launchLiveEdit;
                editText2.setSelection(editText2.getText().length());
                return;
            case R.id.switch_private_live /* 2131364622 */:
                if (BaseConfig.isChinese()) {
                    int i12 = 0;
                    while (true) {
                        boolean[] zArr2 = this.selectShare;
                        if (i12 >= zArr2.length) {
                            com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.a(zArr2, this.faceBookShare, this.rootView, this.twitterShare, this.weichatShare, this.switchPrivateLive, this.syncDynamicLay, this.syncDynamicDivider, this.syncDynamicToggle, this.weiboShare);
                            return;
                        }
                        if (i12 == 4) {
                            zArr2[4] = !zArr2[4];
                        } else {
                            zArr2[i12] = false;
                        }
                        i12++;
                    }
                } else {
                    int i13 = 0;
                    while (true) {
                        boolean[] zArr3 = this.selectShare;
                        if (i13 >= zArr3.length) {
                            refreshShareLay();
                            return;
                        }
                        if (i13 == 3) {
                            zArr3[3] = !zArr3[3];
                        } else {
                            zArr3[i13] = false;
                        }
                        i13++;
                    }
                }
            case R.id.twitter_share /* 2131365213 */:
                int i14 = 0;
                while (true) {
                    boolean[] zArr4 = this.selectShare;
                    if (i14 >= zArr4.length) {
                        if (BaseConfig.isChinese()) {
                            com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.a(this.selectShare, this.faceBookShare, this.rootView, this.twitterShare, this.weichatShare, this.switchPrivateLive, this.syncDynamicLay, this.syncDynamicDivider, this.syncDynamicToggle, this.weiboShare);
                            return;
                        } else {
                            refreshShareLay();
                            return;
                        }
                    }
                    if (i14 == 1) {
                        zArr4[1] = !zArr4[1];
                    } else {
                        zArr4[i14] = false;
                    }
                    i14++;
                }
            case R.id.weibo_share /* 2131365446 */:
                int i15 = 0;
                while (true) {
                    boolean[] zArr5 = this.selectShare;
                    if (i15 >= zArr5.length) {
                        com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.a(zArr5, this.faceBookShare, this.rootView, this.twitterShare, this.weichatShare, this.switchPrivateLive, this.syncDynamicLay, this.syncDynamicDivider, this.syncDynamicToggle, this.weiboShare);
                        return;
                    }
                    if (i15 == 2) {
                        zArr5[2] = !zArr5[2];
                    } else {
                        zArr5[i15] = false;
                    }
                    i15++;
                }
            case R.id.weichat_share /* 2131365447 */:
                if (BaseConfig.isChinese()) {
                    int i16 = 0;
                    while (true) {
                        boolean[] zArr6 = this.selectShare;
                        if (i16 >= zArr6.length) {
                            com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.a(zArr6, this.faceBookShare, this.rootView, this.twitterShare, this.weichatShare, this.switchPrivateLive, this.syncDynamicLay, this.syncDynamicDivider, this.syncDynamicToggle, this.weiboShare);
                            return;
                        }
                        if (i16 == 3) {
                            zArr6[3] = !zArr6[3];
                        } else {
                            zArr6[i16] = false;
                        }
                        i16++;
                    }
                } else {
                    int i17 = 0;
                    while (true) {
                        boolean[] zArr7 = this.selectShare;
                        if (i17 >= zArr7.length) {
                            refreshShareLay();
                            return;
                        }
                        if (i17 == 2) {
                            zArr7[2] = !zArr7[2];
                        } else {
                            zArr7[i17] = false;
                        }
                        i17++;
                    }
                }
            default:
                return;
        }
    }

    public void onLiveFinish() {
        Handler handler = this.mMainHandler;
        if (handler != null) {
            handler.removeCallbacks(this.pushRunnable);
        }
    }

    public void onPause() {
        this.parentResumed = false;
    }

    public void onPushSuccess() {
        this.pushed = true;
        this.mMainHandler.removeCallbacks(this.pushRunnable);
        LogUtils.i(TAG, "推流成功, 耗时 ：" + (System.currentTimeMillis() - this.launchTime) + "毫秒");
    }

    public void onResume() {
        this.parentResumed = true;
        Context context = this.rootView.getContext();
        if (!(context instanceof BaseActivity ? ((BaseActivity) context).isProgressLoading() : false) || UserStateHolder.isLiving()) {
            return;
        }
        createRoomSuccess();
    }

    public void onSaveInstantState(Bundle bundle) {
        bundle.putString("my_path", myPath);
        bundle.putString("camera_path", cameraPath);
        bundle.putParcelable(ShareConstants.MEDIA_URI, PhotoCameraPermissionUtils.getmCameraUri());
    }

    public void pushStream(String str) {
        LogUtils.i(TAG, "准备推流 pushUrl = " + str);
        this.mPushUrl = str;
        this.mTXLivePusher.setLiveResolution(1);
        int startPush = this.mTXLivePusher.startPush(this.mPushUrl, getLiveRoomModel().getStreamId(), new RoomInfo(getLiveRoomModel().getLiveRoomId(), getLiveRoomModel().getCurrentUserId(), getLiveRoomModel().getStreamId(), true, ""));
        this.launchTime = System.currentTimeMillis();
        LogUtils.i(TAG, "准备推流 i = " + startPush);
    }

    public void release() {
        if (this.isReleased) {
            return;
        }
        LaunchLiveTitleModel launchLiveTitleModel = this.mLaunchLiveTitleModel;
        if (launchLiveTitleModel != null) {
            launchLiveTitleModel.release();
        }
        this.isReleased = true;
        Handler handler = this.mMainHandler;
        if (handler != null) {
            handler.removeMessages(0);
        }
        UserStateHolder.release();
        v9.c.c();
    }

    public void reloadNet() {
        if (this.mLaunchLiveTitleModel.isPersonsLoaded()) {
            return;
        }
        this.mLaunchLiveTitleModel.getNetPersonsTitles(new b());
    }

    public void setBottomHolder(LaunchBottomSwitchHolder launchBottomSwitchHolder) {
        this.mLaunchBottomSwitchHolder = launchBottomSwitchHolder;
    }

    public void setCurrentIndex(int i9, boolean z10) {
        this.isPersons = i9 == 1;
        this.lastIndex = i9;
        if (i9 == 2) {
            CreateVoiceRoomFragment createVoiceRoomFragment = this.mCreateVoiceRoomFragment;
            if (createVoiceRoomFragment != null) {
                VoiceRoomInfoModel value = createVoiceRoomFragment.getViewModel().getVoiceRoomInfo().getValue();
                if (value != null) {
                    if (value.getId() == -1) {
                        this.launchNextBtn.setText(R.string.voice_room_create_room);
                    } else {
                        this.launchNextBtn.setText(R.string.voice_room_enter_room);
                        this.voiceRoomIsCreate = true;
                    }
                } else {
                    this.launchNextBtn.setText(R.string.voice_room_create_room);
                    this.mCreateVoiceRoomFragment.getData(new m());
                }
                setVoiceTitleAndCover();
            }
            this.launchLiveEdit.setHint(R.string.voice_room_room_title_hint);
            this.shareArea.setVisibility(4);
            this.spaceArea.setVisibility(0);
            this.voiceRoomBackground.setVisibility(0);
            CreateVoiceRoomFragment createVoiceRoomFragment2 = this.mCreateVoiceRoomFragment;
            if (createVoiceRoomFragment2 != null && createVoiceRoomFragment2.getBgUrl() != null) {
                com.bumptech.glide.c.w(this.context).r(this.mCreateVoiceRoomFragment.getBgUrl()).b0(R.mipmap.voice_room_create_bg).Q0(this.voiceRoomBackground);
            } else {
                this.voiceRoomBackground.setImageResource(R.mipmap.voice_room_create_bg);
            }
            this.bottomButtonArea.setVisibility(4);
        } else {
            this.launchNextBtn.setText(R.string.live_launch_start);
            this.launchLiveEdit.setHint(R.string.live_input_title_hint);
            this.spaceArea.setVisibility(4);
            this.voiceRoomBackground.setVisibility(4);
            this.shareArea.setVisibility(0);
            this.bottomButtonArea.setVisibility(0);
            if (z10) {
                getLiveRoomMsg();
            } else {
                setEditData(this.mLaunchLiveTitleModel);
            }
        }
        ImageView imageView = this.liveLaunchDice;
        if (imageView != null) {
            if (this.isPersons) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
    }

    public void setLiveRoomModel(BroadCasterLiveModel broadCasterLiveModel) {
        this.mLiveRoomModel = broadCasterLiveModel;
        this.mLiveRoomModel.setShareUrl(com.guochao.faceshow.aaspring.manager.i.u().s().getShareUrl());
    }

    public void setOnResultListener(o oVar) {
        this.onResultListener = oVar;
    }

    public void setPusher(GCLivePusher gCLivePusher) {
        this.mTXLivePusher = gCLivePusher;
    }

    public void startLiveWithPk() {
        this.withPk = true;
        TextView textView = this.launchNextBtn;
        if (textView != null) {
            textView.callOnClick();
        }
    }

    public LaunchLiveHolder(ViewGroup viewGroup) {
        this.lastIndex = 0;
        this.isFontCamera = true;
        this.voiceRoomIsCreate = false;
        this.mCurPersonsTitle = -1;
        this.launchTime = 0L;
        this.pushRunnable = new n();
        this.mMainHandler = new Handler();
        this.rootView = viewGroup;
        ButterKnife.c(this, viewGroup);
        if (BaseConfig.isChinese()) {
            this.selectShare = new boolean[]{false, false, false, false, false};
            com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.c(this.faceBookShare, this.twitterShare, this.weiboShare);
            if (SharePlatformBean.checkApkExist(SharePlatformBean.WechatPackage)) {
                this.faceBookShare.setVisibility(0);
                this.weichatShare.setVisibility(0);
            } else {
                this.weichatShare.setVisibility(8);
                this.faceBookShare.setVisibility(8);
            }
            if (!SharePlatformBean.checkApkExist(SharePlatformBean.QQPackage) && !SharePlatformBean.checkApkExist(SharePlatformBean.QQ2Package)) {
                this.twitterShare.setVisibility(8);
            } else {
                this.twitterShare.setVisibility(0);
            }
            if (SharePlatformBean.checkApkExist(SharePlatformBean.WeiBoPackage)) {
                this.weiboShare.setVisibility(0);
            } else {
                this.weiboShare.setVisibility(8);
            }
        } else {
            this.selectShare = new boolean[]{false, false, false, false};
            if (SharePlatformBean.checkApkExist("com.facebook.katana")) {
                this.faceBookShare.setVisibility(0);
            } else {
                this.faceBookShare.setVisibility(8);
            }
            if (SharePlatformBean.checkApkExist(SharePlatformBean.WechatPackage)) {
                this.weichatShare.setVisibility(0);
            } else {
                this.weichatShare.setVisibility(8);
            }
            if (SharePlatformBean.checkApkExist(SharePlatformBean.TwitterPackage)) {
                this.twitterShare.setVisibility(0);
            } else {
                this.twitterShare.setVisibility(8);
            }
        }
        LaunchLiveTitleModel launchLiveTitleModel = new LaunchLiveTitleModel();
        this.mLaunchLiveTitleModel = launchLiveTitleModel;
        setEditData(launchLiveTitleModel);
        if (TextUtils.isEmpty(com.guochao.faceshow.aaspring.manager.i.u().s().getShareUrl())) {
            this.faceBookShare.setVisibility(8);
            this.weichatShare.setVisibility(8);
            this.twitterShare.setVisibility(8);
            this.weiboShare.setVisibility(8);
        }
        if (this.faceBookShare.getVisibility() == 8 && this.weichatShare.getVisibility() == 8 && this.twitterShare.getVisibility() == 8) {
            viewGroup.findViewById(R.id.share_divider).setVisibility(8);
        }
    }
}
