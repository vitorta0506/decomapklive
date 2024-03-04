package com.guochao.faceshow.systemassistant.act;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FAQTypesData;
import com.guochao.faceshow.aaspring.beans.SystemAssistantBean;
import com.guochao.faceshow.aaspring.beans.UploadAssistantImgResult;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.activity.EventNotifyActivity;
import com.guochao.faceshow.aaspring.utils.ChatPresenter;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SoftKeyBoardListener;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.activity.ImagePreviewActivity;
import com.guochao.faceshow.base.ChatImplBaseAct;
import com.guochao.faceshow.systemassistant.adapter.AssistantChatAdapter;
import com.guochao.faceshow.systemassistant.adapter.UserBaseMessageHolder;
import com.guochao.faceshow.systemassistant.data.AssistantMsgResult;
import com.guochao.faceshow.systemassistant.data.AssistantUserInfo;
import com.guochao.faceshow.systemassistant.view.AssistantChatInputView;
import com.guochao.faceshow.systemassistant.view.AssistantFaqPopView;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.web.WebViewActivity;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.lcodecore.tkrefreshlayout.header.progresslayout.ProgressLayout;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import vh.o;
@Deprecated
/* loaded from: classes4.dex */
public class SystemAssistantAct extends ChatImplBaseAct implements d.a {

    /* renamed from: a  reason: collision with root package name */
    private AssistantChatInputView f26320a;

    /* renamed from: b  reason: collision with root package name */
    private RecyclerView f26321b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayoutManager f26322c;

    /* renamed from: d  reason: collision with root package name */
    private AssistantChatAdapter f26323d;

    /* renamed from: e  reason: collision with root package name */
    private ChatPresenter f26324e;

    /* renamed from: f  reason: collision with root package name */
    private TwinklingRefreshLayout f26325f;

    /* renamed from: g  reason: collision with root package name */
    private int f26326g;

    /* renamed from: h  reason: collision with root package name */
    SoftKeyBoardListener f26327h;

    /* renamed from: i  reason: collision with root package name */
    boolean f26328i = false;

    /* loaded from: classes4.dex */
    class a extends SimpleObserver<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f26329a;

        a(boolean z10) {
            this.f26329a = z10;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(File file) {
            super.onNext(file);
            SystemAssistantAct.this.q0(this.f26329a, file);
        }
    }

    /* loaded from: classes4.dex */
    class b implements o<Uri, File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f26331a;

        b(Uri uri) {
            this.f26331a = uri;
        }

