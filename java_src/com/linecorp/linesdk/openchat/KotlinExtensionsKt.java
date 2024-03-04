package com.linecorp.linesdk.openchat;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¨\u0006\u0006"}, d2 = {"addAfterTextChangedAction", "", "Landroid/widget/EditText;", "textChangedAction", "Lkotlin/Function1;", "", "line-sdk_release"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class KotlinExtensionsKt {
    public static final void addAfterTextChangedAction(@NotNull EditText editText, @NotNull final Function1<? super String, Unit> function1) {
        editText.addTextChangedListener(new TextWatcher() { // from class: com.linecorp.linesdk.openchat.KotlinExtensionsKt$addAfterTextChangedAction$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                Function1 function12 = Function1.this;
                String obj = editable != null ? editable.toString() : null;
                if (obj == null) {
                    obj = "";
                }
                function12.invoke(obj);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }
        });
    }
}
