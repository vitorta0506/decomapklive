package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.lifecycle.LifecycleOwnerKt;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.dialog.FaceCastDialog;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import java.util.Calendar;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\b\u0010\u0018\u001a\u00020\u0004H\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u001a\u001a\u00020\u0015H\u0016J\u0012\u0010\u001b\u001a\u00020\u00152\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010\u001e\u001a\u00020\u00152\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010\u001f\u001a\u00020 2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010¨\u0006\""}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;", "()V", "scene", "", "scrollLayout", "Landroid/widget/ScrollView;", "getScrollLayout", "()Landroid/widget/ScrollView;", "setScrollLayout", "(Landroid/widget/ScrollView;)V", "sure", "Landroid/widget/TextView;", "getSure", "()Landroid/widget/TextView;", "setSure", "(Landroid/widget/TextView;)V", "tvWaitingTip", "getTvWaitingTip", "setTvWaitingTip", "close", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "getLayoutId", "initView", "loadData", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HealthLiveTipsFragment extends BaseDialogFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String LIVE_TIP_AR_1 = "BuzzCast هي عبارة عن منصة بث مباشر اجتماعي صديقة للبيئة وصحية. إذا كان هناك أي من الانتهاكات التالية ، فستقوم BuzzCast بحظر / تجميد حساب المضيف. في الحالات الشديدة ، سيتم إلغاء العقد ، وسيتم إلغاء العمولة والوكيل. يجب على جميع الوكلاء / المضيفين الانتباه والالتزام بقواعدنا.\n\nأ - عرض مطول لأجزاء موضعية حساسة من الجسم وأفعال موحية جنسيا ، مثل الضغط على الثدي ، ومداعبة الأجزاء الحساسة من الجسم ، وغير ذلك من السلوكيات الموحية جنسيا.\nب - لا يمكن أن تصدر أصوات تأوه أو أصوات أخرى غير قانونية\nج- لا يوجد محتوى إباحي مثل الأعضاء الجنسية\nد - لا يمكن تشغيل مقاطع الفيديو الإباحية ، والفيديو ، وما إلى ذلك.\nهـ - لا ترتدي جوارب شبكية ، ملابس شفافة ، ملابس داخلية وغيرها من الملابس الموحية جنسيًا\nو- يجب ألا يزيد الصدر المكشوف عن ثلثي الفستان\nح. لا يمكن عرض الألعاب الجنسية\nأنا لا يمكن للرجال دخول البلاد عاريات";
    @NotNull
    public static final String PROFILE_TIP_AR_1 = "1. شبكات اجتماعية صحية. إذا كان المحتوى يحتوي على محتوى بذيء ، أو إباحي ، أو تعرض ، أو عنف ، أو معاملات خاصة ، وما إلى ذلك ، فسيتم تعليق الحساب.";
    @NotNull
    public static final String PROFILE_TIP_AR_2 = "2. بعد الحفظ ، سيدخل تلقائيًا قائمة انتظار المراجعة ، ويمكن للمستخدمين رؤية البيانات المحدثة فقط بعد اجتياز المراجعة.";
    @NotNull
    public static final String UGC_TIP_AR_1 = "1. صحي اجتماعيا. سيتم تعليق المشاركات التي تتضمن محتوى بذيئًا أو إباحيًا أو فاحشًا أو عنيفًا أو خاصًا أو غير ذلك.";
    @NotNull
    public static final String UGC_TIP_AR_2 = "2. يمكن للمؤلف حذف وظيفة التعليق ويطلب من الجمهور التحدث بطريقة حضارية.";
    @NotNull
    public static final String UGC_TIP_AR_3 = "3. بعد النشر ، سيدخل تلقائيًا قائمة انتظار المراجعة ، ويمكن للمستخدمين رؤية المحتوى فقط بعد اجتياز المراجعة.";
    private int scene;
    @BindView
    public ScrollView scrollLayout;
    @BindView
    public TextView sure;
    @BindView
    public TextView tvWaitingTip;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment$Companion;", "", "()V", "LIVE_TIP_AR_1", "", "PROFILE_TIP_AR_1", "PROFILE_TIP_AR_2", "UGC_TIP_AR_1", "UGC_TIP_AR_2", "UGC_TIP_AR_3", "checkShouldShow", "", "scene", "", "getInstance", "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final boolean checkShouldShow(int i9) {
            BaseApplication baseApplication = BaseApplication.getInstance();
            String str = "health_tips_" + i9;
            long j10 = SpUtils.getLong(baseApplication, str);
            long currentTimeMillis = System.currentTimeMillis();
            if (j10 <= 0) {
                SpUtils.setLong(baseApplication, str, currentTimeMillis);
                return true;
            }
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j10);
            if (calendar.get(6) == calendar2.get(6) && calendar.get(1) == calendar2.get(1)) {
                return false;
            }
            SpUtils.setLong(baseApplication, str, currentTimeMillis);
            return true;
        }

        @JvmStatic
        @NotNull
        public final HealthLiveTipsFragment getInstance(int i9) {
            HealthLiveTipsFragment healthLiveTipsFragment = new HealthLiveTipsFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("scene", i9);
            healthLiveTipsFragment.setArguments(bundle);
            return healthLiveTipsFragment;
        }
    }

    @JvmStatic
    public static final boolean checkShouldShow(int i9) {
        return Companion.checkShouldShow(i9);
    }

    @JvmStatic
    @NotNull
    public static final HealthLiveTipsFragment getInstance(int i9) {
        return Companion.getInstance(i9);
    }

    @OnClick
    public final void close(@Nullable View view) {
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_health_livetips;
    }

    @NotNull
    public final ScrollView getScrollLayout() {
        ScrollView scrollView = this.scrollLayout;
        if (scrollView != null) {
            return scrollView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("scrollLayout");
        return null;
    }

    @NotNull
    public final TextView getSure() {
        TextView textView = this.sure;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sure");
        return null;
    }

    @NotNull
    public final TextView getTvWaitingTip() {
        TextView textView = this.tvWaitingTip;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvWaitingTip");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        int i9 = this.scene;
        if (i9 != 0) {
            if (i9 == 1 || i9 == 2) {
                if (q7.a.e().j()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(UGC_TIP_AR_1);
                    sb2.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                    sb2.append(UGC_TIP_AR_2);
                    sb2.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                    sb2.append(UGC_TIP_AR_3);
                    getTvWaitingTip().setText(sb2);
                } else {
                    getTvWaitingTip().setText(R.string.video_tips_for_google);
                }
            } else if (i9 == 3) {
                if (q7.a.e().j()) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(PROFILE_TIP_AR_1);
                    sb3.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                    sb3.append(PROFILE_TIP_AR_2);
                    getTvWaitingTip().setText(sb3);
                } else {
                    getTvWaitingTip().setText(R.string.profile_tips_for_google);
                }
                ScrollView scrollLayout = getScrollLayout();
                ViewGroup.LayoutParams layoutParams = getScrollLayout().getLayoutParams();
                layoutParams.height = -2;
                scrollLayout.setLayoutParams(layoutParams);
            }
        } else if (q7.a.e().j()) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(LIVE_TIP_AR_1);
            getTvWaitingTip().setText(sb4);
        } else {
            getTvWaitingTip().setText(R.string.live_tips_for_google);
        }
        getSure().setEnabled(false);
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getMain(), null, new HealthLiveTipsFragment$initView$2(this, null), 2, null);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(false);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            Intrinsics.checkNotNull(arguments);
            this.scene = arguments.getInt("scene", 0);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        setParamsHeight(-1);
        FaceCastDialog createCenterDialog = createCenterDialog();
        Intrinsics.checkNotNullExpressionValue(createCenterDialog, "createCenterDialog()");
        return createCenterDialog;
    }

    public final void setScrollLayout(@NotNull ScrollView scrollView) {
        Intrinsics.checkNotNullParameter(scrollView, "<set-?>");
        this.scrollLayout = scrollView;
    }

    public final void setSure(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.sure = textView;
    }

    public final void setTvWaitingTip(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvWaitingTip = textView;
    }
}
