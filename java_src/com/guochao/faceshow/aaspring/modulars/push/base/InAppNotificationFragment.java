package com.guochao.faceshow.aaspring.modulars.push.base;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.utils.HandlerGetter;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0019H\u0014J\b\u0010\u001d\u001a\u00020\u0019H\u0016J\b\u0010\u001e\u001a\u00020\u0019H\u0016J\b\u0010\t\u001a\u00020\u0019H\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\b¨\u0006\u001f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;", "()V", "content", "Landroid/widget/TextView;", "getContent", "()Landroid/widget/TextView;", "setContent", "(Landroid/widget/TextView;)V", "removeSelf", "", "getRemoveSelf", "()Z", "setRemoveSelf", "(Z)V", "runnable", "Ljava/lang/Runnable;", "getRunnable", "()Ljava/lang/Runnable;", "title", "getTitle", "setTitle", "getLayoutId", "", "initView", "", NotifyType.VIBRATE, "Landroid/view/View;", "loadData", "onDetach", "onResume", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class InAppNotificationFragment extends BaseFragment {
    @BindView
    public TextView content;
    private boolean removeSelf;
    @NotNull
    private final Runnable runnable = new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.push.base.b
        @Override // java.lang.Runnable
        public final void run() {
            InAppNotificationFragment.m543runnable$lambda0(InAppNotificationFragment.this);
        }
    };
    @BindView
    public TextView title;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m542initView$lambda2(InAppNotificationFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Bundle bundle = new Bundle(this$0.getArguments());
        bundle.putString("clickFrom", "in_app_notification");
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "it.context");
        ThirdPushHelper.checkWhereToGo(context, new Intent().putExtras(bundle));
        this$0.runnable.run();
        HandlerGetter.getMainHandler().removeCallbacks(this$0.runnable);
    }

    private final void removeSelf() {
        FragmentManager supportFragmentManager;
        try {
            FragmentActivity activity = getActivity();
            if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
                return;
            }
            supportFragmentManager.popBackStack();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: runnable$lambda-0  reason: not valid java name */
    public static final void m543runnable$lambda0(InAppNotificationFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isResumed()) {
            this$0.removeSelf();
        } else {
            this$0.removeSelf = true;
        }
    }

    @NotNull
    public final TextView getContent() {
        TextView textView = this.content;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("content");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_in_app_notification;
    }

    public final boolean getRemoveSelf() {
        return this.removeSelf;
    }

    @NotNull
    public final Runnable getRunnable() {
        return this.runnable;
    }

    @NotNull
    public final TextView getTitle() {
        TextView textView = this.title;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("title");
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0040, code lost:
        if (r1.equals("230") == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
        if (r1.equals("12") == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0092, code lost:
        getContent().setText(r0.getString("content"));
        kotlin.jvm.internal.Intrinsics.checkNotNull(r12);
        hc.a.i((android.widget.ImageView) r12.findViewById(com.guochao.faceshow.R.id.icon), r0.getString("live_img"), com.guochao.faceshow.R.mipmap.ic_launcher, new jc.e(getActivity(), 8));
     */
    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initView(@org.jetbrains.annotations.Nullable android.view.View r12) {
        /*
            r11 = this;
            android.os.Bundle r0 = r11.getArguments()
            if (r0 == 0) goto Ldd
            android.widget.TextView r1 = r11.getTitle()
            java.lang.String r2 = "title"
            java.lang.String r2 = r0.getString(r2)
            r1.setText(r2)
            java.lang.String r1 = "type_id"
            java.lang.String r1 = r0.getString(r1)
            java.lang.String r2 = "content"
            r3 = 8
            r4 = 2131689782(0x7f0f0136, float:1.900859E38)
            r5 = 2131363055(0x7f0a04ef, float:1.8345908E38)
            if (r1 == 0) goto Lb7
            int r6 = r1.hashCode()
            r7 = 1569(0x621, float:2.199E-42)
            java.lang.String r8 = "live_img"
            if (r6 == r7) goto L89
            r7 = 1699(0x6a3, float:2.381E-42)
            if (r6 == r7) goto L44
            r7 = 49679(0xc20f, float:6.9615E-41)
            if (r6 == r7) goto L3a
            goto Lb7
        L3a:
            java.lang.String r6 = "230"
            boolean r1 = r1.equals(r6)
            if (r1 != 0) goto L92
            goto Lb7
        L44:
            java.lang.String r6 = "58"
            boolean r1 = r1.equals(r6)
            if (r1 != 0) goto L4d
            goto Lb7
        L4d:
            android.widget.TextView r1 = r11.getContent()
            android.content.Context r2 = r11.getContext()
            if (r2 == 0) goto L6b
            r6 = 2131887346(0x7f1204f2, float:1.9409296E38)
            r7 = 1
            java.lang.Object[] r7 = new java.lang.Object[r7]
            r9 = 0
            java.lang.String r10 = "nickName"
            java.lang.String r10 = r0.getString(r10)
            r7[r9] = r10
            java.lang.String r2 = r2.getString(r6, r7)
            goto L6c
        L6b:
            r2 = 0
        L6c:
            r1.setText(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r12)
            android.view.View r1 = r12.findViewById(r5)
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            java.lang.String r0 = r0.getString(r8)
            jc.e r2 = new jc.e
            androidx.fragment.app.FragmentActivity r5 = r11.getActivity()
            r2.<init>(r5, r3)
            hc.a.i(r1, r0, r4, r2)
            goto Ldd
        L89:
            java.lang.String r6 = "12"
            boolean r1 = r1.equals(r6)
            if (r1 != 0) goto L92
            goto Lb7
        L92:
            android.widget.TextView r1 = r11.getContent()
            java.lang.String r2 = r0.getString(r2)
            r1.setText(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r12)
            android.view.View r1 = r12.findViewById(r5)
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            java.lang.String r0 = r0.getString(r8)
            jc.e r2 = new jc.e
            androidx.fragment.app.FragmentActivity r5 = r11.getActivity()
            r2.<init>(r5, r3)
            hc.a.i(r1, r0, r4, r2)
            goto Ldd
        Lb7:
            android.widget.TextView r1 = r11.getContent()
            java.lang.String r2 = r0.getString(r2)
            r1.setText(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r12)
            android.view.View r1 = r12.findViewById(r5)
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            java.lang.String r2 = "icon"
            java.lang.String r0 = r0.getString(r2)
            jc.e r2 = new jc.e
            androidx.fragment.app.FragmentActivity r5 = r11.getActivity()
            r2.<init>(r5, r3)
            hc.a.i(r1, r0, r4, r2)
        Ldd:
            if (r12 == 0) goto Lf0
            r0 = 2131363877(0x7f0a0825, float:1.8347575E38)
            android.view.View r12 = r12.findViewById(r0)
            if (r12 == 0) goto Lf0
            com.guochao.faceshow.aaspring.modulars.push.base.a r0 = new com.guochao.faceshow.aaspring.modulars.push.base.a
            r0.<init>()
            r12.setOnClickListener(r0)
        Lf0:
            android.os.Handler r12 = com.guochao.faceshow.utils.HandlerGetter.getMainHandler()
            java.lang.Runnable r0 = r11.runnable
            r1 = 7000(0x1b58, double:3.4585E-320)
            r12.postDelayed(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.push.base.InAppNotificationFragment.initView(android.view.View):void");
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        HandlerGetter.getMainHandler().removeCallbacks(this.runnable);
        InAppNotificationUtils.INSTANCE.setNotificationShowing(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.removeSelf) {
            removeSelf();
        }
    }

    public final void setContent(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.content = textView;
    }

    public final void setRemoveSelf(boolean z10) {
        this.removeSelf = z10;
    }

    public final void setTitle(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.title = textView;
    }
}
