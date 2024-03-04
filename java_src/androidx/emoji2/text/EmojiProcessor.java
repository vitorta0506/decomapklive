package androidx.emoji2.text;

import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextPaint;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.PaintCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.MetadataRepo;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class EmojiProcessor {
    private static final int ACTION_ADVANCE_BOTH = 1;
    private static final int ACTION_ADVANCE_END = 2;
    private static final int ACTION_FLUSH = 3;
    @Nullable
    private final int[] mEmojiAsDefaultStyleExceptions;
    @NonNull
    private EmojiCompat.GlyphChecker mGlyphChecker;
    @NonNull
    private final MetadataRepo mMetadataRepo;
    @NonNull
    private final EmojiCompat.SpanFactory mSpanFactory;
    private final boolean mUseEmojiAsDefaultStyle;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static final class CodepointIndexFinder {
        private static final int INVALID_INDEX = -1;

        private CodepointIndexFinder() {
        }

        static int findIndexBackward(CharSequence charSequence, int i9, int i10) {
            int length = charSequence.length();
            if (i9 < 0 || length < i9 || i10 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i10 != 0) {
                    i9--;
                    if (i9 < 0) {
                        return z10 ? -1 : 0;
                    }
                    char charAt = charSequence.charAt(i9);
                    if (z10) {
                        if (!Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        i10--;
                    } else if (!Character.isSurrogate(charAt)) {
                        i10--;
                    } else if (Character.isHighSurrogate(charAt)) {
                        return -1;
                    } else {
                        z10 = true;
                    }
                }
                return i9;
            }
        }

        static int findIndexForward(CharSequence charSequence, int i9, int i10) {
            int length = charSequence.length();
            if (i9 < 0 || length < i9 || i10 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i10 != 0) {
                    if (i9 >= length) {
                        if (z10) {
                            return -1;
                        }
                        return length;
                    }
                    char charAt = charSequence.charAt(i9);
                    if (z10) {
                        if (!Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i10--;
                        i9++;
                    } else if (!Character.isSurrogate(charAt)) {
                        i10--;
                        i9++;
                    } else if (Character.isLowSurrogate(charAt)) {
                        return -1;
                    } else {
                        i9++;
                        z10 = true;
                    }
                }
                return i9;
            }
        }
    }

    @AnyThread
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static class DefaultGlyphChecker implements EmojiCompat.GlyphChecker {
        private static final int PAINT_TEXT_SIZE = 10;
        private static final ThreadLocal<StringBuilder> sStringBuilder = new ThreadLocal<>();
        private final TextPaint mTextPaint;

        /* JADX INFO: Access modifiers changed from: package-private */
        public DefaultGlyphChecker() {
            TextPaint textPaint = new TextPaint();
            this.mTextPaint = textPaint;
            textPaint.setTextSize(10.0f);
        }

        private static StringBuilder getStringBuilder() {
            ThreadLocal<StringBuilder> threadLocal = sStringBuilder;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            return threadLocal.get();
        }

        @Override // androidx.emoji2.text.EmojiCompat.GlyphChecker
        public boolean hasGlyph(@NonNull CharSequence charSequence, int i9, int i10, int i11) {
            int i12 = Build.VERSION.SDK_INT;
            if (i12 >= 23 || i11 <= i12) {
                StringBuilder stringBuilder = getStringBuilder();
                stringBuilder.setLength(0);
                while (i9 < i10) {
                    stringBuilder.append(charSequence.charAt(i9));
                    i9++;
                }
                return PaintCompat.hasGlyph(this.mTextPaint, stringBuilder.toString());
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class ProcessorSm {
        private static final int STATE_DEFAULT = 1;
        private static final int STATE_WALKING = 2;
        private int mCurrentDepth;
        private MetadataRepo.Node mCurrentNode;
        private final int[] mEmojiAsDefaultStyleExceptions;
        private MetadataRepo.Node mFlushNode;
        private int mLastCodepoint;
        private final MetadataRepo.Node mRootNode;
        private int mState = 1;
        private final boolean mUseEmojiAsDefaultStyle;

        ProcessorSm(MetadataRepo.Node node, boolean z10, int[] iArr) {
            this.mRootNode = node;
            this.mCurrentNode = node;
            this.mUseEmojiAsDefaultStyle = z10;
            this.mEmojiAsDefaultStyleExceptions = iArr;
        }

        private static boolean isEmojiStyle(int i9) {
            return i9 == 65039;
        }

        private static boolean isTextStyle(int i9) {
            return i9 == 65038;
        }

        private int reset() {
            this.mState = 1;
            this.mCurrentNode = this.mRootNode;
            this.mCurrentDepth = 0;
            return 1;
        }

        private boolean shouldUseEmojiPresentationStyleForSingleCodepoint() {
            if (this.mCurrentNode.getData().isDefaultEmoji() || isEmojiStyle(this.mLastCodepoint)) {
                return true;
            }
            if (this.mUseEmojiAsDefaultStyle) {
                if (this.mEmojiAsDefaultStyleExceptions == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.mEmojiAsDefaultStyleExceptions, this.mCurrentNode.getData().getCodepointAt(0)) < 0) {
                    return true;
                }
            }
            return false;
        }

        int check(int i9) {
            MetadataRepo.Node node = this.mCurrentNode.get(i9);
            int i10 = 3;
            if (this.mState == 2) {
                if (node != null) {
                    this.mCurrentNode = node;
                    this.mCurrentDepth++;
                } else if (isTextStyle(i9)) {
                    i10 = reset();
                } else if (!isEmojiStyle(i9)) {
                    if (this.mCurrentNode.getData() != null) {
                        if (this.mCurrentDepth == 1) {
                            if (shouldUseEmojiPresentationStyleForSingleCodepoint()) {
                                this.mFlushNode = this.mCurrentNode;
                                reset();
                            } else {
                                i10 = reset();
                            }
                        } else {
                            this.mFlushNode = this.mCurrentNode;
                            reset();
                        }
                    } else {
                        i10 = reset();
                    }
                }
                i10 = 2;
            } else if (node == null) {
                i10 = reset();
            } else {
                this.mState = 2;
                this.mCurrentNode = node;
                this.mCurrentDepth = 1;
                i10 = 2;
            }
            this.mLastCodepoint = i9;
            return i10;
        }

        EmojiMetadata getCurrentMetadata() {
            return this.mCurrentNode.getData();
        }

        EmojiMetadata getFlushMetadata() {
            return this.mFlushNode.getData();
        }

        boolean isInFlushableState() {
            return this.mState == 2 && this.mCurrentNode.getData() != null && (this.mCurrentDepth > 1 || shouldUseEmojiPresentationStyleForSingleCodepoint());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EmojiProcessor(@NonNull MetadataRepo metadataRepo, @NonNull EmojiCompat.SpanFactory spanFactory, @NonNull EmojiCompat.GlyphChecker glyphChecker, boolean z10, @Nullable int[] iArr) {
        this.mSpanFactory = spanFactory;
        this.mMetadataRepo = metadataRepo;
        this.mGlyphChecker = glyphChecker;
        this.mUseEmojiAsDefaultStyle = z10;
        this.mEmojiAsDefaultStyleExceptions = iArr;
    }

    private void addEmoji(@NonNull Spannable spannable, EmojiMetadata emojiMetadata, int i9, int i10) {
        spannable.setSpan(this.mSpanFactory.createSpan(emojiMetadata), i9, i10, 33);
    }

    private static boolean delete(@NonNull Editable editable, @NonNull KeyEvent keyEvent, boolean z10) {
        EmojiSpan[] emojiSpanArr;
        if (hasModifiers(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!hasInvalidSelection(selectionStart, selectionEnd) && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = editable.getSpanStart(emojiSpan);
                int spanEnd = editable.getSpanEnd(emojiSpan);
                if ((z10 && spanStart == selectionStart) || ((!z10 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean handleDeleteSurroundingText(@NonNull InputConnection inputConnection, @NonNull Editable editable, @IntRange(from = 0) int i9, @IntRange(from = 0) int i10, boolean z10) {
        int max;
        int min;
        if (editable != null && inputConnection != null && i9 >= 0 && i10 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (hasInvalidSelection(selectionStart, selectionEnd)) {
                return false;
            }
            if (z10) {
                max = CodepointIndexFinder.findIndexBackward(editable, selectionStart, Math.max(i9, 0));
                min = CodepointIndexFinder.findIndexForward(editable, selectionEnd, Math.max(i10, 0));
                if (max == -1 || min == -1) {
                    return false;
                }
            } else {
                max = Math.max(selectionStart - i9, 0);
                min = Math.min(selectionEnd + i10, editable.length());
            }
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(max, min, EmojiSpan.class);
            if (emojiSpanArr != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    max = Math.min(spanStart, max);
                    min = Math.max(spanEnd, min);
                }
                int max2 = Math.max(max, 0);
                int min2 = Math.min(min, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(max2, min2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean handleOnKeyDown(@NonNull Editable editable, int i9, @NonNull KeyEvent keyEvent) {
        boolean delete;
        if (i9 != 67) {
            delete = i9 != 112 ? false : delete(editable, keyEvent, true);
        } else {
            delete = delete(editable, keyEvent, false);
        }
        if (delete) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            return true;
        }
        return false;
    }

    private boolean hasGlyph(CharSequence charSequence, int i9, int i10, EmojiMetadata emojiMetadata) {
        if (emojiMetadata.getHasGlyph() == 0) {
            emojiMetadata.setHasGlyph(this.mGlyphChecker.hasGlyph(charSequence, i9, i10, emojiMetadata.getSdkAdded()));
        }
        return emojiMetadata.getHasGlyph() == 2;
    }

    private static boolean hasInvalidSelection(int i9, int i10) {
        return i9 == -1 || i10 == -1 || i9 != i10;
    }

    private static boolean hasModifiers(@NonNull KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEmojiMatch(@NonNull CharSequence charSequence) {
        return getEmojiMatch(charSequence, this.mMetadataRepo.getMetadataVersion());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x010f, code lost:
        ((androidx.emoji2.text.SpannableBuilder) r10).endBatchEdit();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0042 A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:7:0x000d, B:10:0x0012, B:12:0x0016, B:14:0x0025, B:18:0x0031, B:20:0x003b, B:22:0x003e, B:24:0x0042, B:26:0x004e, B:27:0x0051, B:29:0x005e, B:35:0x006d, B:36:0x007b, B:40:0x0096, B:48:0x00a6, B:51:0x00b2, B:52:0x00b7, B:53:0x00c1, B:55:0x00c8, B:56:0x00cd, B:58:0x00d8, B:60:0x00df, B:64:0x00e9, B:67:0x00f5, B:68:0x00fb, B:15:0x002b), top: B:81:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00f5 A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:7:0x000d, B:10:0x0012, B:12:0x0016, B:14:0x0025, B:18:0x0031, B:20:0x003b, B:22:0x003e, B:24:0x0042, B:26:0x004e, B:27:0x0051, B:29:0x005e, B:35:0x006d, B:36:0x007b, B:40:0x0096, B:48:0x00a6, B:51:0x00b2, B:52:0x00b7, B:53:0x00c1, B:55:0x00c8, B:56:0x00cd, B:58:0x00d8, B:60:0x00df, B:64:0x00e9, B:67:0x00f5, B:68:0x00fb, B:15:0x002b), top: B:81:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0107 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x009d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence process(@androidx.annotation.NonNull java.lang.CharSequence r10, @androidx.annotation.IntRange(from = 0) int r11, @androidx.annotation.IntRange(from = 0) int r12, @androidx.annotation.IntRange(from = 0) int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiProcessor.process(java.lang.CharSequence, int, int, int, boolean):java.lang.CharSequence");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEmojiMatch(@NonNull CharSequence charSequence, int i9) {
        ProcessorSm processorSm = new ProcessorSm(this.mMetadataRepo.getRootNode(), this.mUseEmojiAsDefaultStyle, this.mEmojiAsDefaultStyleExceptions);
        int length = charSequence.length();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int codePointAt = Character.codePointAt(charSequence, i10);
            int check = processorSm.check(codePointAt);
            EmojiMetadata currentMetadata = processorSm.getCurrentMetadata();
            if (check == 1) {
                i10 += Character.charCount(codePointAt);
                i12 = 0;
            } else if (check == 2) {
                i10 += Character.charCount(codePointAt);
            } else if (check == 3) {
                currentMetadata = processorSm.getFlushMetadata();
                if (currentMetadata.getCompatAdded() <= i9) {
                    i11++;
                }
            }
            if (currentMetadata != null && currentMetadata.getCompatAdded() <= i9) {
                i12++;
            }
        }
        if (i11 != 0) {
            return 2;
        }
        if (!processorSm.isInFlushableState() || processorSm.getCurrentMetadata().getCompatAdded() > i9) {
            return i12 == 0 ? 0 : 2;
        }
        return 1;
    }
}
