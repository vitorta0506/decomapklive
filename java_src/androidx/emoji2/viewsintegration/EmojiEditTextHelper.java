package androidx.emoji2.viewsintegration;

import android.text.method.KeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
/* loaded from: classes.dex */
public final class EmojiEditTextHelper {
    private int mEmojiReplaceStrategy;
    private final HelperInternal mHelper;
    private int mMaxEmojiCount;

    /* loaded from: classes.dex */
    static class HelperInternal {
        HelperInternal() {
        }

        @Nullable
        KeyListener getKeyListener(@Nullable KeyListener keyListener) {
            return keyListener;
        }

        boolean isEnabled() {
            return false;
        }

        InputConnection onCreateInputConnection(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
            return inputConnection;
        }

        void setEmojiReplaceStrategy(int i9) {
        }

        void setEnabled(boolean z10) {
        }

        void setMaxEmojiCount(int i9) {
        }
    }

    @RequiresApi(19)
    /* loaded from: classes.dex */
    private static class HelperInternal19 extends HelperInternal {
        private final EditText mEditText;
        private final EmojiTextWatcher mTextWatcher;

        HelperInternal19(@NonNull EditText editText, boolean z10) {
            this.mEditText = editText;
            EmojiTextWatcher emojiTextWatcher = new EmojiTextWatcher(editText, z10);
            this.mTextWatcher = emojiTextWatcher;
            editText.addTextChangedListener(emojiTextWatcher);
            editText.setEditableFactory(EmojiEditableFactory.getInstance());
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        KeyListener getKeyListener(@Nullable KeyListener keyListener) {
            if (keyListener instanceof EmojiKeyListener) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            return new EmojiKeyListener(keyListener);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        boolean isEnabled() {
            return this.mTextWatcher.isEnabled();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        InputConnection onCreateInputConnection(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
            return inputConnection instanceof EmojiInputConnection ? inputConnection : new EmojiInputConnection(this.mEditText, inputConnection, editorInfo);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        void setEmojiReplaceStrategy(int i9) {
            this.mTextWatcher.setEmojiReplaceStrategy(i9);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        void setEnabled(boolean z10) {
            this.mTextWatcher.setEnabled(z10);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        void setMaxEmojiCount(int i9) {
            this.mTextWatcher.setMaxEmojiCount(i9);
        }
    }

    public EmojiEditTextHelper(@NonNull EditText editText) {
        this(editText, true);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getEmojiReplaceStrategy() {
        return this.mEmojiReplaceStrategy;
    }

    @Nullable
    public KeyListener getKeyListener(@Nullable KeyListener keyListener) {
        return this.mHelper.getKeyListener(keyListener);
    }

    public int getMaxEmojiCount() {
        return this.mMaxEmojiCount;
    }

    public boolean isEnabled() {
        return this.mHelper.isEnabled();
    }

    @Nullable
    public InputConnection onCreateInputConnection(@Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        return this.mHelper.onCreateInputConnection(inputConnection, editorInfo);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setEmojiReplaceStrategy(int i9) {
        this.mEmojiReplaceStrategy = i9;
        this.mHelper.setEmojiReplaceStrategy(i9);
    }

    public void setEnabled(boolean z10) {
        this.mHelper.setEnabled(z10);
    }

    public void setMaxEmojiCount(@IntRange(from = 0) int i9) {
        Preconditions.checkArgumentNonnegative(i9, "maxEmojiCount should be greater than 0");
        this.mMaxEmojiCount = i9;
        this.mHelper.setMaxEmojiCount(i9);
    }

    public EmojiEditTextHelper(@NonNull EditText editText, boolean z10) {
        this.mMaxEmojiCount = Integer.MAX_VALUE;
        this.mEmojiReplaceStrategy = 0;
        Preconditions.checkNotNull(editText, "editText cannot be null");
        this.mHelper = new HelperInternal19(editText, z10);
    }
}
