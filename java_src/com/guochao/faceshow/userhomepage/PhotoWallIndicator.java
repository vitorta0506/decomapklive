package com.guochao.faceshow.userhomepage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0019B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0014\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014J\b\u0010\u0016\u001a\u00020\u0012H\u0002J\u000e\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\tR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "onItemSelectListener", "Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator$OnItemSelectListener;", "getOnItemSelectListener", "()Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator$OnItemSelectListener;", "setOnItemSelectListener", "(Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator$OnItemSelectListener;)V", "bindData", "", "avatars", "", "", "init", "onPageSelected", "position", "OnItemSelectListener", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class PhotoWallIndicator extends LinearLayout {
    @Nullable
    private OnItemSelectListener onItemSelectListener;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator$OnItemSelectListener;", "", "onSelect", "", "position", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface OnItemSelectListener {
        void onSelect(int i9);
    }

    public PhotoWallIndicator(@Nullable Context context) {
        super(context, null, 0);
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindData$lambda-1$lambda-0  reason: not valid java name */
    public static final void m774bindData$lambda1$lambda0(PhotoWallIndicator this$0, List avatars, String avatar, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(avatars, "$avatars");
        Intrinsics.checkNotNullParameter(avatar, "$avatar");
        OnItemSelectListener onItemSelectListener = this$0.onItemSelectListener;
        if (onItemSelectListener != null) {
            onItemSelectListener.onSelect(avatars.indexOf(avatar));
        }
    }

    private final void init() {
        setOrientation(0);
        setGravity(17);
    }

    public final void bindData(@NotNull final List<String> avatars) {
        Intrinsics.checkNotNullParameter(avatars, "avatars");
        removeAllViews();
        for (final String str : avatars) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.item_user_avatar_img, (ViewGroup) this, false);
            inflate.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PhotoWallIndicator.m774bindData$lambda1$lambda0(PhotoWallIndicator.this, avatars, str, view);
                }
            });
            hc.a.r((ImageView) inflate.findViewById(R.id.image_view), str, R.mipmap.default_head, 4);
            addView(inflate);
        }
    }

    @Nullable
    public final OnItemSelectListener getOnItemSelectListener() {
        return this.onItemSelectListener;
    }

    public final void onPageSelected(int i9) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt != null) {
                View findViewById = childAt.findViewById(R.id.image_view);
                View findViewById2 = childAt.findViewById(R.id.bg_image_view);
                if (i10 == i9) {
                    findViewById.getLayoutParams().width = DensityUtil.dp2px(60.0f);
                    findViewById.getLayoutParams().height = DensityUtil.dp2px(60.0f);
                    findViewById2.getLayoutParams().width = DensityUtil.dp2px(60.0f);
                    findViewById2.getLayoutParams().height = DensityUtil.dp2px(60.0f);
                    findViewById2.setVisibility(0);
                } else {
                    findViewById.getLayoutParams().width = DensityUtil.dp2px(48.0f);
                    findViewById.getLayoutParams().height = DensityUtil.dp2px(48.0f);
                    findViewById2.getLayoutParams().width = DensityUtil.dp2px(48.0f);
                    findViewById2.getLayoutParams().height = DensityUtil.dp2px(48.0f);
                    findViewById2.setVisibility(8);
                }
            }
        }
    }

    public final void setOnItemSelectListener(@Nullable OnItemSelectListener onItemSelectListener) {
        this.onItemSelectListener = onItemSelectListener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhotoWallIndicator(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
        init();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhotoWallIndicator(@NotNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        Intrinsics.checkNotNullParameter(context, "context");
        init();
    }
}
