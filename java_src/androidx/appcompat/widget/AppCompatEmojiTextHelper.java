package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.emoji2.viewsintegration.EmojiTextViewHelper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatEmojiTextHelper {
    @NonNull
    private final EmojiTextViewHelper mEmojiTextViewHelper;
    @NonNull
    private final TextView mView;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatEmojiTextHelper(@NonNull TextView textView) {
        this.mView = textView;
        this.mEmojiTextViewHelper = new EmojiTextViewHelper(textView, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public InputFilter[] getFilters(@NonNull InputFilter[] inputFilterArr) {
        return this.mEmojiTextViewHelper.getFilters(inputFilterArr);
    }

    public boolean isEnabled() {
        return this.mEmojiTextViewHelper.isEnabled();
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
    public void setAllCaps(boolean z10) {
        this.mEmojiTextViewHelper.setAllCaps(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEnabled(boolean z10) {
        this.mEmojiTextViewHelper.setEnabled(z10);
    }

    @Nullable
    public TransformationMethod wrapTransformationMethod(@Nullable TransformationMethod transformationMethod) {
        return this.mEmojiTextViewHelper.wrapTransformationMethod(transformationMethod);
    }
}
