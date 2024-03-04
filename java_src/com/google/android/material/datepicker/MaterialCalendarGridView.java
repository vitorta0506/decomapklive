package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import java.util.Calendar;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class MaterialCalendarGridView extends GridView {
    private final Calendar dayCompute;
    private final boolean nestedScrollable;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    private void gainFocus(int i9, Rect rect) {
        if (i9 == 33) {
            setSelection(getAdapter2().lastPositionInMonth());
        } else if (i9 == 130) {
            setSelection(getAdapter2().firstPositionInMonth());
        } else {
            super.onFocusChanged(true, i9, rect);
        }
    }

    private View getChildAtPosition(int i9) {
        return getChildAt(i9 - getFirstVisiblePosition());
    }

    private static int horizontalMidPoint(@NonNull View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    private static boolean skipMonth(@Nullable Long l10, @Nullable Long l11, @Nullable Long l12, @Nullable Long l13) {
        return l10 == null || l11 == null || l12 == null || l13 == null || l12.longValue() > l11.longValue() || l13.longValue() < l10.longValue();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter2().notifyDataSetChanged();
    }

    @Override // android.view.View
    protected final void onDraw(@NonNull Canvas canvas) {
        int dayToPosition;
        int horizontalMidPoint;
        int dayToPosition2;
        int horizontalMidPoint2;
        int i9;
        int i10;
        int left;
        int left2;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        MonthAdapter adapter2 = getAdapter2();
        DateSelector<?> dateSelector = adapter2.dateSelector;
        CalendarStyle calendarStyle = adapter2.calendarStyle;
        int max = Math.max(adapter2.firstPositionInMonth(), getFirstVisiblePosition());
        int min = Math.min(adapter2.lastPositionInMonth(), getLastVisiblePosition());
        Long item = adapter2.getItem(max);
        Long item2 = adapter2.getItem(min);
        Iterator<Pair<Long, Long>> it = dateSelector.getSelectedRanges().iterator();
        while (it.hasNext()) {
            Pair<Long, Long> next = it.next();
            Long l10 = next.first;
            if (l10 == null) {
                materialCalendarGridView = this;
            } else if (next.second != null) {
                long longValue = l10.longValue();
                long longValue2 = next.second.longValue();
                if (!skipMonth(item, item2, Long.valueOf(longValue), Long.valueOf(longValue2))) {
                    boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
                    if (longValue < item.longValue()) {
                        if (adapter2.isFirstInRow(max)) {
                            left2 = 0;
                        } else if (!isLayoutRtl) {
                            left2 = materialCalendarGridView.getChildAtPosition(max - 1).getRight();
                        } else {
                            left2 = materialCalendarGridView.getChildAtPosition(max - 1).getLeft();
                        }
                        horizontalMidPoint = left2;
                        dayToPosition = max;
                    } else {
                        materialCalendarGridView.dayCompute.setTimeInMillis(longValue);
                        dayToPosition = adapter2.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                        horizontalMidPoint = horizontalMidPoint(materialCalendarGridView.getChildAtPosition(dayToPosition));
                    }
                    if (longValue2 > item2.longValue()) {
                        if (adapter2.isLastInRow(min)) {
                            left = getWidth();
                        } else if (!isLayoutRtl) {
                            left = materialCalendarGridView.getChildAtPosition(min).getRight();
                        } else {
                            left = materialCalendarGridView.getChildAtPosition(min).getLeft();
                        }
                        horizontalMidPoint2 = left;
                        dayToPosition2 = min;
                    } else {
                        materialCalendarGridView.dayCompute.setTimeInMillis(longValue2);
                        dayToPosition2 = adapter2.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                        horizontalMidPoint2 = horizontalMidPoint(materialCalendarGridView.getChildAtPosition(dayToPosition2));
                    }
                    int itemId = (int) adapter2.getItemId(dayToPosition);
                    int i11 = max;
                    int i12 = min;
                    int itemId2 = (int) adapter2.getItemId(dayToPosition2);
                    while (itemId <= itemId2) {
                        int numColumns = getNumColumns() * itemId;
                        MonthAdapter monthAdapter = adapter2;
                        int numColumns2 = (numColumns + getNumColumns()) - 1;
                        View childAtPosition = materialCalendarGridView.getChildAtPosition(numColumns);
                        int top = childAtPosition.getTop() + calendarStyle.day.getTopInset();
                        Iterator<Pair<Long, Long>> it2 = it;
                        int bottom = childAtPosition.getBottom() - calendarStyle.day.getBottomInset();
                        if (!isLayoutRtl) {
                            i9 = numColumns > dayToPosition ? 0 : horizontalMidPoint;
                            i10 = dayToPosition2 > numColumns2 ? getWidth() : horizontalMidPoint2;
                        } else {
                            int i13 = dayToPosition2 > numColumns2 ? 0 : horizontalMidPoint2;
                            int width = numColumns > dayToPosition ? getWidth() : horizontalMidPoint;
                            i9 = i13;
                            i10 = width;
                        }
                        canvas.drawRect(i9, top, i10, bottom, calendarStyle.rangeFill);
                        itemId++;
                        materialCalendarGridView = this;
                        itemId2 = itemId2;
                        adapter2 = monthAdapter;
                        it = it2;
                    }
                    materialCalendarGridView = this;
                    max = i11;
                    min = i12;
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z10, int i9, Rect rect) {
        if (z10) {
            gainFocus(i9, rect);
        } else {
            super.onFocusChanged(false, i9, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (super.onKeyDown(i9, keyEvent)) {
            if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter2().firstPositionInMonth()) {
                return true;
            }
            if (19 == i9) {
                setSelection(getAdapter2().firstPositionInMonth());
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i9, int i10) {
        if (this.nestedScrollable) {
            super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec(ViewCompat.MEASURED_SIZE_MASK, Integer.MIN_VALUE));
            getLayoutParams().height = getMeasuredHeight();
            return;
        }
        super.onMeasure(i9, i10);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i9) {
        if (i9 < getAdapter2().firstPositionInMonth()) {
            super.setSelection(getAdapter2().firstPositionInMonth());
        } else {
            super.setSelection(i9);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof MonthAdapter) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName()));
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.dayCompute = UtcDates.getUtcCalendar();
        if (MaterialDatePicker.isFullscreen(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.nestedScrollable = MaterialDatePicker.isNestedScrollable(getContext());
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegateCompat() { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionInfo(null);
            }
        });
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    @NonNull
    /* renamed from: getAdapter */
    public ListAdapter getAdapter2() {
        return (MonthAdapter) super.getAdapter();
    }
}
