package com.chad.library.adapter.base.viewholder;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.Keep;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Keep
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0019\u0010\u0007\u001a\u0004\u0018\u0001H\b\"\b\b\u0000\u0010\b*\u00020\tH\u0017¢\u0006\u0002\u0010\nJ!\u0010\u000b\u001a\u0002H\f\"\b\b\u0000\u0010\f*\u00020\u00032\b\b\u0001\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u000fJ#\u0010\u0010\u001a\u0004\u0018\u0001H\f\"\b\b\u0000\u0010\f*\u00020\u00032\b\b\u0001\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u000fJ\u001c\u0010\u0011\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u0012\u001a\u00020\u000eH\u0016J\u001c\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u0014\u001a\u00020\u000eH\u0016J\u001a\u0010\u0015\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u001a\u0010\u0018\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u001c\u0010\u001a\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001c\u0010\u001d\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u001c\u0010 \u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010!\u001a\u00020\u000eH\u0016J\u001c\u0010\"\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001e\u0010\"\u001a\u0004\u0018\u00010\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010%\u001a\u00020\u000eH\u0016J\u001c\u0010&\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u0012\u001a\u00020\u000eH\u0016J\u001c\u0010'\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010(\u001a\u00020\u000eH\u0016J\u001a\u0010)\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020\u0017H\u0016J\u001d\u0010+\u001a\u0004\u0018\u0001H\f\"\b\b\u0000\u0010\f*\u00020\u0003*\u00020\u000eH\u0016¢\u0006\u0002\u0010\u000fR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", AdUnitActivity.EXTRA_VIEWS, "Landroid/util/SparseArray;", "getBinding", "B", "Landroidx/databinding/ViewDataBinding;", "()Landroidx/databinding/ViewDataBinding;", "getView", ExifInterface.GPS_DIRECTION_TRUE, "viewId", "", "(I)Landroid/view/View;", "getViewOrNull", "setBackgroundColor", "color", "setBackgroundResource", "backgroundRes", "setEnabled", "isEnabled", "", "setGone", "isGone", "setImageBitmap", "bitmap", "Landroid/graphics/Bitmap;", "setImageDrawable", "drawable", "Landroid/graphics/drawable/Drawable;", "setImageResource", "imageResId", "setText", "value", "", "strId", "setTextColor", "setTextColorRes", "colorRes", "setVisible", "isVisible", "findView", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public class BaseViewHolder extends RecyclerView.ViewHolder {
    @NotNull
    private final SparseArray<View> views;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseViewHolder(@NotNull View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        this.views = new SparseArray<>();
    }

    @Nullable
    public <T extends View> T findView(int i9) {
        return (T) this.itemView.findViewById(i9);
    }

    @Deprecated(message = "Please use BaseDataBindingHolder class", replaceWith = @ReplaceWith(expression = "DataBindingUtil.getBinding(itemView)", imports = {"androidx.databinding.DataBindingUtil"}))
    @Nullable
    public <B extends ViewDataBinding> B getBinding() {
        return (B) DataBindingUtil.getBinding(this.itemView);
    }

    @NotNull
    public <T extends View> T getView(@IdRes int i9) {
        T t10 = (T) getViewOrNull(i9);
        if (t10 != null) {
            return t10;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("No view found with id ", Integer.valueOf(i9)).toString());
    }

    @Nullable
    public <T extends View> T getViewOrNull(@IdRes int i9) {
        T t10;
        T t11 = (T) this.views.get(i9);
        if (t11 == null && (t10 = (T) this.itemView.findViewById(i9)) != null) {
            this.views.put(i9, t10);
            return t10;
        } else if (t11 != null) {
            return t11;
        } else {
            return null;
        }
    }

    @NotNull
    public BaseViewHolder setBackgroundColor(@IdRes int i9, @ColorInt int i10) {
        getView(i9).setBackgroundColor(i10);
        return this;
    }

    @NotNull
    public BaseViewHolder setBackgroundResource(@IdRes int i9, @DrawableRes int i10) {
        getView(i9).setBackgroundResource(i10);
        return this;
    }

    @NotNull
    public BaseViewHolder setEnabled(@IdRes int i9, boolean z10) {
        getView(i9).setEnabled(z10);
        return this;
    }

    @NotNull
    public BaseViewHolder setGone(@IdRes int i9, boolean z10) {
        getView(i9).setVisibility(z10 ? 8 : 0);
        return this;
    }

    @NotNull
    public BaseViewHolder setImageBitmap(@IdRes int i9, @Nullable Bitmap bitmap) {
        ((ImageView) getView(i9)).setImageBitmap(bitmap);
        return this;
    }

    @NotNull
    public BaseViewHolder setImageDrawable(@IdRes int i9, @Nullable Drawable drawable) {
        ((ImageView) getView(i9)).setImageDrawable(drawable);
        return this;
    }

    @NotNull
    public BaseViewHolder setImageResource(@IdRes int i9, @DrawableRes int i10) {
        ((ImageView) getView(i9)).setImageResource(i10);
        return this;
    }

    @NotNull
    public BaseViewHolder setText(@IdRes int i9, @Nullable CharSequence charSequence) {
        ((TextView) getView(i9)).setText(charSequence);
        return this;
    }

    @NotNull
    public BaseViewHolder setTextColor(@IdRes int i9, @ColorInt int i10) {
        ((TextView) getView(i9)).setTextColor(i10);
        return this;
    }

    @NotNull
    public BaseViewHolder setTextColorRes(@IdRes int i9, @ColorRes int i10) {
        ((TextView) getView(i9)).setTextColor(ContextCompat.getColor(this.itemView.getContext(), i10));
        return this;
    }

    @NotNull
    public BaseViewHolder setVisible(@IdRes int i9, boolean z10) {
        getView(i9).setVisibility(z10 ? 0 : 4);
        return this;
    }

    @Nullable
    public BaseViewHolder setText(@IdRes int i9, @StringRes int i10) {
        ((TextView) getView(i9)).setText(i10);
        return this;
    }
}
