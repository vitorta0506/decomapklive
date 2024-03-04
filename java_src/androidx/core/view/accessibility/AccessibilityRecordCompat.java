package androidx.core.view.accessibility;

import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
import androidx.annotation.NonNull;
import java.util.List;
/* loaded from: classes.dex */
public class AccessibilityRecordCompat {
    private final AccessibilityRecord mRecord;

    @Deprecated
    public AccessibilityRecordCompat(Object obj) {
        this.mRecord = (AccessibilityRecord) obj;
    }

    @Deprecated
    public static AccessibilityRecordCompat obtain(AccessibilityRecordCompat accessibilityRecordCompat) {
        return new AccessibilityRecordCompat(AccessibilityRecord.obtain(accessibilityRecordCompat.mRecord));
    }

    @Deprecated
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccessibilityRecordCompat) {
            AccessibilityRecordCompat accessibilityRecordCompat = (AccessibilityRecordCompat) obj;
            AccessibilityRecord accessibilityRecord = this.mRecord;
            if (accessibilityRecord == null) {
                if (accessibilityRecordCompat.mRecord != null) {
                    return false;
                }
            } else if (!accessibilityRecord.equals(accessibilityRecordCompat.mRecord)) {
                return false;
            }
            return true;
        }
        return false;
    }

    @Deprecated
    public int getAddedCount() {
        return this.mRecord.getAddedCount();
    }

    @Deprecated
    public CharSequence getBeforeText() {
        return this.mRecord.getBeforeText();
    }

    @Deprecated
    public CharSequence getClassName() {
        return this.mRecord.getClassName();
    }

    @Deprecated
    public CharSequence getContentDescription() {
        return this.mRecord.getContentDescription();
    }

    @Deprecated
    public int getCurrentItemIndex() {
        return this.mRecord.getCurrentItemIndex();
    }

    @Deprecated
    public int getFromIndex() {
        return this.mRecord.getFromIndex();
    }

    @Deprecated
    public Object getImpl() {
        return this.mRecord;
    }

    @Deprecated
    public int getItemCount() {
        return this.mRecord.getItemCount();
    }

    @Deprecated
    public int getMaxScrollX() {
        return getMaxScrollX(this.mRecord);
    }

    @Deprecated
    public int getMaxScrollY() {
        return getMaxScrollY(this.mRecord);
    }

    @Deprecated
    public Parcelable getParcelableData() {
        return this.mRecord.getParcelableData();
    }

    @Deprecated
    public int getRemovedCount() {
        return this.mRecord.getRemovedCount();
    }

    @Deprecated
    public int getScrollX() {
        return this.mRecord.getScrollX();
    }

    @Deprecated
    public int getScrollY() {
        return this.mRecord.getScrollY();
    }

    @Deprecated
    public AccessibilityNodeInfoCompat getSource() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(this.mRecord.getSource());
    }

    @Deprecated
    public List<CharSequence> getText() {
        return this.mRecord.getText();
    }

    @Deprecated
    public int getToIndex() {
        return this.mRecord.getToIndex();
    }

    @Deprecated
    public int getWindowId() {
        return this.mRecord.getWindowId();
    }

    @Deprecated
    public int hashCode() {
        AccessibilityRecord accessibilityRecord = this.mRecord;
        if (accessibilityRecord == null) {
            return 0;
        }
        return accessibilityRecord.hashCode();
    }

    @Deprecated
    public boolean isChecked() {
        return this.mRecord.isChecked();
    }

    @Deprecated
    public boolean isEnabled() {
        return this.mRecord.isEnabled();
    }

    @Deprecated
    public boolean isFullScreen() {
        return this.mRecord.isFullScreen();
    }

    @Deprecated
    public boolean isPassword() {
        return this.mRecord.isPassword();
    }

    @Deprecated
    public boolean isScrollable() {
        return this.mRecord.isScrollable();
    }

    @Deprecated
    public void recycle() {
        this.mRecord.recycle();
    }

    @Deprecated
    public void setAddedCount(int i9) {
        this.mRecord.setAddedCount(i9);
    }

    @Deprecated
    public void setBeforeText(CharSequence charSequence) {
        this.mRecord.setBeforeText(charSequence);
    }

    @Deprecated
    public void setChecked(boolean z10) {
        this.mRecord.setChecked(z10);
    }

    @Deprecated
    public void setClassName(CharSequence charSequence) {
        this.mRecord.setClassName(charSequence);
    }

    @Deprecated
    public void setContentDescription(CharSequence charSequence) {
        this.mRecord.setContentDescription(charSequence);
    }

    @Deprecated
    public void setCurrentItemIndex(int i9) {
        this.mRecord.setCurrentItemIndex(i9);
    }

    @Deprecated
    public void setEnabled(boolean z10) {
        this.mRecord.setEnabled(z10);
    }

    @Deprecated
    public void setFromIndex(int i9) {
        this.mRecord.setFromIndex(i9);
    }

    @Deprecated
    public void setFullScreen(boolean z10) {
        this.mRecord.setFullScreen(z10);
    }

    @Deprecated
    public void setItemCount(int i9) {
        this.mRecord.setItemCount(i9);
    }

    @Deprecated
    public void setMaxScrollX(int i9) {
        setMaxScrollX(this.mRecord, i9);
    }

    @Deprecated
    public void setMaxScrollY(int i9) {
        setMaxScrollY(this.mRecord, i9);
    }

    @Deprecated
    public void setParcelableData(Parcelable parcelable) {
        this.mRecord.setParcelableData(parcelable);
    }

    @Deprecated
    public void setPassword(boolean z10) {
        this.mRecord.setPassword(z10);
    }

    @Deprecated
    public void setRemovedCount(int i9) {
        this.mRecord.setRemovedCount(i9);
    }

    @Deprecated
    public void setScrollX(int i9) {
        this.mRecord.setScrollX(i9);
    }

    @Deprecated
    public void setScrollY(int i9) {
        this.mRecord.setScrollY(i9);
    }

    @Deprecated
    public void setScrollable(boolean z10) {
        this.mRecord.setScrollable(z10);
    }

    @Deprecated
    public void setSource(View view) {
        this.mRecord.setSource(view);
    }

    @Deprecated
    public void setToIndex(int i9) {
        this.mRecord.setToIndex(i9);
    }

    public static int getMaxScrollX(AccessibilityRecord accessibilityRecord) {
        return accessibilityRecord.getMaxScrollX();
    }

    public static int getMaxScrollY(AccessibilityRecord accessibilityRecord) {
        return accessibilityRecord.getMaxScrollY();
    }

    @Deprecated
    public static AccessibilityRecordCompat obtain() {
        return new AccessibilityRecordCompat(AccessibilityRecord.obtain());
    }

    public static void setMaxScrollX(AccessibilityRecord accessibilityRecord, int i9) {
        accessibilityRecord.setMaxScrollX(i9);
    }

    public static void setMaxScrollY(AccessibilityRecord accessibilityRecord, int i9) {
        accessibilityRecord.setMaxScrollY(i9);
    }

    @Deprecated
    public void setSource(View view, int i9) {
        setSource(this.mRecord, view, i9);
    }

    public static void setSource(@NonNull AccessibilityRecord accessibilityRecord, View view, int i9) {
        accessibilityRecord.setSource(view, i9);
    }
}
