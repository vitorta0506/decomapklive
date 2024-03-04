package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import androidx.customview.widget.FocusStrategy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    private static final String DEFAULT_CLASS_NAME = "android.view.View";
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private static final Rect INVALID_PARENT_BOUNDS = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private static final FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> NODE_ADAPTER = new FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat>() { // from class: androidx.customview.widget.ExploreByTouchHelper.1
        @Override // androidx.customview.widget.FocusStrategy.BoundsAdapter
        public void obtainBounds(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
            accessibilityNodeInfoCompat.getBoundsInParent(rect);
        }
    };
    private static final FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> SPARSE_VALUES_ADAPTER = new FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat>() { // from class: androidx.customview.widget.ExploreByTouchHelper.2
        @Override // androidx.customview.widget.FocusStrategy.CollectionAdapter
        public AccessibilityNodeInfoCompat get(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat, int i9) {
            return sparseArrayCompat.valueAt(i9);
        }

        @Override // androidx.customview.widget.FocusStrategy.CollectionAdapter
        public int size(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat) {
            return sparseArrayCompat.size();
        }
    };
    private final View mHost;
    private final AccessibilityManager mManager;
    private MyNodeProvider mNodeProvider;
    private final Rect mTempScreenRect = new Rect();
    private final Rect mTempParentRect = new Rect();
    private final Rect mTempVisibleRect = new Rect();
    private final int[] mTempGlobalRect = new int[2];
    int mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
    int mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
    private int mHoveredVirtualViewId = Integer.MIN_VALUE;

    /* loaded from: classes.dex */
    private class MyNodeProvider extends AccessibilityNodeProviderCompat {
        MyNodeProvider() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i9) {
            return AccessibilityNodeInfoCompat.obtain(ExploreByTouchHelper.this.obtainAccessibilityNodeInfo(i9));
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat findFocus(int i9) {
            int i10 = i9 == 2 ? ExploreByTouchHelper.this.mAccessibilityFocusedVirtualViewId : ExploreByTouchHelper.this.mKeyboardFocusedVirtualViewId;
            if (i10 == Integer.MIN_VALUE) {
                return null;
            }
            return createAccessibilityNodeInfo(i10);
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public boolean performAction(int i9, int i10, Bundle bundle) {
            return ExploreByTouchHelper.this.performAction(i9, i10, bundle);
        }
    }

    public ExploreByTouchHelper(@NonNull View view) {
        if (view != null) {
            this.mHost = view;
            this.mManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (ViewCompat.getImportantForAccessibility(view) == 0) {
                ViewCompat.setImportantForAccessibility(view, 1);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    private boolean clearAccessibilityFocus(int i9) {
        if (this.mAccessibilityFocusedVirtualViewId == i9) {
            this.mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
            this.mHost.invalidate();
            sendEventForVirtualView(i9, 65536);
            return true;
        }
        return false;
    }

    private boolean clickKeyboardFocusedVirtualView() {
        int i9 = this.mKeyboardFocusedVirtualViewId;
        return i9 != Integer.MIN_VALUE && onPerformActionForVirtualView(i9, 16, null);
    }

    private AccessibilityEvent createEvent(int i9, int i10) {
        if (i9 != -1) {
            return createEventForChild(i9, i10);
        }
        return createEventForHost(i10);
    }

    private AccessibilityEvent createEventForChild(int i9, int i10) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i10);
        AccessibilityNodeInfoCompat obtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(i9);
        obtain.getText().add(obtainAccessibilityNodeInfo.getText());
        obtain.setContentDescription(obtainAccessibilityNodeInfo.getContentDescription());
        obtain.setScrollable(obtainAccessibilityNodeInfo.isScrollable());
        obtain.setPassword(obtainAccessibilityNodeInfo.isPassword());
        obtain.setEnabled(obtainAccessibilityNodeInfo.isEnabled());
        obtain.setChecked(obtainAccessibilityNodeInfo.isChecked());
        onPopulateEventForVirtualView(i9, obtain);
        if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain.setClassName(obtainAccessibilityNodeInfo.getClassName());
        AccessibilityRecordCompat.setSource(obtain, this.mHost, i9);
        obtain.setPackageName(this.mHost.getContext().getPackageName());
        return obtain;
    }

    private AccessibilityEvent createEventForHost(int i9) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i9);
        this.mHost.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    @NonNull
    private AccessibilityNodeInfoCompat createNodeForChild(int i9) {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        obtain.setClassName(DEFAULT_CLASS_NAME);
        Rect rect = INVALID_PARENT_BOUNDS;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        obtain.setParent(this.mHost);
        onPopulateNodeForVirtualView(i9, obtain);
        if (obtain.getText() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        obtain.getBoundsInParent(this.mTempParentRect);
        if (!this.mTempParentRect.equals(rect)) {
            int actions = obtain.getActions();
            if ((actions & 64) == 0) {
                if ((actions & 128) == 0) {
                    obtain.setPackageName(this.mHost.getContext().getPackageName());
                    obtain.setSource(this.mHost, i9);
                    if (this.mAccessibilityFocusedVirtualViewId == i9) {
                        obtain.setAccessibilityFocused(true);
                        obtain.addAction(128);
                    } else {
                        obtain.setAccessibilityFocused(false);
                        obtain.addAction(64);
                    }
                    boolean z10 = this.mKeyboardFocusedVirtualViewId == i9;
                    if (z10) {
                        obtain.addAction(2);
                    } else if (obtain.isFocusable()) {
                        obtain.addAction(1);
                    }
                    obtain.setFocused(z10);
                    this.mHost.getLocationOnScreen(this.mTempGlobalRect);
                    obtain.getBoundsInScreen(this.mTempScreenRect);
                    if (this.mTempScreenRect.equals(rect)) {
                        obtain.getBoundsInParent(this.mTempScreenRect);
                        if (obtain.mParentVirtualDescendantId != -1) {
                            AccessibilityNodeInfoCompat obtain2 = AccessibilityNodeInfoCompat.obtain();
                            for (int i10 = obtain.mParentVirtualDescendantId; i10 != -1; i10 = obtain2.mParentVirtualDescendantId) {
                                obtain2.setParent(this.mHost, -1);
                                obtain2.setBoundsInParent(INVALID_PARENT_BOUNDS);
                                onPopulateNodeForVirtualView(i10, obtain2);
                                obtain2.getBoundsInParent(this.mTempParentRect);
                                Rect rect2 = this.mTempScreenRect;
                                Rect rect3 = this.mTempParentRect;
                                rect2.offset(rect3.left, rect3.top);
                            }
                            obtain2.recycle();
                        }
                        this.mTempScreenRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
                    }
                    if (this.mHost.getLocalVisibleRect(this.mTempVisibleRect)) {
                        this.mTempVisibleRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
                        if (this.mTempScreenRect.intersect(this.mTempVisibleRect)) {
                            obtain.setBoundsInScreen(this.mTempScreenRect);
                            if (isVisibleToUser(this.mTempScreenRect)) {
                                obtain.setVisibleToUser(true);
                            }
                        }
                    }
                    return obtain;
                }
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
    }

    @NonNull
    private AccessibilityNodeInfoCompat createNodeForHost() {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(this.mHost);
        ViewCompat.onInitializeAccessibilityNodeInfo(this.mHost, obtain);
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            obtain.addChild(this.mHost, ((Integer) arrayList.get(i9)).intValue());
        }
        return obtain;
    }

    private SparseArrayCompat<AccessibilityNodeInfoCompat> getAllNodes() {
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat = new SparseArrayCompat<>();
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            sparseArrayCompat.put(arrayList.get(i9).intValue(), createNodeForChild(arrayList.get(i9).intValue()));
        }
        return sparseArrayCompat;
    }

    private void getBoundsInParent(int i9, Rect rect) {
        obtainAccessibilityNodeInfo(i9).getBoundsInParent(rect);
    }

    private static Rect guessPreviouslyFocusedRect(@NonNull View view, int i9, @NonNull Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i9 == 17) {
            rect.set(width, 0, width, height);
        } else if (i9 == 33) {
            rect.set(0, height, width, height);
        } else if (i9 == 66) {
            rect.set(-1, 0, -1, height);
        } else if (i9 == 130) {
            rect.set(0, -1, width, -1);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return rect;
    }

    private boolean isVisibleToUser(Rect rect) {
        if (rect == null || rect.isEmpty() || this.mHost.getWindowVisibility() != 0) {
            return false;
        }
        ViewParent parent = this.mHost.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    private static int keyToDirection(int i9) {
        if (i9 != 19) {
            if (i9 != 21) {
                return i9 != 22 ? 130 : 66;
            }
            return 17;
        }
        return 33;
    }

    private boolean moveFocus(int i9, @Nullable Rect rect) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        SparseArrayCompat<AccessibilityNodeInfoCompat> allNodes = getAllNodes();
        int i10 = this.mKeyboardFocusedVirtualViewId;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = i10 == Integer.MIN_VALUE ? null : allNodes.get(i10);
        if (i9 == 1 || i9 == 2) {
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.findNextFocusInRelativeDirection(allNodes, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, accessibilityNodeInfoCompat2, i9, ViewCompat.getLayoutDirection(this.mHost) == 1, false);
        } else if (i9 != 17 && i9 != 33 && i9 != 66 && i9 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            Rect rect2 = new Rect();
            int i11 = this.mKeyboardFocusedVirtualViewId;
            if (i11 != Integer.MIN_VALUE) {
                getBoundsInParent(i11, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                guessPreviouslyFocusedRect(this.mHost, i9, rect2);
            }
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.findNextFocusInAbsoluteDirection(allNodes, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, accessibilityNodeInfoCompat2, rect2, i9);
        }
        return requestKeyboardFocusForVirtualView(accessibilityNodeInfoCompat != null ? allNodes.keyAt(allNodes.indexOfValue(accessibilityNodeInfoCompat)) : Integer.MIN_VALUE);
    }

    private boolean performActionForChild(int i9, int i10, Bundle bundle) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 64) {
                    if (i10 != 128) {
                        return onPerformActionForVirtualView(i9, i10, bundle);
                    }
                    return clearAccessibilityFocus(i9);
                }
                return requestAccessibilityFocus(i9);
            }
            return clearKeyboardFocusForVirtualView(i9);
        }
        return requestKeyboardFocusForVirtualView(i9);
    }

    private boolean performActionForHost(int i9, Bundle bundle) {
        return ViewCompat.performAccessibilityAction(this.mHost, i9, bundle);
    }

    private boolean requestAccessibilityFocus(int i9) {
        int i10;
        if (this.mManager.isEnabled() && this.mManager.isTouchExplorationEnabled() && (i10 = this.mAccessibilityFocusedVirtualViewId) != i9) {
            if (i10 != Integer.MIN_VALUE) {
                clearAccessibilityFocus(i10);
            }
            this.mAccessibilityFocusedVirtualViewId = i9;
            this.mHost.invalidate();
            sendEventForVirtualView(i9, 32768);
            return true;
        }
        return false;
    }

    private void updateHoveredVirtualView(int i9) {
        int i10 = this.mHoveredVirtualViewId;
        if (i10 == i9) {
            return;
        }
        this.mHoveredVirtualViewId = i9;
        sendEventForVirtualView(i9, 128);
        sendEventForVirtualView(i10, 256);
    }

    public final boolean clearKeyboardFocusForVirtualView(int i9) {
        if (this.mKeyboardFocusedVirtualViewId != i9) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
        onVirtualViewKeyboardFocusChanged(i9, false);
        sendEventForVirtualView(i9, 8);
        return true;
    }

    public final boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        if (this.mManager.isEnabled() && this.mManager.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action != 7 && action != 9) {
                if (action == 10 && this.mHoveredVirtualViewId != Integer.MIN_VALUE) {
                    updateHoveredVirtualView(Integer.MIN_VALUE);
                    return true;
                }
                return false;
            }
            int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
            updateHoveredVirtualView(virtualViewAt);
            return virtualViewAt != Integer.MIN_VALUE;
        }
        return false;
    }

    public final boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        int i9 = 0;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                int keyToDirection = keyToDirection(keyCode);
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z10 = false;
                                while (i9 < repeatCount && moveFocus(keyToDirection, null)) {
                                    i9++;
                                    z10 = true;
                                }
                                return z10;
                            }
                            return false;
                        case 23:
                            break;
                        default:
                            return false;
                    }
                }
                if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                    clickKeyboardFocusedVirtualView();
                    return true;
                }
                return false;
            } else if (keyEvent.hasNoModifiers()) {
                return moveFocus(2, null);
            } else {
                if (keyEvent.hasModifiers(1)) {
                    return moveFocus(1, null);
                }
                return false;
            }
        }
        return false;
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.mAccessibilityFocusedVirtualViewId;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new MyNodeProvider();
        }
        return this.mNodeProvider;
    }

    @Deprecated
    public int getFocusedVirtualView() {
        return getAccessibilityFocusedVirtualViewId();
    }

    public final int getKeyboardFocusedVirtualViewId() {
        return this.mKeyboardFocusedVirtualViewId;
    }

    protected abstract int getVirtualViewAt(float f10, float f11);

    protected abstract void getVisibleVirtualViews(List<Integer> list);

    public final void invalidateRoot() {
        invalidateVirtualView(-1, 1);
    }

    public final void invalidateVirtualView(int i9) {
        invalidateVirtualView(i9, 0);
    }

    @NonNull
    AccessibilityNodeInfoCompat obtainAccessibilityNodeInfo(int i9) {
        if (i9 == -1) {
            return createNodeForHost();
        }
        return createNodeForChild(i9);
    }

    public final void onFocusChanged(boolean z10, int i9, @Nullable Rect rect) {
        int i10 = this.mKeyboardFocusedVirtualViewId;
        if (i10 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i10);
        }
        if (z10) {
            moveFocus(i9, rect);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        onPopulateEventForHost(accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        onPopulateNodeForHost(accessibilityNodeInfoCompat);
    }

    protected abstract boolean onPerformActionForVirtualView(int i9, int i10, @Nullable Bundle bundle);

    protected void onPopulateEventForHost(@NonNull AccessibilityEvent accessibilityEvent) {
    }

    protected void onPopulateEventForVirtualView(int i9, @NonNull AccessibilityEvent accessibilityEvent) {
    }

    protected void onPopulateNodeForHost(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    protected abstract void onPopulateNodeForVirtualView(int i9, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    protected void onVirtualViewKeyboardFocusChanged(int i9, boolean z10) {
    }

    boolean performAction(int i9, int i10, Bundle bundle) {
        if (i9 != -1) {
            return performActionForChild(i9, i10, bundle);
        }
        return performActionForHost(i10, bundle);
    }

    public final boolean requestKeyboardFocusForVirtualView(int i9) {
        int i10;
        if ((this.mHost.isFocused() || this.mHost.requestFocus()) && (i10 = this.mKeyboardFocusedVirtualViewId) != i9) {
            if (i10 != Integer.MIN_VALUE) {
                clearKeyboardFocusForVirtualView(i10);
            }
            if (i9 == Integer.MIN_VALUE) {
                return false;
            }
            this.mKeyboardFocusedVirtualViewId = i9;
            onVirtualViewKeyboardFocusChanged(i9, true);
            sendEventForVirtualView(i9, 8);
            return true;
        }
        return false;
    }

    public final boolean sendEventForVirtualView(int i9, int i10) {
        ViewParent parent;
        if (i9 == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return false;
        }
        return parent.requestSendAccessibilityEvent(this.mHost, createEvent(i9, i10));
    }

    public final void invalidateVirtualView(int i9, int i10) {
        ViewParent parent;
        if (i9 == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return;
        }
        AccessibilityEvent createEvent = createEvent(i9, 2048);
        AccessibilityEventCompat.setContentChangeTypes(createEvent, i10);
        parent.requestSendAccessibilityEvent(this.mHost, createEvent);
    }
}
