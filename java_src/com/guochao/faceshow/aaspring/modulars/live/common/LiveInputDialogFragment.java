package com.guochao.faceshow.aaspring.modulars.live.common;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.modulars.vip.fragment.BuyVipContainerDialogFragment;
import com.guochao.faceshow.aaspring.utils.SoftKeyBoardListener;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class LiveInputDialogFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    String f18718a;

    /* renamed from: b  reason: collision with root package name */
    SoftKeyBoardListener.OnSoftKeyBoardChangeListener f18719b;
    @BindView
    ImageView btnSend;

    /* renamed from: c  reason: collision with root package name */
    private boolean f18720c;

    /* renamed from: e  reason: collision with root package name */
    private int f18722e;

    /* renamed from: f  reason: collision with root package name */
    public BuyVipContainerDialogFragment f18723f;

    /* renamed from: g  reason: collision with root package name */
    d f18724g;
    @BindView
    EditText mEditText;
    @BindView
    View mGuideDanmu;
    @BindView
    View mViewLiveDanmuSwitch;

    /* renamed from: d  reason: collision with root package name */
    private boolean f18721d = false;

    /* renamed from: h  reason: collision with root package name */
    boolean f18725h = false;

    /* loaded from: classes3.dex */
    class a implements SoftKeyBoardListener.OnSoftKeyBoardChangeListener {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SoftKeyBoardListener.OnSoftKeyBoardChangeListener
        public void keyBoardHide(int i9) {
            try {
                SoftKeyBoardListener.OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener = LiveInputDialogFragment.this.f18719b;
                if (onSoftKeyBoardChangeListener != null) {
                    onSoftKeyBoardChangeListener.keyBoardHide(i9 + DensityUtil.dp2px(5.0f));
                }
                LiveInputDialogFragment liveInputDialogFragment = LiveInputDialogFragment.this;
                if (liveInputDialogFragment.f18725h) {
                    return;
                }
                liveInputDialogFragment.f18725h = true;
                liveInputDialogFragment.dismissAllowingStateLoss();
            } catch (Exception unused) {
            }
        }

        @Override // com.guochao.faceshow.aaspring.utils.SoftKeyBoardListener.OnSoftKeyBoardChangeListener
        public void keyBoardShow(int i9) {
            SoftKeyBoardListener.OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener = LiveInputDialogFragment.this.f18719b;
            if (onSoftKeyBoardChangeListener != null) {
                onSoftKeyBoardChangeListener.keyBoardShow(i9 + DensityUtil.dp2px(5.0f));
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            LiveInputDialogFragment.this.btnSend.setEnabled(editable.length() > 0);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    class c implements TextView.OnEditorActionListener {
        c() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
            if (i9 != 4) {
                return false;
            }
            LiveInputDialogFragment.this.send(textView);
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(String str, boolean z10);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_live_input_dialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (this.f18721d) {
            view.findViewById(R.id.switch_live_danmu).setVisibility(8);
        } else {
            this.mGuideDanmu.setVisibility(ja.a.b().f("KEY_LIVE_DANMU") ? 0 : 8);
        }
        Context context = getContext();
        if (SpUtils.getBool(context, getCurrentUser().getCurrentUserId() + "showDanmu") && getCurrentUser().getVipLevel() == 2) {
            this.mViewLiveDanmuSwitch.setSelected(true);
        }
        if (!TextUtils.isEmpty(this.f18718a)) {
            this.mEditText.setText(this.f18718a);
            this.mEditText.setSelection(this.f18718a.length());
            this.btnSend.setEnabled(true);
        } else {
            this.btnSend.setEnabled(false);
        }
        if (this.f18722e == 1) {
            this.mEditText.setInputType(2);
        }
        SoftKeyBoardListener.setListener(getDialog().getWindow(), new a());
        try {
            SoftKeyBoardUtils.openSoftKeyBoard(this.mEditText);
        } catch (Exception unused) {
        }
        this.mEditText.addTextChangedListener(new b());
        this.mEditText.setOnEditorActionListener(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f18718a = getArguments().getString("content");
            this.f18720c = getArguments().getBoolean("mute");
            this.f18721d = getArguments().getBoolean("hideDanmu", false);
            this.f18722e = getArguments().getInt(RemoteMessageConst.INPUT_TYPE, -1);
        }
        if (EventBus.getDefault().isRegistered(this)) {
            return;
        }
        EventBus.getDefault().register(this);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog();
        if (createBottomDialog.getWindow() != null) {
            createBottomDialog.getWindow().setSoftInputMode(20);
        }
        return createBottomDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        SoftKeyBoardListener.OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener = this.f18719b;
        if (onSoftKeyBoardChangeListener != null) {
            onSoftKeyBoardChangeListener.keyBoardHide(0);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        SoftKeyBoardListener.OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener = this.f18719b;
        if (onSoftKeyBoardChangeListener != null) {
            onSoftKeyBoardChangeListener.keyBoardHide(0);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventBus(y7.j jVar) {
        if (jVar.f60140a || getActivity() == null) {
            return;
        }
        try {
            if (this.f18725h) {
                return;
            }
            this.f18725h = true;
            dismissAllowingStateLoss();
        } catch (Exception unused) {
        }
    }

    @OnClick
    public void openDanmu(View view) {
        if (getActivity() == null) {
            return;
        }
        if (!(getCurrentUser().getVipLevel() == 2)) {
            this.f18723f = BuyVipContainerDialogFragment.P1(3, getParentFragmentManager());
            ja.a.b().e("KEY_LIVE_DANMU");
            this.mGuideDanmu.setVisibility(8);
            return;
        }
        view.setSelected(!view.isSelected());
        Context context = getContext();
        SpUtils.setBool(context, getCurrentUser().getCurrentUserId() + "showDanmu", view.isSelected());
        this.mGuideDanmu.setVisibility(8);
        ja.a.b().e("KEY_LIVE_DANMU");
    }

    @OnClick
    public void send(View view) {
        ServerConfig s10 = com.guochao.faceshow.aaspring.manager.i.u().s();
        if ((s10.getUserSpeech() != 0) && s10.getLiveSpeechOperationLogVo() != null) {
            showToast(s10.getLiveSpeechOperationLogVo().getReasonContentLang());
        } else if (this.f18720c) {
            showToast(R.string.livehavemote_self);
        } else {
            String trim = this.mEditText.getText().toString().trim();
            if (TextUtils.isEmpty(trim)) {
                return;
            }
            d dVar = this.f18724g;
            if (dVar != null) {
                dVar.a(trim, this.mViewLiveDanmuSwitch.isSelected());
            }
            this.mEditText.setText("");
        }
    }

    public void setOnSendClickListener(d dVar) {
        this.f18724g = dVar;
    }

    public void setOnSoftKeyBoardChangeListener(SoftKeyBoardListener.OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener) {
        this.f18719b = onSoftKeyBoardChangeListener;
    }
}