        @Override // vh.o
        /* renamed from: a */
        public File apply(Uri uri) throws Exception {
            String filePath = FileUtil.getFilePath(SystemAssistantAct.this.getActivity(), uri);
            String substring = filePath.substring(filePath.lastIndexOf("."));
            String cachePath = FilePathProvider.getCachePath("crop");
            File file = new File(cachePath, System.currentTimeMillis() + substring);
            FileUtil.copyUriToFile(SystemAssistantAct.this.getActivity(), this.f26331a, file);
            return file;
        }
    }

    /* loaded from: classes4.dex */
    class c implements SoftKeyBoardListener.OnSoftKeyBoardChangeListener {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SoftKeyBoardListener.OnSoftKeyBoardChangeListener
        public void keyBoardHide(int i9) {
            if (SystemAssistantAct.this.f26321b == null || !SystemAssistantAct.this.f26321b.canScrollVertically(1)) {
                return;
            }
            SystemAssistantAct.this.f26321b.scrollBy(0, -i9);
        }

        @Override // com.guochao.faceshow.aaspring.utils.SoftKeyBoardListener.OnSoftKeyBoardChangeListener
        public void keyBoardShow(int i9) {
            if (SystemAssistantAct.this.f26321b != null) {
                SystemAssistantAct systemAssistantAct = SystemAssistantAct.this;
                if (systemAssistantAct.f26328i) {
                    return;
                }
                systemAssistantAct.scrollToEnd(false, true);
            }
        }
    }

    /* loaded from: classes4.dex */
    class d extends kc.f {
        d() {
        }

        @Override // kc.f, kc.e
        public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
            AssistantMsgResult.MsgData f10 = SystemAssistantAct.this.f26323d.f();
            SystemAssistantAct.this.t0(f10 == null ? "" : Integer.toString(f10.MsgId), false);
        }
    }

    /* loaded from: classes4.dex */
    class e implements UserBaseMessageHolder.b {
        e() {
        }

        @Override // com.guochao.faceshow.systemassistant.adapter.UserBaseMessageHolder.b
        public void a(AssistantMsgResult.MsgData msgData, int i9) {
            int i10 = msgData.Type;
            if (i10 == 201) {
                SystemAssistantAct.this.v0(msgData, i9);
            } else if (i10 != 203 || msgData.getImgInfoArrayFirstItem() == null) {
            } else {
                SystemAssistantAct.this.u0(msgData.getImgInfoArrayFirstItem().URL, i9);
            }
        }
    }

    /* loaded from: classes4.dex */
    class f extends RecyclerView.OnScrollListener {
        f() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            if (i9 == 0) {
                SystemAssistantAct.this.f26328i = recyclerView.canScrollVertically(1);
            } else if (i9 == 1) {
                SoftKeyBoardUtils.closeSoftKeyBoard(SystemAssistantAct.this.getActivity(), SystemAssistantAct.this.f26320a.f26405d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<List<FAQTypesData>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class a implements AssistantFaqPopView.c {
            a() {
            }

            @Override // com.guochao.faceshow.systemassistant.view.AssistantFaqPopView.c
            public void a(String str, int i9) {
                WebViewActivity.createBuilder().m(str).l(SystemAssistantAct.this.getString(R.string.pay_common_problem)).a(SystemAssistantAct.this.getActivity());
            }
        }

        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<FAQTypesData>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<FAQTypesData> list, @NonNull FaceCastBaseResponse<List<FAQTypesData>> faceCastBaseResponse) {
            SystemAssistantAct.this.f26320a.m(list, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f26339a;

        h(boolean z10) {
            this.f26339a = z10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            AssistantMsgResult assistantMsgResult;
            SystemAssistantAct.this.f26325f.D();
            if (TextUtils.isEmpty(str) || (assistantMsgResult = (AssistantMsgResult) GsonGetter.getGson().fromJson(str, (Class<Object>) AssistantMsgResult.class)) == null || assistantMsgResult.code != 1) {
                return;
            }
            List<AssistantMsgResult.AssistantMessage> list = assistantMsgResult.result;
            if (this.f26339a) {
                SystemAssistantAct.this.f26323d.setData(list);
                SystemAssistantAct.this.f26322c.scrollToPosition(list.size() - 1);
            } else {
                int itemCount = SystemAssistantAct.this.f26323d.getItemCount();
                SystemAssistantAct.this.f26323d.addData(list);
                if (itemCount > 0) {
                    SystemAssistantAct.this.f26322c.scrollToPositionWithOffset(list.size(), 50);
                }
            }
            SystemAssistantAct.this.f26323d.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f26341a;

        i(int i9) {
            this.f26341a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            SystemAssistantAct.this.p0(this.f26341a, 2);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            SystemAssistantBean systemAssistantBean = (SystemAssistantBean) GsonGetter.getGson().fromJson(str, (Class<Object>) SystemAssistantBean.class);
            if (systemAssistantBean != null && systemAssistantBean.getCode() == 1 && systemAssistantBean.getMsg() != null) {
                SystemAssistantAct.this.p0(this.f26341a, 3);
            } else {
                SystemAssistantAct.this.p0(this.f26341a, 2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class j extends com.guochao.faceshow.aaspring.base.http.callback.c<UploadAssistantImgResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f26343a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<AssistantMsgResult> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            /* renamed from: a */
            public void onResponse(AssistantMsgResult assistantMsgResult, @NonNull FaceCastBaseResponse<AssistantMsgResult> faceCastBaseResponse) {
                if (assistantMsgResult == null) {
                    j jVar = j.this;
                    SystemAssistantAct.this.p0(jVar.f26343a, 2);
                    return;
                }
                j jVar2 = j.this;
                SystemAssistantAct.this.p0(jVar2.f26343a, 3);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(g7.a<AssistantMsgResult> aVar) {
                j jVar = j.this;
                SystemAssistantAct.this.p0(jVar.f26343a, 2);
            }
        }

        j(int i9) {
            this.f26343a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UploadAssistantImgResult uploadAssistantImgResult, @NonNull FaceCastBaseResponse<UploadAssistantImgResult> faceCastBaseResponse) {
            if (uploadAssistantImgResult == null) {
                onFailure(new g7.a<>());
                return;
            }
            try {
                uploadAssistantImgResult.setUserId(Integer.parseInt(SystemAssistantAct.this.getCurrentUser().getUserId()));
            } catch (Exception unused) {
            }
            SystemAssistantAct.this.post("tokens/assistant/msgs/imageByUrl").w(uploadAssistantImgResult).M(new a());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UploadAssistantImgResult> aVar) {
            SystemAssistantAct.this.p0(this.f26343a, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class k extends com.guochao.faceshow.aaspring.base.http.callback.c<List<AssistantMsgResult.AssistantMessage>> {
        k() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<AssistantMsgResult.AssistantMessage>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<AssistantMsgResult.AssistantMessage> list, @NonNull FaceCastBaseResponse<List<AssistantMsgResult.AssistantMessage>> faceCastBaseResponse) {
            if (list == null || list.size() <= 0) {
                return;
            }
            SystemAssistantAct.this.f26323d.a(list.get(0));
            SystemAssistantAct.this.f26321b.scrollToPosition(SystemAssistantAct.this.f26323d.getItemCount() - 1);
        }
    }

    public static void A0(Context context, @Nullable AssistantUserInfo.OfficialUserData officialUserData, int i9) {
        if (i9 == 2) {
            new WebViewActivity.e().e(1000).a(context);
        } else if (i9 == 1) {
            context.startActivity(new Intent(context, EventNotifyActivity.class));
        } else {
            Intent intent = new Intent(context, SystemAssistantAct.class);
            intent.putExtra("identify", officialUserData);
            intent.putExtra("msgType", i9);
            context.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(int i9, int i10) {
        this.f26323d.c(i9, i10, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0(boolean z10, File file) {
        if (file.exists()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            if (!z10) {
                options.inSampleSize = 2;
            }
            BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            if (file.length() == 0 && options.outWidth == 0) {
                ToastUtils.showToast(BaseApplication.getInstance(), getString(R.string.chat_file_not_exist));
                return;
            } else if (file.length() > 10485760) {
                ToastUtils.showToast(BaseApplication.getInstance(), getString(R.string.chat_file_too_large));
                return;
            } else {
                y0(file.getAbsolutePath(), options.outWidth, options.outHeight);
                return;
            }
        }
        ToastUtils.showToast(BaseApplication.getInstance(), getString(R.string.chat_file_not_exist));
    }

    private void r0() {
        post("tokens/assistant/getMultiFagTypes").M(new g());
    }

    private void s0() {
        get(Contants.GET_OFFICIAL_LAST_MSG).M(new k());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0(String str, boolean z10) {
        PostRequest v10 = post(this.f26326g == 1 ? "tokens/user/message/findActiveMessage" : "tokens/assistant/msgs/v2").v(Contants.USER_ID, getCurrentUser().getUserId());
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        v10.v("lastMsgId", str).M(new h(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(String str, int i9) {
        p0(i9, 1);
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("image", str);
        }
        post(f7.b.f39645j0).R("imgFile", new File(str)).B(Contants.CURRENT_COUNTRY_FLAG, 4).M(new j(i9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0(AssistantMsgResult.MsgData msgData, int i9) {
        p0(i9, 1);
        HashMap hashMap = new HashMap();
        if (msgData != null && !TextUtils.isEmpty(msgData.Text)) {
            hashMap.put(ViewHierarchyConstants.TEXT_KEY, msgData.Text);
        }
        post(Contants.SEND_OFFICIAL_MSG_TEXT).E(hashMap).M(new i(i9));
    }

    private void y0(String str, int i9, int i10) {
        TextUtils.isEmpty(str);
        this.f26323d.b(fb.a.a(str, i9, i10, true));
        this.f26321b.scrollToPosition(this.f26323d.getItemCount() - 1);
        u0(str, -1);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.system_assistant_act;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 1001) {
            if (i10 != -1 || intent == null) {
                return;
            }
            Uri data = intent.getData();
            Intent intent2 = new Intent(this, ImagePreviewActivity.class);
            intent2.putExtra(TCConstants.VIDEO_RECORD_VIDEPATH, data);
            startActivityForResult(intent2, 1002);
        } else if (i9 == 1002 && i10 == -1) {
            boolean booleanExtra = intent.getBooleanExtra("isOri", false);
            Uri uri = (Uri) intent.getParcelableExtra(TCConstants.VIDEO_RECORD_VIDEPATH);
            if (uri == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 29) {
                io.reactivex.k.just(uri).map(new b(uri)).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new a(booleanExtra));
            } else {
                q0(booleanExtra, new File(FileUtil.getFilePath(getActivity(), uri)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
        SoftKeyBoardListener listener = SoftKeyBoardListener.setListener(this, new c());
        this.f26327h = listener;
        listener.mDelay = false;
        AssistantUserInfo.OfficialUserData officialUserData = (AssistantUserInfo.OfficialUserData) getIntent().getSerializableExtra("identify");
        if (officialUserData == null) {
            finish();
            return;
        }
        this.f26326g = getIntent().getIntExtra("msgType", 1);
        com.guochao.faceshow.aaspring.manager.im.b.l0().x(this);
        this.f26324e = new ChatPresenter(this, Integer.toString(officialUserData.userId));
        this.f26325f = (TwinklingRefreshLayout) findViewById(R.id.assistant_refreshLayout);
        this.f26321b = (RecyclerView) findViewById(R.id.assistant_chat_list);
        AssistantChatInputView assistantChatInputView = (AssistantChatInputView) findViewById(R.id.assistant_chat_input_panel);
        this.f26320a = assistantChatInputView;
        if (this.f26326g == 1) {
            assistantChatInputView.setVisibility(8);
            setTitle(getString(R.string.Activity_reminders));
        } else {
            assistantChatInputView.setVisibility(0);
            setTitle(getString(R.string.Feedback_and_help));
        }
        this.f26320a.setChatView(this);
        this.f26324e.start(officialUserData);
        this.f26325f.setHeaderView(new ProgressLayout(this));
        this.f26325f.setFloatRefresh(true);
        this.f26325f.setBothEnableOverScroll(false);
        this.f26325f.setEnableLoadmore(false);
        this.f26325f.setHeaderHeight(ScreenTools.dip2px(30.0f));
        this.f26325f.setMaxHeadHeight(ScreenTools.dip2px(50.0f));
        this.f26325f.setOnRefreshListener(new d());
        AssistantChatAdapter assistantChatAdapter = new AssistantChatAdapter(this);
        this.f26323d = assistantChatAdapter;
        assistantChatAdapter.h(officialUserData);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.f26322c = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        this.f26321b.setLayoutManager(this.f26322c);
        this.f26321b.setAdapter(this.f26323d);
        this.f26321b.getItemAnimator().setChangeDuration(0L);
        this.f26323d.i(new e());
        this.f26321b.addOnScrollListener(new f());
        r0();
        t0("", true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.guochao.faceshow.aaspring.manager.im.b.l0().G(this);
        this.f26324e.stop();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && this.f26320a.k()) {
            return true;
        }
        return super.onKeyDown(i9, keyEvent);
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public void onNewMessage(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public /* synthetic */ void onRecvMessageRevoked(String str) {
        a8.b.a(this, str);
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        this.f26320a.setInputMode(AssistantChatInputView.InputMode.TEXT);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.f26320a.getTextString().trim().length() > 0) {
            this.f26324e.saveDraft(this.f26320a.getTextString());
        } else {
            this.f26324e.saveDraft(null);
        }
    }

    public void scrollToEnd(boolean z10, boolean z11) {
        int itemCount;
        if (this.f26321b != null && !isDestroyed() && z11 && (itemCount = this.f26323d.getItemCount()) > 0) {
            if (z10) {
                this.f26321b.smoothScrollToPosition(itemCount - 1);
            } else {
                this.f26321b.scrollToPosition(itemCount - 1);
            }
        }
    }

    @Override // com.guochao.faceshow.base.ChatImplBaseAct, com.guochao.faceshow.aaspring.utils.ChatView
    public void sendImage() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        startActivityForResult(intent, 1001);
    }

    @Override // com.guochao.faceshow.base.ChatImplBaseAct, com.guochao.faceshow.aaspring.utils.ChatView
    public void sendText() {
        String trim = this.f26320a.getTextString().trim();
        if (trim.length() > 0) {
            AssistantMsgResult.MsgData b10 = fb.a.b(trim, true);
            this.f26323d.b(b10);
            this.f26320a.f();
            this.f26321b.scrollToPosition(this.f26323d.getItemCount() - 1);
            v0(b10, -1);
        }
    }

    @Override // com.guochao.faceshow.base.ChatImplBaseAct, com.guochao.faceshow.aaspring.utils.ChatView
    public void showDraft(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f26320a.setText(str);
    }

    @Override // com.guochao.faceshow.base.ChatImplBaseAct, com.guochao.faceshow.aaspring.utils.ChatView
    public void showMessage(V2TIMMessage v2TIMMessage) {
        s0();
    }
}
