package com.guochao.faceshow.aaspring.modulars.translate;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.graphics.Paint;
import android.graphics.drawable.AnimationDrawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.translate.a;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.TopicHomePageActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.VideoTopicsActivity;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.PopupMenu;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.TopicAndAtTextHelper;
import com.guochao.faceshow.aaspring.views.ExpandableImageTextView;
import com.guochao.faceshow.bean.MyTopicAndName;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class VideoTranslateHolder {

    /* renamed from: a  reason: collision with root package name */
    private final View f21848a;

    /* renamed from: b  reason: collision with root package name */
    private VideoItem f21849b;

    /* renamed from: c  reason: collision with root package name */
    private List<MyTopicAndName> f21850c;
    @BindView
    ImageView ivExpandable;
    @BindView
    TextView translateBtn;
    @BindView
    View translateContentLay;
    @BindView
    ImageView translateLoading;
    @BindView
    ExpandableImageTextView tvExpandable;

    /* loaded from: classes3.dex */
    class a implements View.OnLongClickListener {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.translate.VideoTranslateHolder$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0216a implements PopupMenu.OnMenuItemClickListener {
            C0216a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
            public void onItemClick(PopupMenuItem popupMenuItem, View view) {
                ClipboardManager clipboardManager = (ClipboardManager) view.getContext().getSystemService("clipboard");
                ClipData newPlainText = ClipData.newPlainText("FaceCast", VideoTranslateHolder.this.tvExpandable.getFullText());
                if (clipboardManager != null) {
                    clipboardManager.setPrimaryClip(newPlainText);
                }
            }
        }

        /* loaded from: classes3.dex */
        class b implements PopupMenu.OnDismissListener {
            b() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.PopupMenu.OnDismissListener
            public void onDismiss() {
                VideoTranslateHolder.this.tvExpandable.b(true);
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
            popupMenu.setOnMenuItemClickListener(new C0216a());
            popupMenu.setAlpha(0.8f);
            popupMenu.setOnDismissListener(new b());
            VideoTranslateHolder.this.tvExpandable.b(false);
            popupMenu.show(view);
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class b implements ExpandableImageTextView.c {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.views.ExpandableImageTextView.c
        public void a() {
            VideoTranslateHolder.this.ivExpandable.setVisibility(0);
        }

        @Override // com.guochao.faceshow.aaspring.views.ExpandableImageTextView.c
        public void b(String str) {
            UserHomePageAct.startByUserName(VideoTranslateHolder.this.f21848a.getContext(), str);
        }

        @Override // com.guochao.faceshow.aaspring.views.ExpandableImageTextView.c
        public void c(String str) {
            String str2;
            if (VideoTranslateHolder.this.f21850c != null && !VideoTranslateHolder.this.f21850c.isEmpty()) {
                for (MyTopicAndName myTopicAndName : VideoTranslateHolder.this.f21850c) {
                    if (myTopicAndName != null && (str2 = myTopicAndName.content) != null && str2.length() >= 2 && myTopicAndName.content.substring(1).equals(str)) {
                        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_topic_click);
                        Intent intent = new Intent(VideoTranslateHolder.this.f21848a.getContext(), VideoTopicsActivity.class);
                        intent.putExtra("topic_id", myTopicAndName.userId);
                        intent.putExtra("titleName", StringUtils.removeInvisibleCharBeforeWhiteSpace(myTopicAndName.content));
                        intent.putExtra("type_id", VideoTranslateHolder.this.f21849b.getTypeId());
                        intent.putExtra("tyPeName", StringUtils.removeInvisibleCharBeforeWhiteSpace(VideoTranslateHolder.this.f21849b.getTypeName()));
                        VideoTranslateHolder.this.f21848a.getContext().startActivity(intent);
                        return;
                    }
                }
                return;
            }
            UgcTopicBean ugcTopicBean = new UgcTopicBean();
            ugcTopicBean.setTopicName(str);
            TopicHomePageActivity.r0(VideoTranslateHolder.this.f21848a.getContext(), ugcTopicBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends TypeToken<List<MyTopicAndName>> {
        c() {
        }
    }

    /* loaded from: classes3.dex */
    class d implements a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimationDrawable f21856a;

        d(AnimationDrawable animationDrawable) {
            this.f21856a = animationDrawable;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.translate.a.c
        public void onResponse(@Nullable List<String> list) {
            this.f21856a.stop();
            VideoTranslateHolder.this.g(list);
        }
    }

    public VideoTranslateHolder(View view) {
        ButterKnife.c(this, view);
        this.f21848a = view;
        this.ivExpandable.setVisibility(8);
        this.tvExpandable.setOnLongClickListener(new a());
        Paint.FontMetrics fontMetrics = this.tvExpandable.getPaint().getFontMetrics();
        this.ivExpandable.getLayoutParams().height = (int) Math.ceil(fontMetrics.descent - fontMetrics.ascent);
        this.tvExpandable.setOnShowExpand(new b());
    }

    private void f(VideoItem videoItem, boolean z10) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (!TextUtils.isEmpty(videoItem.getVideoIntroductionJson())) {
            List<MyTopicAndName> list = (List) GsonGetter.getGson().fromJson(videoItem.getVideoIntroductionJson(), new c().getType());
            this.f21850c = list;
            if (list != null && !list.isEmpty()) {
                for (MyTopicAndName myTopicAndName : this.f21850c) {
                    String str = myTopicAndName.content;
                    if (str == null) {
                        str = "";
                    }
                    int i9 = myTopicAndName.type;
                    if (i9 == 2) {
                        spannableStringBuilder.append((CharSequence) "#").append((CharSequence) StringUtils.addInvisibleCharBeforeWhiteSpace(str.substring(1))).append((CharSequence) " ");
                    } else if (i9 == 3) {
                        spannableStringBuilder.append((CharSequence) "@").append((CharSequence) StringUtils.addInvisibleCharBeforeWhiteSpace(str.substring(1))).append((CharSequence) " ");
                    } else {
                        spannableStringBuilder.append((CharSequence) str);
                    }
                }
            } else {
                spannableStringBuilder.append((CharSequence) videoItem.getVideoIntroductionContent());
            }
        } else if (!TextUtils.isEmpty(videoItem.getVideoIntroductionContent())) {
            spannableStringBuilder.append((CharSequence) videoItem.getVideoIntroductionContent());
        } else {
            spannableStringBuilder.append((CharSequence) videoItem.getVideoIntroductionContent());
        }
        videoItem.setUnTranslateContent(spannableStringBuilder);
        if (TextUtils.isEmpty(spannableStringBuilder)) {
            this.f21848a.setVisibility(8);
        } else {
            this.f21848a.setVisibility(0);
            if (z10) {
                if (videoItem.isShowTranslate()) {
                    this.tvExpandable.setRealText(videoItem.getTranslateContent());
                } else {
                    this.tvExpandable.setRealText(spannableStringBuilder);
                }
            } else {
                this.tvExpandable.setMeasureText(spannableStringBuilder);
            }
        }
        this.tvExpandable.setMovementMethod(TopicAndAtTextHelper.CustomMovementMethod.getInstance());
        if (com.guochao.faceshow.aaspring.modulars.translate.a.a().d(videoItem) && !BaseConfig.isChinese()) {
            this.translateContentLay.setVisibility(0);
            if (videoItem.isShowTranslate()) {
                this.translateBtn.setText(this.f21848a.getContext().getString(R.string.translate_view_original));
                return;
            } else {
                this.translateBtn.setText(this.f21848a.getContext().getString(R.string.translate_language));
                return;
            }
        }
        this.translateContentLay.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(List<String> list) {
        this.translateLoading.setVisibility(8);
        this.translateBtn.setVisibility(0);
        ((ViewGroup.MarginLayoutParams) this.translateContentLay.getLayoutParams()).topMargin = DensityUtil.dp2px(0.0f);
        this.ivExpandable.setVisibility(8);
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f21849b.setTranslateContent(list.get(0));
        this.f21849b.setShowTranslate(true);
        this.tvExpandable.setRealText(list.get(0));
        this.translateBtn.setText(BaseApplication.getInstance().getString(R.string.translate_view_original));
    }

    public void e(VideoItem videoItem, boolean z10) {
        this.f21849b = videoItem;
        f(videoItem, z10 || videoItem.isShowExpand() || videoItem.isShowTranslate());
        this.translateLoading.setVisibility(8);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 != R.id.iv_expandable) {
            if (id2 == R.id.translate_btn && this.f21849b != null) {
                if (this.f21848a.getContext().getString(R.string.translate_language).equals(this.translateBtn.getText().toString())) {
                    this.translateLoading.setVisibility(0);
                    this.translateBtn.setVisibility(8);
                    ((ViewGroup.MarginLayoutParams) this.translateContentLay.getLayoutParams()).topMargin = DensityUtil.dp2px(7.5f);
                    if (!TextUtils.isEmpty(this.f21849b.getTranslateContent())) {
                        g(Collections.singletonList(this.f21849b.getTranslateContent()));
                        return;
                    }
                    AnimationDrawable animationDrawable = (AnimationDrawable) this.translateLoading.getDrawable();
                    animationDrawable.start();
                    com.guochao.faceshow.aaspring.modulars.translate.a.a().f(Collections.singletonList(this.f21849b.getUnTranslateContent().toString()), new d(animationDrawable));
                    return;
                }
                this.f21849b.setShowTranslate(false);
                VideoItem videoItem = this.f21849b;
                f(videoItem, videoItem.isShowExpand());
                this.translateBtn.setText(BaseApplication.getInstance().getString(R.string.translate_language));
                return;
            }
            return;
        }
        this.f21849b.setShowExpand(true);
        ExpandableImageTextView expandableImageTextView = this.tvExpandable;
        expandableImageTextView.setRealText(expandableImageTextView.getFullText());
        this.ivExpandable.setVisibility(8);
    }
}
