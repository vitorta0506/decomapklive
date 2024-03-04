package com.guochao.faceshow.aaspring.modulars.friend.adapter;

import android.net.Uri;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.c;
import com.bumptech.glide.load.resource.bitmap.y;
import com.bumptech.glide.request.h;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J!\u0010\u0007\u001a\u0004\u0018\u0001H\b\"\n\b\u0000\u0010\b*\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u001e\u0010\f\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nJ\u001e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\nJ\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nJ\u0010\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0019J\u001e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nJ\u0016\u0010\u001b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nJ\u0018\u0010\u001c\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eJ\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010 \u001a\u00020\nR\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "mViews", "Landroid/util/SparseArray;", "getView", ExifInterface.GPS_DIRECTION_TRUE, "viewId", "", "(I)Landroid/view/View;", "setImageByUri", "url", "Landroid/net/Uri;", "placeHolder", "setImageByUrl", "", "setImageResource", "resourceId", "setOnIntemClickListener", "", "listener", "Landroid/view/View$OnClickListener;", "setOnIntemLongClickListener", "Landroid/view/View$OnLongClickListener;", "setRoundImageByUri", "setRoundImageResource", "setText", ViewHierarchyConstants.TEXT_KEY, "", "setViewVisibility", "visibility", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BaseViewHolder extends RecyclerView.ViewHolder {
    @NotNull
    private final SparseArray<View> mViews;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseViewHolder(@Nullable View view) {
        super(view);
        Intrinsics.checkNotNull(view);
        this.mViews = new SparseArray<>();
    }

    @Nullable
    public final <T extends View> T getView(int i9) {
        T t10 = (T) this.mViews.get(i9);
        if (t10 == null) {
            T t11 = (T) this.itemView.findViewById(i9);
            this.mViews.put(i9, t11);
            return t11;
        }
        return t10;
    }

    @NotNull
    public final BaseViewHolder setImageByUri(int i9, @NotNull Uri url, int i10) {
        Intrinsics.checkNotNullParameter(url, "url");
        View view = getView(i9);
        Intrinsics.checkNotNull(view);
        c.u(this.itemView.getContext()).n(url).b0(i10).Q0((ImageView) view);
        return this;
    }

    @NotNull
    public final BaseViewHolder setImageByUrl(int i9, @NotNull String url, int i10) {
        Intrinsics.checkNotNullParameter(url, "url");
        View view = getView(i9);
        Intrinsics.checkNotNull(view);
        c.u(this.itemView.getContext()).r(url).b0(i10).Q0((ImageView) view);
        return this;
    }

    @NotNull
    public final BaseViewHolder setImageResource(int i9, int i10) {
        View view = getView(i9);
        Intrinsics.checkNotNull(view);
        ((ImageView) view).setImageResource(i10);
        return this;
    }

    public final void setOnIntemClickListener(@Nullable View.OnClickListener onClickListener) {
        this.itemView.setOnClickListener(onClickListener);
    }

    public final void setOnIntemLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.itemView.setOnLongClickListener(onLongClickListener);
    }

    @NotNull
    public final BaseViewHolder setRoundImageByUri(int i9, @NotNull Uri url, int i10) {
        Intrinsics.checkNotNullParameter(url, "url");
        View view = getView(i9);
        Intrinsics.checkNotNull(view);
        c.u(this.itemView.getContext()).n(url).b0(i10).a(h.x0(new y(50))).Q0((ImageView) view);
        return this;
    }

    @NotNull
    public final BaseViewHolder setRoundImageResource(int i9, int i10) {
        View view = getView(i9);
        Intrinsics.checkNotNull(view);
        c.u(((ImageView) view).getContext()).p(Integer.valueOf(i10)).a(h.x0(new y(5)));
        return this;
    }

    @NotNull
    public final BaseViewHolder setText(int i9, @Nullable CharSequence charSequence) {
        TextView textView = (TextView) getView(i9);
        if (textView != null) {
            textView.setText(charSequence);
        }
        return this;
    }

    @NotNull
    public final BaseViewHolder setViewVisibility(int i9, int i10) {
        View view = getView(i9);
        Intrinsics.checkNotNull(view);
        view.setVisibility(i10);
        return this;
    }
}
