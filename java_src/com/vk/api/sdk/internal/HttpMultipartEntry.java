package com.vk.api.sdk.internal;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lcom/vk/api/sdk/internal/HttpMultipartEntry;", "", "File", "Text", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface HttpMultipartEntry {

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u000f"}, d2 = {"Lcom/vk/api/sdk/internal/HttpMultipartEntry$Text;", "Lcom/vk/api/sdk/internal/HttpMultipartEntry;", "textValue", "", "(Ljava/lang/String;)V", "getTextValue", "()Ljava/lang/String;", "setTextValue", "equals", "", "other", "", "hashCode", "", "toString", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Text implements HttpMultipartEntry {
        @NotNull
        private String textValue;

        public Text(@NotNull String textValue) {
            Intrinsics.checkNotNullParameter(textValue, "textValue");
            this.textValue = textValue;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Text) {
                return Intrinsics.areEqual(this.textValue, ((Text) obj).textValue);
            }
            return false;
        }

        @NotNull
        public final String getTextValue() {
            return this.textValue;
        }

        public int hashCode() {
            return this.textValue.hashCode();
        }

        public final void setTextValue(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.textValue = str;
        }

        @NotNull
        public String toString() {
            return "Text{textValue='" + this.textValue + "'}";
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0006H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u0004¨\u0006\u0016"}, d2 = {"Lcom/vk/api/sdk/internal/HttpMultipartEntry$File;", "Lcom/vk/api/sdk/internal/HttpMultipartEntry;", "fileUri", "Landroid/net/Uri;", "(Landroid/net/Uri;)V", "fileName", "", "(Landroid/net/Uri;Ljava/lang/String;)V", "getFileName", "()Ljava/lang/String;", "setFileName", "(Ljava/lang/String;)V", "getFileUri", "()Landroid/net/Uri;", "setFileUri", "equals", "", "other", "", "hashCode", "", "toString", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class File implements HttpMultipartEntry {
        @Nullable
        private String fileName;
        @NotNull
        private Uri fileUri;

        public File(@NotNull Uri fileUri) {
            Intrinsics.checkNotNullParameter(fileUri, "fileUri");
            this.fileUri = fileUri;
            this.fileName = fileUri.getLastPathSegment();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof File) {
                return Intrinsics.areEqual(this.fileUri, ((File) obj).fileUri);
            }
            return false;
        }

        @Nullable
        public final String getFileName() {
            return this.fileName;
        }

        @NotNull
        public final Uri getFileUri() {
            return this.fileUri;
        }

        public int hashCode() {
            return this.fileUri.hashCode();
        }

        public final void setFileName(@Nullable String str) {
            this.fileName = str;
        }

        public final void setFileUri(@NotNull Uri uri) {
            Intrinsics.checkNotNullParameter(uri, "<set-?>");
            this.fileUri = uri;
        }

        @NotNull
        public String toString() {
            return "File{fileUri='" + this.fileUri + "'}";
        }

        public File(@NotNull Uri fileUri, @NotNull String fileName) {
            Intrinsics.checkNotNullParameter(fileUri, "fileUri");
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            this.fileUri = fileUri;
            this.fileName = fileName;
        }
    }
}
