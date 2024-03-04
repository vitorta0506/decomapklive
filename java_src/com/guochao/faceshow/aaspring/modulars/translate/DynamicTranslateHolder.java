package com.guochao.faceshow.aaspring.modulars.translate;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.graphics.drawable.AnimationDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.modulars.translate.a;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.PopupMenu;
import com.guochao.faceshow.aaspring.utils.TopicAndAtTextHelper;
import com.guochao.faceshow.aaspring.views.TopicAndAtTextView;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.HandlerGetter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class DynamicTranslateHolder {

    /* renamed from: a  reason: collision with root package name */
    private BaseDynamicViewHolder f21809a;

    /* renamed from: b  reason: collision with root package name */
    private View f21810b;

    /* renamed from: c  reason: collision with root package name */
    private DynamicBean f21811c;
    @BindView
    TextView hideTranslateBtn;
    @BindView
    TextView translateBtn;
    @BindView
    TopicAndAtTextView translateContent;
    @BindView
    View translateContentLay;
    @BindView
    ImageView translateLoading;

    /* loaded from: classes3.dex */
    class a implements TopicAndAtTextHelper.OnDoubleTapClickListener {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.TopicAndAtTextHelper.OnDoubleTapClickListener
        public void onDoubleTap() {
            if (DynamicTranslateHolder.this.f21809a != null) {
                DynamicTranslateHolder.this.f21809a.q();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnLongClickListener {

        /* loaded from: classes3.dex */
        class a implements PopupMenu.OnMenuItemClickListener {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
            public void onItemClick(PopupMenuItem popupMenuItem, View view) {
                ClipboardManager clipboardManager = (ClipboardManager) view.getContext().getSystemService("clipboard");
                ClipData newPlainText = ClipData.newPlainText("FaceCast", DynamicTranslateHolder.this.f21811c.getTranslateContent());
                if (clipboardManager != null) {
                    clipboardManager.setPrimaryClip(newPlainText);
                }
            }
        }

        /* renamed from: com.guochao.faceshow.aaspring.modulars.translate.DynamicTranslateHolder$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0214b implements PopupMenu.OnDismissListener {
            C0214b() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.PopupMenu.OnDismissListener
            public void onDismiss() {
                DynamicTranslateHolder.this.translateContent.a(true);
            }
        }

        b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new PopupMenuItem(0, view.getContext().getString(R.string.copy)));
            PopupMenu popupMenu = new PopupMenu(view.getContext());
            popupMenu.setMenus(arrayList);
            popupMenu.setOnMenuItemClickListener(new a());
            popupMenu.setOnDismissListener(new C0214b());
            popupMenu.setAlpha(0.8f);
            popupMenu.show(view);
            DynamicTranslateHolder.this.translateContent.a(false);
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class c implements a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimationDrawable f21816a;

        c(AnimationDrawable animationDrawable) {
            this.f21816a = animationDrawable;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.translate.a.c
        public void onResponse(@Nullable List<String> list) {
            this.f21816a.stop();
            DynamicTranslateHolder.this.f(list);
        }
    }

    public DynamicTranslateHolder(BaseDynamicViewHolder baseDynamicViewHolder, View view) {
        this.f21809a = baseDynamicViewHolder;
        this.f21810b = view;
        ButterKnife.c(this, view);
        this.translateContent.getTopicAndAtTextHelper().setOnDoubleTapClickListener(new a());
        this.translateContent.setOnLongClickListener(new b());
    }

    private void e() {
        if (this.f21809a.getView(R.id.like_tips).getVisibility() == 0) {
            HandlerGetter.getMainHandler().post(this.f21809a.f22562l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(List<String> list) {
        if ((this.f21810b.getContext() instanceof Activity) && (((Activity) this.f21810b.getContext()).isFinishing() || ((Activity) this.f21810b.getContext()).isDestroyed())) {
            return;
        }
        this.translateLoading.setVisibility(8);
        if (list != null && list.size() != 0) {
            this.translateContentLay.setVisibility(0);
            this.translateContent.setText(list.get(0));
            this.f21811c.setTranslateContent(list.get(0));
            this.hideTranslateBtn.setVisibility(0);
            this.translateBtn.setVisibility(8);
            this.f21811c.setShowTranslate(true);
        } else {
            this.translateContentLay.setVisibility(8);
            this.translateBtn.setVisibility(0);
            this.hideTranslateBtn.setVisibility(8);
            this.f21811c.setShowTranslate(false);
        }
        e();
    }

    public void d(DynamicBean dynamicBean) {
        this.f21810b.setVisibility(com.guochao.faceshow.aaspring.modulars.translate.a.a().c(dynamicBean) ? 0 : 8);
        this.f21811c = dynamicBean;
        this.translateLoading.setVisibility(8);
        ((AnimationDrawable) this.translateLoading.getDrawable()).stop();
        if (!dynamicBean.isShowTranslate() && !BaseConfig.isChinese()) {
            this.translateContentLay.setVisibility(8);
            this.hideTranslateBtn.setVisibility(8);
            this.translateBtn.setVisibility(0);
            return;
        }
        this.translateContentLay.setVisibility(0);
        this.translateContent.setText(dynamicBean.getTranslateContent());
        this.hideTranslateBtn.setVisibility(0);
        this.translateBtn.setVisibility(8);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 != R.id.hide_translate_btn) {
            if (id2 == R.id.translate_btn && this.f21811c != null) {
                this.translateLoading.setVisibility(0);
                this.translateContentLay.setVisibility(8);
                this.translateBtn.setVisibility(8);
                if (!TextUtils.isEmpty(this.f21811c.getTranslateContent())) {
                    f(Collections.singletonList(this.f21811c.getTranslateContent()));
                    return;
                }
                AnimationDrawable animationDrawable = (AnimationDrawable) this.translateLoading.getDrawable();
                animationDrawable.start();
                com.guochao.faceshow.aaspring.modulars.translate.a.a().f(Collections.singletonList(this.f21811c.getContent()), new c(animationDrawable));
                return;
            }
            return;
        }
        this.translateContentLay.setVisibility(8);
        this.hideTranslateBtn.setVisibility(8);
        this.translateBtn.setVisibility(0);
        this.f21811c.setShowTranslate(false);
        e();
    }
}
