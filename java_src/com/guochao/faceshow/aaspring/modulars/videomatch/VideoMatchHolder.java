package com.guochao.faceshow.aaspring.modulars.videomatch;

import android.view.View;
import androidx.fragment.app.FragmentActivity;
import com.facebook.share.widget.ShareDialog;
import com.guochao.faceshow.aaspring.beans.LookVideBean;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\u000e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200J\u0012\u00101\u001a\u00020.2\n\b\u0002\u00102\u001a\u0004\u0018\u000103R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\n\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0011\"\u0004\b$\u0010\u0013R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0011\"\u0004\b&\u0010\u0013R\u001c\u0010'\u001a\u0004\u0018\u00010(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u00064"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;", "", "itemView", "Landroid/view/View;", "mode", "", "fragmentActivity", "Landroidx/fragment/app/FragmentActivity;", PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE, "", "fromUgc", "(Landroid/view/View;ILandroidx/fragment/app/FragmentActivity;ZZ)V", "getFragmentActivity", "()Landroidx/fragment/app/FragmentActivity;", "setFragmentActivity", "(Landroidx/fragment/app/FragmentActivity;)V", "getFromUgc", "()Z", "setFromUgc", "(Z)V", "getItemView", "()Landroid/view/View;", "setItemView", "(Landroid/view/View;)V", "lookVideBean", "Lcom/guochao/faceshow/aaspring/beans/LookVideBean;", "getLookVideBean", "()Lcom/guochao/faceshow/aaspring/beans/LookVideBean;", "setLookVideBean", "(Lcom/guochao/faceshow/aaspring/beans/LookVideBean;)V", "getMode", "()I", "setMode", "(I)V", "other", "getOther", "setOther", "getPrivate", "setPrivate", "ugcId", "", "getUgcId", "()Ljava/lang/String;", "setUgcId", "(Ljava/lang/String;)V", "bind", "", "bean", "Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoModel;", ShareDialog.WEB_SHARE_DIALOG, "onListener", "Lcom/guochao/faceshow/aaspring/modulars/videomatch/OnListener;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoMatchHolder {
    @NotNull
    private FragmentActivity fragmentActivity;
    private boolean fromUgc;
    @NotNull
    private View itemView;
    @Nullable
    private LookVideBean lookVideBean;
    private int mode;
    private boolean other;

    /* renamed from: private  reason: not valid java name */
    private boolean f1private;
    @Nullable
    private String ugcId;

    public VideoMatchHolder(@NotNull View itemView, int i9, @NotNull FragmentActivity fragmentActivity, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(fragmentActivity, "fragmentActivity");
        this.itemView = itemView;
        this.mode = i9;
        this.fragmentActivity = fragmentActivity;
        this.f1private = z10;
        this.fromUgc = z11;
    }

    public static /* synthetic */ void share$default(VideoMatchHolder videoMatchHolder, OnListener onListener, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            onListener = null;
        }
        videoMatchHolder.share(onListener);
    }

    public final void bind(@NotNull VideoModel bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
    }

    @NotNull
    public final FragmentActivity getFragmentActivity() {
        return this.fragmentActivity;
    }

    public final boolean getFromUgc() {
        return this.fromUgc;
    }

    @NotNull
    public final View getItemView() {
        return this.itemView;
    }

    @Nullable
    public final LookVideBean getLookVideBean() {
        return this.lookVideBean;
    }

    public final int getMode() {
        return this.mode;
    }

    public final boolean getOther() {
        return this.other;
    }

    public final boolean getPrivate() {
        return this.f1private;
    }

    @Nullable
    public final String getUgcId() {
        return this.ugcId;
    }

    public final void setFragmentActivity(@NotNull FragmentActivity fragmentActivity) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "<set-?>");
        this.fragmentActivity = fragmentActivity;
    }

    public final void setFromUgc(boolean z10) {
        this.fromUgc = z10;
    }

    public final void setItemView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.itemView = view;
    }

    public final void setLookVideBean(@Nullable LookVideBean lookVideBean) {
        this.lookVideBean = lookVideBean;
    }

    public final void setMode(int i9) {
        this.mode = i9;
    }

    public final void setOther(boolean z10) {
        this.other = z10;
    }

    public final void setPrivate(boolean z10) {
        this.f1private = z10;
    }

    public final void setUgcId(@Nullable String str) {
        this.ugcId = str;
    }

    public final void share(@Nullable OnListener onListener) {
    }

    public /* synthetic */ VideoMatchHolder(View view, int i9, FragmentActivity fragmentActivity, boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, i9, fragmentActivity, (i10 & 8) != 0 ? false : z10, (i10 & 16) != 0 ? false : z11);
    }
}
