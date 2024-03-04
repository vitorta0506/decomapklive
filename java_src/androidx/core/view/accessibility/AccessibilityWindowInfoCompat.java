package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.os.Build;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class AccessibilityWindowInfoCompat {
    public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
    public static final int TYPE_APPLICATION = 1;
    public static final int TYPE_INPUT_METHOD = 2;
    public static final int TYPE_SPLIT_SCREEN_DIVIDER = 5;
    public static final int TYPE_SYSTEM = 3;
    private static final int UNDEFINED = -1;
    private Object mInfo;

    private AccessibilityWindowInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    public static AccessibilityWindowInfoCompat obtain() {
        return wrapNonNullInstance(AccessibilityWindowInfo.obtain());
    }

    private static String typeToString(int i9) {
        return i9 != 1 ? i9 != 2 ? i9 != 3 ? i9 != 4 ? "<UNKNOWN>" : "TYPE_ACCESSIBILITY_OVERLAY" : "TYPE_SYSTEM" : "TYPE_INPUT_METHOD" : "TYPE_APPLICATION";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessibilityWindowInfoCompat wrapNonNullInstance(Object obj) {
        if (obj != null) {
            return new AccessibilityWindowInfoCompat(obj);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof AccessibilityWindowInfoCompat)) {
            AccessibilityWindowInfoCompat accessibilityWindowInfoCompat = (AccessibilityWindowInfoCompat) obj;
            Object obj2 = this.mInfo;
            if (obj2 == null) {
                if (accessibilityWindowInfoCompat.mInfo != null) {
                    return false;
                }
            } else if (!obj2.equals(accessibilityWindowInfoCompat.mInfo)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public AccessibilityNodeInfoCompat getAnchor() {
        if (Build.VERSION.SDK_INT >= 24) {
            return AccessibilityNodeInfoCompat.wrapNonNullInstance(((AccessibilityWindowInfo) this.mInfo).getAnchor());
        }
        return null;
    }

    public void getBoundsInScreen(Rect rect) {
        ((AccessibilityWindowInfo) this.mInfo).getBoundsInScreen(rect);
    }

    public AccessibilityWindowInfoCompat getChild(int i9) {
        return wrapNonNullInstance(((AccessibilityWindowInfo) this.mInfo).getChild(i9));
    }

    public int getChildCount() {
        return ((AccessibilityWindowInfo) this.mInfo).getChildCount();
    }

    public int getId() {
        return ((AccessibilityWindowInfo) this.mInfo).getId();
    }

    public int getLayer() {
        return ((AccessibilityWindowInfo) this.mInfo).getLayer();
    }

    public AccessibilityWindowInfoCompat getParent() {
        return wrapNonNullInstance(((AccessibilityWindowInfo) this.mInfo).getParent());
    }

    public AccessibilityNodeInfoCompat getRoot() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(((AccessibilityWindowInfo) this.mInfo).getRoot());
    }

    public CharSequence getTitle() {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((AccessibilityWindowInfo) this.mInfo).getTitle();
        }
        return null;
    }

    public int getType() {
        return ((AccessibilityWindowInfo) this.mInfo).getType();
    }

    public int hashCode() {
        Object obj = this.mInfo;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean isAccessibilityFocused() {
        return ((AccessibilityWindowInfo) this.mInfo).isAccessibilityFocused();
    }

    public boolean isActive() {
        return ((AccessibilityWindowInfo) this.mInfo).isActive();
    }

    public boolean isFocused() {
        return ((AccessibilityWindowInfo) this.mInfo).isFocused();
    }

    public void recycle() {
        ((AccessibilityWindowInfo) this.mInfo).recycle();
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        Rect rect = new Rect();
        getBoundsInScreen(rect);
        sb2.append("AccessibilityWindowInfo[");
        sb2.append("id=");
        sb2.append(getId());
        sb2.append(", type=");
        sb2.append(typeToString(getType()));
        sb2.append(", layer=");
        sb2.append(getLayer());
        sb2.append(", bounds=");
        sb2.append(rect);
        sb2.append(", focused=");
        sb2.append(isFocused());
        sb2.append(", active=");
        sb2.append(isActive());
        sb2.append(", hasParent=");
        sb2.append(getParent() != null);
        sb2.append(", hasChildren=");
        sb2.append(getChildCount() > 0);
        sb2.append(']');
        return sb2.toString();
    }

    public static AccessibilityWindowInfoCompat obtain(AccessibilityWindowInfoCompat accessibilityWindowInfoCompat) {
        if (accessibilityWindowInfoCompat == null) {
            return null;
        }
        return wrapNonNullInstance(AccessibilityWindowInfo.obtain((AccessibilityWindowInfo) accessibilityWindowInfoCompat.mInfo));
    }
}
