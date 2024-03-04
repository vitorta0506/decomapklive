package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.emoji2.viewsintegration.EmojiEditTextHelper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatEmojiEditTextHelper {
    @NonNull
    private final EmojiEditTextHelper mEmojiEditTextHelper;
    @NonNull
    private final EditText mView;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatEmojiEditTextHelper(@NonNull EditText editText) {
        this.mView = editText;
        this.mEmojiEditTextHelper = new EmojiEditTextHelper(editText, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public KeyListener getKeyListener(@Nullable KeyListener keyListener) {
        return isEmojiCapableKeyListener(keyListener) ? this.mEmojiEditTextHelper.getKeyListener(keyListener) : keyListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEmojiCapableKeyListener(KeyListener keyListener) {
        return !(keyListener instanceof NumberKeyListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEnabled() {
        return this.mEmojiEditTextHelper.isEnabled();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadFromAttributes(@Nullable AttributeSet attributeSet, int i9) {
        TypedArray obtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextView, i9, 0);
        try {
            int i10 = R.styleable.AppCompatTextView_emojiCompatEnabled;
            boolean z10 = obtainStyledAttributes.hasValue(i10) ? obtainStyledAttributes.getBoolean(i10, true) : true;
            obtainStyledAttributes.recycle();
            setEnabled(z10);
        } catch (Throwable th2) {
            obtainStyledAttributes.recycle();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public InputConnection onCreateInputConnection(@Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        return this.mEmojiEditTextHelper.onCreateInputConnection(inputConnection, editorInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEnabled(boolean z10) {
        this.mEmojiEditTextHelper.setEnabled(z10);
    }
}
