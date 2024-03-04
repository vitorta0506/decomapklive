package androidx.databinding.adapters;

import android.util.SparseBooleanArray;
import android.widget.TableLayout;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import java.util.regex.Pattern;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class TableLayoutBindingAdapter {
    private static final int MAX_COLUMNS = 20;
    private static Pattern sColumnPattern = Pattern.compile("\\s*,\\s*");

    private static SparseBooleanArray parseColumns(CharSequence charSequence) {
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        if (charSequence == null) {
            return sparseBooleanArray;
        }
        for (String str : sColumnPattern.split(charSequence)) {
            try {
                int parseInt = Integer.parseInt(str);
                if (parseInt >= 0) {
                    sparseBooleanArray.put(parseInt, true);
                }
            } catch (NumberFormatException unused) {
            }
        }
        return sparseBooleanArray;
    }

    @BindingAdapter({"android:collapseColumns"})
    public static void setCollapseColumns(TableLayout tableLayout, CharSequence charSequence) {
        SparseBooleanArray parseColumns = parseColumns(charSequence);
        for (int i9 = 0; i9 < 20; i9++) {
            boolean z10 = parseColumns.get(i9, false);
            if (z10 != tableLayout.isColumnCollapsed(i9)) {
                tableLayout.setColumnCollapsed(i9, z10);
            }
        }
    }

    @BindingAdapter({"android:shrinkColumns"})
    public static void setShrinkColumns(TableLayout tableLayout, CharSequence charSequence) {
        if (charSequence != null && charSequence.length() > 0 && charSequence.charAt(0) == '*') {
            tableLayout.setShrinkAllColumns(true);
            return;
        }
        tableLayout.setShrinkAllColumns(false);
        SparseBooleanArray parseColumns = parseColumns(charSequence);
        int size = parseColumns.size();
        for (int i9 = 0; i9 < size; i9++) {
            int keyAt = parseColumns.keyAt(i9);
            boolean valueAt = parseColumns.valueAt(i9);
            if (valueAt) {
                tableLayout.setColumnShrinkable(keyAt, valueAt);
            }
        }
    }

    @BindingAdapter({"android:stretchColumns"})
    public static void setStretchColumns(TableLayout tableLayout, CharSequence charSequence) {
        if (charSequence != null && charSequence.length() > 0 && charSequence.charAt(0) == '*') {
            tableLayout.setStretchAllColumns(true);
            return;
        }
        tableLayout.setStretchAllColumns(false);
        SparseBooleanArray parseColumns = parseColumns(charSequence);
        int size = parseColumns.size();
        for (int i9 = 0; i9 < size; i9++) {
            int keyAt = parseColumns.keyAt(i9);
            boolean valueAt = parseColumns.valueAt(i9);
            if (valueAt) {
                tableLayout.setColumnStretchable(keyAt, valueAt);
            }
        }
    }
}
