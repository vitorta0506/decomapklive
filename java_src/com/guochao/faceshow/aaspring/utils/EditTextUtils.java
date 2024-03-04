package com.guochao.faceshow.aaspring.utils;

import android.graphics.Color;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.regex.Matcher;
/* loaded from: classes3.dex */
public class EditTextUtils {
    public static String convertNormalNumberToArabicNumber(String str) {
        if (!TextUtils.isEmpty(str) && Language.ARABIC.equals(q7.a.e().c())) {
            ArrayList arrayList = new ArrayList(StringUtils.NUMBERS.entrySet());
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                Map.Entry entry = (Map.Entry) arrayList.get(i9);
                str = str.replaceAll((String) entry.getValue(), (String) entry.getKey());
            }
            return str;
        }
        return str;
    }

    public static void disableEditTextLongClick(final EditText editText) {
        if (editText == null) {
            return;
        }
        try {
            editText.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.guochao.faceshow.aaspring.utils.EditTextUtils.1
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    return true;
                }
            });
            editText.setLongClickable(false);
            editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.guochao.faceshow.aaspring.utils.EditTextUtils.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        EditTextUtils.setInsertionDisabled(editText);
                        return false;
                    }
                    return false;
                }
            });
            editText.setCustomSelectionActionModeCallback(new ActionMode.Callback() { // from class: com.guochao.faceshow.aaspring.utils.EditTextUtils.3
                @Override // android.view.ActionMode.Callback
                public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }

                @Override // android.view.ActionMode.Callback
                public void onDestroyActionMode(ActionMode actionMode) {
                }

                @Override // android.view.ActionMode.Callback
                public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static SpannableStringBuilder getLinkedText(String str, boolean z10) {
        if (str == null) {
            return null;
        }
        Matcher matcher = androidx.core.util.PatternsCompat.WEB_URL.matcher(str);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        while (matcher.find()) {
            String group = matcher.group();
            int start = matcher.start();
            setLink(spannableStringBuilder, group, start, group.length() + start, z10);
        }
        return spannableStringBuilder;
    }

    public static void setEditTextInputSpace(EditText editText) {
        editText.setFilters(new InputFilter[]{new InputFilter() { // from class: com.guochao.faceshow.aaspring.utils.EditTextUtils.4
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i9, int i10, Spanned spanned, int i11, int i12) {
                if (charSequence.equals(" ")) {
                    return "";
                }
                return null;
            }
        }});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setInsertionDisabled(EditText editText) {
        try {
            Field declaredField = TextView.class.getDeclaredField("mEditor");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(editText);
            Class<?> cls = Class.forName("android.widget.Editor");
            Field declaredField2 = cls.getDeclaredField("mInsertionControllerEnabled");
            declaredField2.setAccessible(true);
            Boolean bool = Boolean.FALSE;
            declaredField2.set(obj, bool);
            Field declaredField3 = cls.getDeclaredField("mSelectionControllerEnabled");
            declaredField3.setAccessible(true);
            declaredField3.set(obj, bool);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static void setLink(SpannableStringBuilder spannableStringBuilder, String str, int i9, int i10, boolean z10) {
        spannableStringBuilder.setSpan(new LinkClickSpan(str, Color.parseColor("#6365FF"), z10), i9, i10, 33);
    }

    public static void setLinkText(String str, TextView textView, boolean z10) {
        textView.setText(getLinkedText(str, z10));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }
}
