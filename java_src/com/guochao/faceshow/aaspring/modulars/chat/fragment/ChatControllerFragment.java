package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.fragment.MediaFilesFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.TextMessageBean;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.activity.MvpChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.utils.OnFirstItemClickListener;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.utils.BasePermissionObserver;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver;
import com.guochao.faceshow.aaspring.utils.PerMissionsUtils;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.guochao.faceshow.views.e;
import com.tencent.imsdk.v2.V2TIMFriendCheckResult;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class ChatControllerFragment extends BaseFragment implements com.guochao.faceshow.aaspring.modulars.chat.utils.f, OnFirstItemClickListener {

    /* renamed from: o  reason: collision with root package name */
    private static final SparseArray<String> f16879o;

    /* renamed from: a  reason: collision with root package name */
    private String f16880a;

    /* renamed from: f  reason: collision with root package name */
    private ChatStatusBean f16885f;

    /* renamed from: g  reason: collision with root package name */
    String f16886g;

    /* renamed from: i  reason: collision with root package name */
    com.guochao.faceshow.aaspring.modulars.chat.utils.f f16888i;
    @BindView
    public View ivVideo;

    /* renamed from: j  reason: collision with root package name */
    com.guochao.faceshow.aaspring.modulars.chat.utils.e f16889j;

    /* renamed from: l  reason: collision with root package name */
    FaceShortCutFragment f16891l;

    /* renamed from: m  reason: collision with root package name */
    private com.guochao.faceshow.views.e f16892m;
    @BindView
    ImageView mCameraButton;
    @BindView
    EditText mEditText;
    @BindView
    ImageView mFaceButton;
    @BindView
    ImageView mGiftButton;
    @BindView
    ImageView mImageButton;
    @BindView
    View mSendButton;
    @BindView
    View mViewExtra;
    @BindView
    ImageView mVoiceButton;

    /* renamed from: b  reason: collision with root package name */
    List<View> f16881b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private int f16882c = -1;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16883d = true;

    /* renamed from: e  reason: collision with root package name */
    private boolean f16884e = true;

    /* renamed from: h  reason: collision with root package name */
    private Map<String, Fragment> f16887h = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    TextWatcher f16890k = new b();

    /* renamed from: n  reason: collision with root package name */
    public int f16893n = 0;

    /* loaded from: classes3.dex */
    class a implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f16894a;

        a(boolean z10) {
            this.f16894a = z10;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (this.f16894a) {
                if (motionEvent.getAction() == 0) {
                    ((ChatActivity) ChatControllerFragment.this.getActivity()).onChatInputModeChanged(1);
                    return false;
                }
                return false;
            } else if (motionEvent.getAction() == 1) {
                ChatControllerFragment.this.q2(1);
                return false;
            } else {
                return false;
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            if (ChatControllerFragment.this.f16889j != null && charSequence.length() > 0) {
                ChatControllerFragment.this.f16889j.onInputting(charSequence.toString());
            }
            ChatControllerFragment.this.o2(charSequence.length() > 0);
        }
    }

    /* loaded from: classes3.dex */
    class c extends com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<List<ResourceCategoryItem>>> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<SparseArray<List<ResourceCategoryItem>>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(SparseArray<List<ResourceCategoryItem>> sparseArray, @NonNull FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>> faceCastBaseResponse) {
            List<ResourceCategoryItem> list = sparseArray.get(9);
            if (list != null) {
                for (int i9 = 0; i9 < list.size(); i9++) {
                    List<ResourceListItemBean> gifList = list.get(i9).getGifList();
                    if (gifList != null && gifList.size() > 0) {
                        ChatControllerFragment.this.mFaceButton.setVisibility(0);
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends BasePermissionObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f16898a;

        /* loaded from: classes3.dex */
        class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (!z10 || ChatControllerFragment.this.getActivity() == null || ChatControllerFragment.this.getActivity().isFinishing() || ChatControllerFragment.this.getActivity().isDestroyed()) {
                    return;
                }
                ChatControllerFragment.this.f16892m.dismiss();
                PerMissionsUtils.checkPermission(ChatControllerFragment.this.getContext());
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        d(i iVar) {
            this.f16898a = iVar;
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            i iVar = this.f16898a;
            if (iVar != null) {
                iVar.a();
            }
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onShouldShowRequestPermissionRationale(te.a aVar) {
            super.onShouldShowRequestPermissionRationale(aVar);
            if (ChatControllerFragment.this.f16892m == null || !ChatControllerFragment.this.f16892m.isShowing()) {
                ChatControllerFragment.this.f16892m = new com.guochao.faceshow.views.e(ChatControllerFragment.this.getContext(), new a());
                ChatControllerFragment.this.f16892m.i(ChatControllerFragment.this.getText(R.string.str_no));
                ChatControllerFragment.this.f16892m.k(ChatControllerFragment.this.getText(R.string.payment_password_setting));
                ChatControllerFragment.this.f16892m.f(ChatControllerFragment.this.getString(R.string.Open_storage_permission_to_use));
                ChatControllerFragment.this.f16892m.show();
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements i {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.ChatControllerFragment.i
        public void a() {
            ChatControllerFragment.this.q2(5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends j {

        /* loaded from: classes3.dex */
        class a extends TypeToken<Set<String>> {
            a() {
            }
        }

        f(ChatStatusBean chatStatusBean) {
            super(chatStatusBean);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.ChatControllerFragment.j
        void b(boolean z10, ChatStatusBean chatStatusBean) {
            if (ChatControllerFragment.this.isDetached() || ChatControllerFragment.this.getActivity() == null || ChatControllerFragment.this.getActivity().isFinishing() || ChatControllerFragment.this.getActivity().isDestroyed()) {
                return;
            }
            if (chatStatusBean != null && !TextUtils.isEmpty(ChatControllerFragment.this.f16880a)) {
                Set set = (Set) com.guochao.faceshow.aaspring.manager.b.a("firstMeet", "IsChatFirst" + ChatControllerFragment.this.getCurrentUser().getUserId(), new a().getType());
                if (set == null) {
                    set = new HashSet();
                }
                ChatControllerFragment chatControllerFragment = ChatControllerFragment.this;
                chatControllerFragment.f16893n = (set.contains(chatControllerFragment.f16880a) || z10) ? 0 : 1;
            }
            if (chatStatusBean != null) {
                ChatControllerFragment.this.f16885f = chatStatusBean;
            }
            if (chatStatusBean == null) {
                ChatControllerFragment.this.f16884e = false;
            } else if (chatStatusBean.getIsChat() == 0) {
                ChatControllerFragment.this.f16884e = true;
            } else if (chatStatusBean.getIsChat() == 1) {
                ChatControllerFragment.this.f16884e = false;
            } else if (chatStatusBean.getIsChat() == 2) {
                ChatControllerFragment.this.f16884e = true;
            } else {
                ChatControllerFragment.this.f16884e = false;
            }
            if (chatStatusBean != null) {
                ChatControllerFragment.this.f16883d = chatStatusBean.getAttentStatus() == 4;
            }
            ChatControllerFragment.this.i2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements V2TIMValueCallback<List<V2TIMFriendCheckResult>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ j f16904a;

        g(j jVar) {
            this.f16904a = jVar;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(List<V2TIMFriendCheckResult> list) {
            if (list != null && !list.isEmpty() && list.get(0).getResultType() == 3) {
                j jVar = this.f16904a;
                if (jVar != null) {
                    jVar.b(true, jVar.f16907a);
                    return;
                }
                return;
            }
            j jVar2 = this.f16904a;
            if (jVar2 != null) {
                jVar2.b(false, jVar2.f16907a);
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            j jVar = this.f16904a;
            if (jVar != null) {
                jVar.b(false, jVar.f16907a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends TypeToken<Set<String>> {
        h() {
        }
    }

    /* loaded from: classes3.dex */
    public interface i {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static abstract class j {

        /* renamed from: a  reason: collision with root package name */
        private ChatStatusBean f16907a;

        j(ChatStatusBean chatStatusBean) {
            this.f16907a = chatStatusBean;
        }

        abstract void b(boolean z10, ChatStatusBean chatStatusBean);
    }

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        f16879o = sparseArray;
        sparseArray.put(2, IMFaceViewPagerFragment.class.getName());
        sparseArray.put(4, VoiceRecordFragment.class.getName());
        sparseArray.put(3, GiftFragment.class.getName());
        sparseArray.put(5, MediaFilesFragment.class.getName());
    }

    private void X1(String str, j jVar) {
        V2TIMManager.getFriendshipManager().checkFriend(Collections.singletonList(str), 2, new g(jVar));
    }

    private boolean Y1(i iVar) {
        if (getActivity() == null) {
            return false;
        }
        if (ContextCompat.checkSelfPermission(getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(getActivity(), "android.permission.READ_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        Activity activity = getActivity();
        if (activity.getParent() != null) {
            activity = activity.getParent();
        }
        new com.tbruyelle.rxpermissions2.a((FragmentActivity) activity).p("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").subscribe(new d(iVar));
        return false;
    }

    private void b2() {
        Fragment findFragmentById;
        if (isAdded() && (findFragmentById = getChildFragmentManager().findFragmentById(R.id.extra_area)) != null) {
            if (findFragmentById instanceof MediaFilesFragment) {
                ((MediaFilesFragment) findFragmentById).f2();
            }
            getChildFragmentManager().beginTransaction().detach(findFragmentById).commitAllowingStateLoss();
        }
    }

    public static ChatControllerFragment e2(String str) {
        ChatControllerFragment chatControllerFragment = new ChatControllerFragment();
        Bundle bundle = new Bundle();
        bundle.putString("id", str);
        chatControllerFragment.setArguments(bundle);
        return chatControllerFragment;
    }

    private void g2(View view) {
        for (int i9 = 0; i9 < this.f16881b.size(); i9++) {
            if (view == this.f16881b.get(i9)) {
                this.f16881b.get(i9).setSelected(true);
            } else {
                this.f16881b.get(i9).setSelected(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i2() {
        if (this.mImageButton == null) {
            return;
        }
        k2();
        l2();
        j2();
        h2();
    }

    private void k2() {
        if (this.f16885f == null || this.f16893n != 1) {
            return;
        }
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        FaceShortCutFragment faceShortCutFragment = new FaceShortCutFragment();
        this.f16891l = faceShortCutFragment;
        beginTransaction.replace(R.id.fast_emoji, faceShortCutFragment).commitNowAllowingStateLoss();
        W1(this.f16880a);
    }

    private void r2() {
        InputMethodManager inputMethodManager = (InputMethodManager) this.mEditText.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            this.mEditText.requestFocus();
            inputMethodManager.showSoftInput(this.mEditText, 0);
        }
    }

    public void W1(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Set set = (Set) com.guochao.faceshow.aaspring.manager.b.a("firstMeet", "IsChatFirst" + getCurrentUser().getUserId(), new h().getType());
        if (set == null) {
            set = new HashSet();
        }
        set.add(str);
        com.guochao.faceshow.aaspring.manager.b.f("firstMeet", "IsChatFirst" + getCurrentUser().getUserId(), set);
        this.f16893n = 0;
    }

    public void Z1(ChatStatusBean chatStatusBean) {
        X1(this.f16880a, new f(chatStatusBean));
    }

    public void a2() {
        SoftKeyBoardUtils.closeSoftKeyBoard(getActivity(), this.mEditText);
    }

    public ChatStatusBean c2() {
        return this.f16885f;
    }

    public int d2() {
        return this.f16882c;
    }

    public String f2() {
        return this.mEditText.getText().toString();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_layout_chat_controller;
    }

    public void h2() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        boolean z10 = getActivity() instanceof FakeLiveChatActivity;
        boolean z11 = getActivity() instanceof MvpChatActivity;
        ViewGroup.LayoutParams layoutParams = this.mViewExtra.getLayoutParams();
        if (z10 || z11) {
            ((ViewGroup) this.mVoiceButton.getParent()).setVisibility(8);
        }
        if (z11) {
            this.mFaceButton.setVisibility(4);
            this.mGiftButton.setVisibility(4);
            this.f16883d = true;
            j2();
        }
        if (z10) {
            ((ViewGroup) this.mCameraButton.getParent()).setVisibility(8);
            this.ivVideo.setVisibility(8);
        }
        this.mEditText.setOnTouchListener(new a(z10));
        if (getActivity() != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            getActivity().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            layoutParams.height = ((int) (displayMetrics.widthPixels * 0.5d)) + DensityUtil.dp2px(85.0f);
        } else {
            layoutParams.height = ((int) (getResources().getDisplayMetrics().widthPixels * 0.5d)) + DensityUtil.dp2px(85.0f);
        }
        this.mViewExtra.setLayoutParams(layoutParams);
        this.f16881b.add(this.mFaceButton);
        this.f16881b.add(this.mImageButton);
        this.f16881b.add(this.mVoiceButton);
        this.f16881b.add(this.mGiftButton);
        this.mSendButton.setEnabled(false);
        this.mEditText.setText(this.f16886g);
        this.mEditText.addTextChangedListener(this.f16890k);
        if (this.f16885f != null) {
            i2();
        }
    }

    public void j2() {
        if (this.f16882c == 5) {
            if (this.f16883d) {
                this.mImageButton.setImageResource(R.mipmap.icon_im_pic_light);
                return;
            }
            this.mImageButton.setImageResource(R.mipmap.icon_im_pic_prohibit);
            this.mCameraButton.setImageResource(R.mipmap.icon_im_camera_prohibit);
        } else if (this.f16883d) {
            this.mImageButton.setImageResource(R.mipmap.icon_im_pic_nor);
            this.mCameraButton.setImageResource(R.mipmap.icon_im_camera_nor);
        } else {
            this.mImageButton.setImageResource(R.mipmap.icon_im_pic_prohibit);
            this.mCameraButton.setImageResource(R.mipmap.icon_im_camera_prohibit);
        }
    }

    public void l2() {
        if (this.f16882c == 4) {
            if (this.f16883d) {
                this.mVoiceButton.setImageResource(R.mipmap.icon_im_voice_light);
            } else {
                this.mVoiceButton.setImageResource(R.mipmap.icon_im_voice_prohibit);
            }
        } else if (this.f16883d) {
            this.mVoiceButton.setImageResource(R.mipmap.icon_im_voice_nor);
        } else {
            this.mVoiceButton.setImageResource(R.mipmap.icon_im_voice_prohibit);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    public void m2() {
        if (this.f16891l != null) {
            getChildFragmentManager().beginTransaction().remove(this.f16891l).commitAllowingStateLoss();
            W1(this.f16880a);
        }
    }

    public void n2(boolean z10) {
        this.f16884e = z10;
        h2();
    }

    public void o2(boolean z10) {
        this.mSendButton.setEnabled(z10 && this.mEditText.getText().length() > 0);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getActivity() instanceof MvpChatActivity) {
            return;
        }
        com.guochao.faceshow.aaspring.manager.a.g().w(this, new c(), 9);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof com.guochao.faceshow.aaspring.modulars.chat.utils.f) {
            this.f16888i = (com.guochao.faceshow.aaspring.modulars.chat.utils.f) context;
        }
        if (context instanceof com.guochao.faceshow.aaspring.modulars.chat.utils.e) {
            this.f16889j = (com.guochao.faceshow.aaspring.modulars.chat.utils.e) context;
        }
    }

    @OnClick
    public void onButtonClick(View view) {
        switch (view.getId()) {
            case R.id.camera_im /* 2131362222 */:
                if (!this.f16883d) {
                    showToast(R.string.Focus_each_other_to_use);
                    return;
                } else if (getActivity() instanceof ChatActivity) {
                    ((ChatActivity) getActivity()).onCameraClick(view);
                    break;
                }
                break;
            case R.id.face /* 2131362745 */:
                if (this.f16882c == 2) {
                    r2();
                    q2(1);
                    break;
                } else {
                    q2(2);
                    break;
                }
            case R.id.gift_im /* 2131362945 */:
                if (!this.f16884e) {
                    if (this.f16885f == null) {
                        return;
                    }
                    showToast(R.string.Little_Black_House);
                    return;
                }
                q2(3);
                break;
            case R.id.photo_im /* 2131363972 */:
                if (!this.f16883d) {
                    showToast(R.string.Focus_each_other_to_use);
                    return;
                } else if (Y1(new e())) {
                    q2(5);
                    break;
                } else {
                    return;
                }
            case R.id.yuyin_im /* 2131365511 */:
                if (!this.f16883d) {
                    showToast(R.string.Focus_each_other_to_use);
                    return;
                } else {
                    q2(4);
                    break;
                }
            default:
                q2(1);
                break;
        }
        if (this.f16882c != 1) {
            SoftKeyBoardUtils.closeSoftKeyBoard(getActivity(), this.mEditText);
        }
        g2(view);
        i2();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f16880a = getArguments().getString("id");
        }
        if (bundle == null || !bundle.containsKey("id") || TextUtils.isEmpty(bundle.getString("id"))) {
            return;
        }
        this.f16880a = bundle.getString("id");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.utils.f
    public void onFaceItemClick(ResourceListItemBean resourceListItemBean, View view, int i9) {
        com.guochao.faceshow.aaspring.modulars.chat.utils.f fVar = this.f16888i;
        if (fVar != null) {
            fVar.onFaceItemClick(resourceListItemBean, view, i9);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.utils.OnFirstItemClickListener
    public void onFirstItemClick(@Nullable TextMessageBean textMessageBean, @Nullable View view, int i9) {
        if (!(getActivity() instanceof ChatActivity) || textMessageBean == null) {
            return;
        }
        ((ChatActivity) getActivity()).sendText(textMessageBean.getMsg(), true);
        m2();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("id", this.f16880a);
    }

    public void p2(String str) {
        this.f16886g = str;
        EditText editText = this.mEditText;
        if (editText != null) {
            editText.setText(str);
        }
    }

    public void q2(int i9) {
        ImageView imageView;
        if (getActivity() == null || (imageView = this.mFaceButton) == null) {
            return;
        }
        if (i9 == 2) {
            imageView.setImageResource(R.mipmap.icon_im_text);
        } else {
            imageView.setImageResource(R.mipmap.icon_im_emoji);
        }
        int i10 = this.f16882c;
        if ((i10 != i9 || i9 == 3) && this.mViewExtra != null) {
            if (i10 == 1 && i9 != 1 && (getActivity() instanceof KeyboardHeightObserver)) {
                ((KeyboardHeightObserver) getActivity()).onKeyboardHeightChanged(-1, 1);
            }
            this.f16882c = i9;
            String str = f16879o.get(i9);
            if (!TextUtils.isEmpty(str)) {
                a2();
                b2();
                Fragment fragment = this.f16887h.get(str);
                if (fragment != null) {
                    getChildFragmentManager().beginTransaction().attach(fragment).commitAllowingStateLoss();
                    this.mViewExtra.setVisibility(0);
                } else if (i9 == 3) {
                    this.mViewExtra.setVisibility(8);
                    GiftFragment.getInstance((int) R.style.AppTheme, 4, false, (String) null).show(getChildFragmentManager(), "gift_pannel");
                } else {
                    Fragment instantiate = Fragment.instantiate(getActivity(), str);
                    getChildFragmentManager().beginTransaction().add(R.id.extra_area, instantiate).commitAllowingStateLoss();
                    this.f16887h.put(str, instantiate);
                    this.mViewExtra.setVisibility(0);
                }
            } else if (i9 == 1) {
                g2(null);
                b2();
                this.mViewExtra.setVisibility(8);
            } else {
                this.mViewExtra.setVisibility(8);
            }
            if (i9 == 3) {
                g2(this.mGiftButton);
            } else if (i9 == 5) {
                g2(this.mImageButton);
            } else if (i9 == 4) {
                g2(this.mVoiceButton);
            }
            if (i9 == 1) {
                this.mSendButton.setVisibility(0);
                this.mEditText.setCursorVisible(true);
            } else {
                this.mSendButton.setVisibility(8);
                this.mEditText.setCursorVisible(false);
            }
            if (i9 != -1) {
                FragmentActivity activity = getActivity();
                if (activity instanceof ChatActivity) {
                    ((ChatActivity) activity).scrollToEnd(false, false);
                }
            }
            if (getActivity() instanceof ChatActivity) {
                ((ChatActivity) getActivity()).onChatInputModeChanged(i9);
            }
            i2();
        }
    }

    @OnClick
    public void send(View view) {
        if (getActivity() instanceof ChatActivity) {
            ((ChatActivity) getActivity()).sendText(this.mEditText.getText().toString(), false);
            m2();
        }
    }
}
