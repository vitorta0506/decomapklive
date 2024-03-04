package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.R;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.NativeProtocol;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001<B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B#\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tB\u001f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J\"\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0017J\u0010\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\"H\u0014J \u0010#\u001a\u00020\u00132\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%H\u0014J\u0010\u0010&\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u0011H\u0016J\u0017\u0010(\u001a\u0002H)\"\n\b\u0000\u0010)*\u0004\u0018\u00010*¢\u0006\u0002\u0010+J\u0010\u0010,\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0017J\b\u0010-\u001a\u00020\u0016H\u0016J\u0010\u0010.\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u0011H\u0016J\u0010\u0010/\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\bH\u0016J\u0010\u00100\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u0011H\u0016J\u0018\u00101\u001a\u00020\u00162\u0006\u00102\u001a\u00020\b2\u0006\u00103\u001a\u00020\bH\u0016J\u0018\u00104\u001a\u00020\u00162\u0006\u00102\u001a\u00020\b2\u0006\u00103\u001a\u00020\bH\u0016J\u0010\u00105\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0013H\u0001J\u0012\u00106\u001a\u00020\u00162\b\u00107\u001a\u0004\u0018\u000108H\u0016J\u0010\u00109\u001a\u00020\u00162\u0006\u0010:\u001a\u00020\u000eH\u0016J\u0010\u0010;\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u0011H\u0016R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006="}, d2 = {"Landroidx/fragment/app/FragmentContainerView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "fm", "Landroidx/fragment/app/FragmentManager;", "(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/FragmentManager;)V", "applyWindowInsetsListener", "Landroid/view/View$OnApplyWindowInsetsListener;", "disappearingFragmentChildren", "", "Landroid/view/View;", "drawDisappearingViewsFirst", "", "transitioningFragmentViews", "addDisappearingFragmentView", "", NotifyType.VIBRATE, "addView", "child", "index", NativeProtocol.WEB_DIALOG_PARAMS, "Landroid/view/ViewGroup$LayoutParams;", "dispatchApplyWindowInsets", "Landroid/view/WindowInsets;", "insets", "dispatchDraw", "canvas", "Landroid/graphics/Canvas;", "drawChild", "drawingTime", "", "endViewTransition", ViewHierarchyConstants.VIEW_KEY, "getFragment", "F", "Landroidx/fragment/app/Fragment;", "()Landroidx/fragment/app/Fragment;", "onApplyWindowInsets", "removeAllViewsInLayout", "removeView", "removeViewAt", "removeViewInLayout", "removeViews", "start", AnimatedPasterJsonConfig.CONFIG_COUNT, "removeViewsInLayout", "setDrawDisappearingViewsLast", "setLayoutTransition", "transition", "Landroid/animation/LayoutTransition;", "setOnApplyWindowInsetsListener", "listener", "startViewTransition", "Api20Impl", "fragment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {
    @Nullable
    private View.OnApplyWindowInsetsListener applyWindowInsetsListener;
    @NotNull
    private final List<View> disappearingFragmentChildren;
    private boolean drawDisappearingViewsFirst;
    @NotNull
    private final List<View> transitioningFragmentViews;

    @RequiresApi(20)
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004¨\u0006\n"}, d2 = {"Landroidx/fragment/app/FragmentContainerView$Api20Impl;", "", "()V", "onApplyWindowInsets", "Landroid/view/WindowInsets;", "onApplyWindowInsetsListener", "Landroid/view/View$OnApplyWindowInsetsListener;", NotifyType.VIBRATE, "Landroid/view/View;", "insets", "fragment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api20Impl {
        @NotNull
        public static final Api20Impl INSTANCE = new Api20Impl();

        private Api20Impl() {
        }

        @NotNull
        public final WindowInsets onApplyWindowInsets(@NotNull View.OnApplyWindowInsetsListener onApplyWindowInsetsListener, @NotNull View v10, @NotNull WindowInsets insets) {
            Intrinsics.checkNotNullParameter(onApplyWindowInsetsListener, "onApplyWindowInsetsListener");
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(insets, "insets");
            WindowInsets onApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(v10, insets);
            Intrinsics.checkNotNullExpressionValue(onApplyWindowInsets, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)");
            return onApplyWindowInsets;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.disappearingFragmentChildren = new ArrayList();
        this.transitioningFragmentViews = new ArrayList();
        this.drawDisappearingViewsFirst = true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public FragmentContainerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void addDisappearingFragmentView(View view) {
        if (this.transitioningFragmentViews.contains(view)) {
            this.disappearingFragmentChildren.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(@NotNull View child, int i9, @Nullable ViewGroup.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(child, "child");
        if (FragmentManager.getViewFragment(child) != null) {
            super.addView(child, i9, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + child + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi(20)
    @NotNull
    public WindowInsets dispatchApplyWindowInsets(@NotNull WindowInsets insets) {
        WindowInsetsCompat onApplyWindowInsets;
        Intrinsics.checkNotNullParameter(insets, "insets");
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(insets);
        Intrinsics.checkNotNullExpressionValue(windowInsetsCompat, "toWindowInsetsCompat(insets)");
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.applyWindowInsetsListener;
        if (onApplyWindowInsetsListener != null) {
            Api20Impl api20Impl = Api20Impl.INSTANCE;
            Intrinsics.checkNotNull(onApplyWindowInsetsListener);
            onApplyWindowInsets = WindowInsetsCompat.toWindowInsetsCompat(api20Impl.onApplyWindowInsets(onApplyWindowInsetsListener, this, insets));
        } else {
            onApplyWindowInsets = ViewCompat.onApplyWindowInsets(this, windowInsetsCompat);
        }
        if (!onApplyWindowInsets.isConsumed()) {
            int i9 = 0;
            int childCount = getChildCount();
            if (childCount > 0) {
                while (true) {
                    int i10 = i9 + 1;
                    ViewCompat.dispatchApplyWindowInsets(getChildAt(i9), onApplyWindowInsets);
                    if (i10 >= childCount) {
                        break;
                    }
                    i9 = i10;
                }
            }
        }
        return insets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.drawDisappearingViewsFirst) {
            for (View view : this.disappearingFragmentChildren) {
                super.drawChild(canvas, view, getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(@NotNull Canvas canvas, @NotNull View child, long j10) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(child, "child");
        if (this.drawDisappearingViewsFirst && (!this.disappearingFragmentChildren.isEmpty()) && this.disappearingFragmentChildren.contains(child)) {
            return false;
        }
        return super.drawChild(canvas, child, j10);
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.transitioningFragmentViews.remove(view);
        if (this.disappearingFragmentChildren.remove(view)) {
            this.drawDisappearingViewsFirst = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends Fragment> F getFragment() {
        return (F) FragmentManager.findFragmentManager(this).findFragmentById(getId());
    }

    @Override // android.view.View
    @RequiresApi(20)
    @NotNull
    public WindowInsets onApplyWindowInsets(@NotNull WindowInsets insets) {
        Intrinsics.checkNotNullParameter(insets, "insets");
        return insets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        int childCount = getChildCount() - 1;
        if (childCount >= 0) {
            while (true) {
                int i9 = childCount - 1;
                View view = getChildAt(childCount);
                Intrinsics.checkNotNullExpressionValue(view, "view");
                addDisappearingFragmentView(view);
                if (i9 < 0) {
                    break;
                }
                childCount = i9;
            }
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        addDisappearingFragmentView(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i9) {
        View view = getChildAt(i9);
        Intrinsics.checkNotNullExpressionValue(view, "view");
        addDisappearingFragmentView(view);
        super.removeViewAt(i9);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        addDisappearingFragmentView(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i9, int i10) {
        int i11 = i9 + i10;
        if (i9 < i11) {
            int i12 = i9;
            while (true) {
                int i13 = i12 + 1;
                View view = getChildAt(i12);
                Intrinsics.checkNotNullExpressionValue(view, "view");
                addDisappearingFragmentView(view);
                if (i13 >= i11) {
                    break;
                }
                i12 = i13;
            }
        }
        super.removeViews(i9, i10);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i9, int i10) {
        int i11 = i9 + i10;
        if (i9 < i11) {
            int i12 = i9;
            while (true) {
                int i13 = i12 + 1;
                View view = getChildAt(i12);
                Intrinsics.checkNotNullExpressionValue(view, "view");
                addDisappearingFragmentView(view);
                if (i13 >= i11) {
                    break;
                }
                i12 = i13;
            }
        }
        super.removeViewsInLayout(i9, i10);
    }

    @JvmName(name = "setDrawDisappearingViewsLast")
    public final void setDrawDisappearingViewsLast(boolean z10) {
        this.drawDisappearingViewsFirst = z10;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(@Nullable LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(@NotNull View.OnApplyWindowInsetsListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.applyWindowInsetsListener = listener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view.getParent() == this) {
            this.transitioningFragmentViews.add(view);
        }
        super.startViewTransition(view);
    }

    public /* synthetic */ FragmentContainerView(Context context, AttributeSet attributeSet, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i10 & 4) != 0 ? 0 : i9);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public FragmentContainerView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        this.disappearingFragmentChildren = new ArrayList();
        this.transitioningFragmentViews = new ArrayList();
        this.drawDisappearingViewsFirst = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            int[] FragmentContainerView = R.styleable.FragmentContainerView;
            Intrinsics.checkNotNullExpressionValue(FragmentContainerView, "FragmentContainerView");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, FragmentContainerView, 0, 0);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name);
                str = "android:name";
            } else {
                str = "class";
            }
            obtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + ((Object) classAttribute) + Typography.quote);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(@NotNull Context context, @NotNull AttributeSet attrs, @NotNull FragmentManager fm) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Intrinsics.checkNotNullParameter(fm, "fm");
        this.disappearingFragmentChildren = new ArrayList();
        this.transitioningFragmentViews = new ArrayList();
        this.drawDisappearingViewsFirst = true;
        String classAttribute = attrs.getClassAttribute();
        int[] FragmentContainerView = R.styleable.FragmentContainerView;
        Intrinsics.checkNotNullExpressionValue(FragmentContainerView, "FragmentContainerView");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, FragmentContainerView, 0, 0);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name) : classAttribute;
        String string = obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_tag);
        obtainStyledAttributes.recycle();
        int id2 = getId();
        Fragment findFragmentById = fm.findFragmentById(id2);
        if (classAttribute != null && findFragmentById == null) {
            if (id2 == -1) {
                String stringPlus = string != null ? Intrinsics.stringPlus(" with tag ", string) : "";
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + ((Object) classAttribute) + stringPlus);
            }
            Fragment instantiate = fm.getFragmentFactory().instantiate(context.getClassLoader(), classAttribute);
            Intrinsics.checkNotNullExpressionValue(instantiate, "fm.fragmentFactory.insta…ontext.classLoader, name)");
            instantiate.onInflate(context, attrs, (Bundle) null);
            fm.beginTransaction().setReorderingAllowed(true).add(this, instantiate, string).commitNowAllowingStateLoss();
        }
        fm.onContainerAvailable(this);
    }
}
