package com.guochao.faceshow.aaspring.modulars.translate;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.translate.a;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.PopupMenu;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.tencent.ugc.UGCTransitionRules;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.jetbrains.annotations.NotNull;
@Deprecated
/* loaded from: classes3.dex */
public class LiveTranslateDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private BaseLiveMessage f21825a;
    @BindView
    ImageView atPerson;

    /* renamed from: b  reason: collision with root package name */
    private d f21826b;
    @BindView
    TextView btnConfirm;
    @BindView
    LinearLayout llGuide;
    @BindView
    LinearLayout llTip;
    @BindView
    View someOneLay;
    @BindView
    SVGAImageView svgaImageView;
    @BindView
    ImageView translateBtn;
    @BindView
    ImageView translateLoading;
    @BindView
    TextView tvContent;
    @BindView
    TextView tvNickName;

    /* loaded from: classes3.dex */
    class a implements View.OnLongClickListener {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.translate.LiveTranslateDialog$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0215a implements PopupMenu.OnMenuItemClickListener {
            C0215a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
            public void onItemClick(PopupMenuItem popupMenuItem, View view) {
                ClipboardManager clipboardManager = (ClipboardManager) view.getContext().getSystemService("clipboard");
                ClipData newPlainText = ClipData.newPlainText("FaceCast", LiveTranslateDialog.this.tvContent.getText().toString());
                if (clipboardManager != null) {
                    clipboardManager.setPrimaryClip(newPlainText);
                }
            }
        }

        a() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new PopupMenuItem(0, view.getContext().getString(R.string.copy)));
            PopupMenu popupMenu = new PopupMenu(view.getContext());
            popupMenu.setMenus(arrayList);
            popupMenu.setOnMenuItemClickListener(new C0215a());
            popupMenu.setAlpha(0.8f);
            popupMenu.show(view);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements SVGAParser.ParseCompletion {
        b() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            LiveTranslateDialog.this.svgaImageView.setVideoItem(sVGAVideoEntity);
            LiveTranslateDialog.this.svgaImageView.startAnimation();
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, LiveTranslateDialog.this.svgaImageView);
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimationDrawable f21830a;

        c(AnimationDrawable animationDrawable) {
            this.f21830a = animationDrawable;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.translate.a.c
        public void onResponse(@Nullable List<String> list) {
            LiveTranslateDialog.this.translateBtn.setVisibility(0);
            LiveTranslateDialog.this.translateLoading.setVisibility(8);
            this.f21830a.stop();
            if (list != null && list.size() > 0) {
                LiveTranslateDialog.this.translateBtn.setClickable(false);
                LiveTranslateDialog.this.f21825a.setTranslateContent(list.get(0));
                LiveTranslateDialog.this.tvContent.setText(list.get(0));
                return;
            }
            ImageView imageView = LiveTranslateDialog.this.translateBtn;
            imageView.setSelected(!imageView.isSelected());
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(String str, String str2);
    }

    private void Q1() {
        SvgaImageViewUtils.getParser().decodeFromInputStream(getResources().openRawResource(R.raw.user_guide_live_room_click), "live_room_click", new b(), true);
    }

    private void R1() {
        if (!TextUtils.isEmpty(this.f21825a.getTranslateContent())) {
            this.tvContent.setText(this.f21825a.getTranslateContent());
            return;
        }
        this.translateBtn.setVisibility(8);
        this.translateLoading.setVisibility(0);
        AnimationDrawable animationDrawable = (AnimationDrawable) this.translateLoading.getDrawable();
        animationDrawable.start();
        com.guochao.faceshow.aaspring.modulars.translate.a.a().f(Collections.singletonList(this.f21825a.getContent()), new c(animationDrawable));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_live_translate;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f21825a = (BaseLiveMessage) MemoryCache.getInstance().clear(BaseLiveMessage.class);
        if (com.guochao.faceshow.aaspring.modulars.translate.a.a().e(this.f21825a) && ja.a.b().f("KEY_LIVE_IM_TRANSLATION_TIPS")) {
            Q1();
            this.llGuide.setVisibility(0);
            ja.a.b().e("KEY_LIVE_IM_TRANSLATION_TIPS");
        } else {
            this.llGuide.setVisibility(8);
        }
        if (BaseConfig.isChinese()) {
            this.someOneLay.setVisibility(0);
            this.btnConfirm.setVisibility(8);
            com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.b(this.translateBtn, this.atPerson);
        } else if (com.guochao.faceshow.aaspring.modulars.translate.a.a().e(this.f21825a)) {
            this.btnConfirm.setVisibility(8);
            this.someOneLay.setVisibility(0);
            this.translateBtn.setImageResource(R.drawable.bg_live_translate_selector);
            this.atPerson.setImageResource(R.mipmap.icon_at_people);
        } else {
            this.btnConfirm.setVisibility(0);
            this.someOneLay.setVisibility(8);
        }
        BaseLiveMessage baseLiveMessage = this.f21825a;
        if (baseLiveMessage != null) {
            this.tvNickName.setText(baseLiveMessage.getFromUserNickName());
            this.tvContent.setText(this.f21825a.getContent());
        }
        this.tvContent.setMovementMethod(ScrollingMovementMethod.getInstance());
        this.tvContent.setOnLongClickListener(new a());
        if (getDialog() == null || getDialog().getWindow() == null) {
            return;
        }
        getDialog().getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.NormalDialog);
        createBottomDialog.setCanceledOnTouchOutside(false);
        createBottomDialog.getWindow().setDimAmount(0.2f);
        return createBottomDialog;
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.at_person /* 2131362020 */:
                if (BaseConfig.isChinese() && i.u().s().getIsBindMobile() == 0) {
                    com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.e(getActivity(), getParentFragmentManager(), 0);
                    dismiss();
                    return;
                }
                if (this.f21826b != null) {
                    this.f21826b.a(this.f21825a.getFromUserId(), this.f21825a.getFromUserNickName() == null ? "" : this.f21825a.getFromUserNickName());
                }
                dismiss();
                return;
            case R.id.btn_confirm /* 2131362182 */:
            case R.id.iv_close /* 2131363223 */:
                dismiss();
                return;
            case R.id.ll_guide /* 2131363540 */:
            case R.id.translate_btn /* 2131364843 */:
                if (this.f21825a == null) {
                    return;
                }
                this.llTip.setVisibility(8);
                if (BaseConfig.isChinese()) {
                    ClipboardManager clipboardManager = (ClipboardManager) this.tvContent.getContext().getSystemService("clipboard");
                    ClipData newPlainText = ClipData.newPlainText("FaceCast", this.tvContent.getText().toString());
                    if (clipboardManager != null) {
                        clipboardManager.setPrimaryClip(newPlainText);
                    }
                    dismiss();
                    return;
                } else if (this.translateBtn.isSelected()) {
                    return;
                } else {
                    R1();
                    ImageView imageView = this.translateBtn;
                    imageView.setSelected(!imageView.isSelected());
                    return;
                }
            default:
                return;
        }
    }

    public void setOnTranslateListener(d dVar) {
        this.f21826b = dVar;
    }
}
