package com.facebook.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.huawei.hms.api.FailedBinderCallBack;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001%B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0007J\b\u0010\r\u001a\u00020\tH\u0007J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0007J$\u0010\u0017\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0007H\u0007J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001aH\u0007J\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0007J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u0007H\u0002J \u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/facebook/internal/NativeAppCallAttachmentStore;", "", "()V", "ATTACHMENTS_DIR_NAME", "", "TAG", "attachmentsDirectory", "Ljava/io/File;", "addAttachments", "", "attachments", "", "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "cleanupAllAttachments", "cleanupAttachmentsForCall", FailedBinderCallBack.CALLER_ID, "Ljava/util/UUID;", "createAttachment", "attachmentBitmap", "Landroid/graphics/Bitmap;", "attachmentUri", "Landroid/net/Uri;", "ensureAttachmentsDirectoryExists", "getAttachmentFile", "attachmentName", "createDirs", "", "getAttachmentsDirectory", "getAttachmentsDirectoryForCall", "create", "openAttachment", "processAttachmentBitmap", "bitmap", "outputFile", "processAttachmentFile", "imageUri", "isContentUri", "Attachment", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class NativeAppCallAttachmentStore {
    @NotNull
    public static final String ATTACHMENTS_DIR_NAME = "com.facebook.NativeAppCallAttachmentStore.files";
    @NotNull
    public static final NativeAppCallAttachmentStore INSTANCE = new NativeAppCallAttachmentStore();
    @NotNull
    private static final String TAG;
    @Nullable
    private static File attachmentsDirectory;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0015\"\u0004\b\u001c\u0010\u0017¨\u0006\u001d"}, d2 = {"Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "", FailedBinderCallBack.CALLER_ID, "Ljava/util/UUID;", "bitmap", "Landroid/graphics/Bitmap;", "originalUri", "Landroid/net/Uri;", "(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V", "attachmentName", "", "getAttachmentName", "()Ljava/lang/String;", "attachmentUrl", "getAttachmentUrl", "getBitmap", "()Landroid/graphics/Bitmap;", "getCallId", "()Ljava/util/UUID;", "isContentUri", "", "()Z", "setContentUri", "(Z)V", "getOriginalUri", "()Landroid/net/Uri;", "shouldCreateFile", "getShouldCreateFile", "setShouldCreateFile", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Attachment {
        @Nullable
        private final String attachmentName;
        @NotNull
        private final String attachmentUrl;
        @Nullable
        private final Bitmap bitmap;
        @NotNull
        private final UUID callId;
        private boolean isContentUri;
        @Nullable
        private final Uri originalUri;
        private boolean shouldCreateFile;

        /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
            if (r7 == false) goto L9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Attachment(@org.jetbrains.annotations.NotNull java.util.UUID r6, @org.jetbrains.annotations.Nullable android.graphics.Bitmap r7, @org.jetbrains.annotations.Nullable android.net.Uri r8) {
            /*
                r5 = this;
                java.lang.String r0 = "callId"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                r5.<init>()
                r5.callId = r6
                r5.bitmap = r7
                r5.originalUri = r8
                r0 = 0
                r1 = 1
                if (r8 == 0) goto L59
                java.lang.String r7 = r8.getScheme()
                java.lang.String r2 = "content"
                boolean r2 = kotlin.text.StringsKt.equals(r2, r7, r1)
                if (r2 == 0) goto L35
                r5.isContentUri = r1
                java.lang.String r7 = r8.getAuthority()
                r2 = 0
                if (r7 == 0) goto L31
                r3 = 2
                java.lang.String r4 = "media"
                boolean r7 = kotlin.text.StringsKt.startsWith$default(r7, r4, r2, r3, r0)
                if (r7 != 0) goto L31
                goto L32
            L31:
                r1 = 0
            L32:
                r5.shouldCreateFile = r1
                goto L5d
            L35:
                java.lang.String r2 = r8.getScheme()
                java.lang.String r3 = "file"
                boolean r2 = kotlin.text.StringsKt.equals(r3, r2, r1)
                if (r2 == 0) goto L44
                r5.shouldCreateFile = r1
                goto L5d
            L44:
                com.facebook.internal.Utility r1 = com.facebook.internal.Utility.INSTANCE
                boolean r1 = com.facebook.internal.Utility.isWebUri(r8)
                if (r1 == 0) goto L4d
                goto L5d
            L4d:
                com.facebook.FacebookException r6 = new com.facebook.FacebookException
                java.lang.String r8 = "Unsupported scheme for media Uri : "
                java.lang.String r7 = kotlin.jvm.internal.Intrinsics.stringPlus(r8, r7)
                r6.<init>(r7)
                throw r6
            L59:
                if (r7 == 0) goto L84
                r5.shouldCreateFile = r1
            L5d:
                boolean r7 = r5.shouldCreateFile
                if (r7 != 0) goto L62
                goto L6a
            L62:
                java.util.UUID r7 = java.util.UUID.randomUUID()
                java.lang.String r0 = r7.toString()
            L6a:
                r5.attachmentName = r0
                boolean r7 = r5.shouldCreateFile
                if (r7 != 0) goto L75
                java.lang.String r6 = java.lang.String.valueOf(r8)
                goto L81
            L75:
                com.facebook.FacebookContentProvider$Companion r7 = com.facebook.FacebookContentProvider.Companion
                com.facebook.FacebookSdk r8 = com.facebook.FacebookSdk.INSTANCE
                java.lang.String r8 = com.facebook.FacebookSdk.getApplicationId()
                java.lang.String r6 = r7.getAttachmentUrl(r8, r6, r0)
            L81:
                r5.attachmentUrl = r6
                return
            L84:
                com.facebook.FacebookException r6 = new com.facebook.FacebookException
                java.lang.String r7 = "Cannot share media without a bitmap or Uri set"
                r6.<init>(r7)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeAppCallAttachmentStore.Attachment.<init>(java.util.UUID, android.graphics.Bitmap, android.net.Uri):void");
        }

        @Nullable
        public final String getAttachmentName() {
            return this.attachmentName;
        }

        @NotNull
        public final String getAttachmentUrl() {
            return this.attachmentUrl;
        }

        @Nullable
        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        @NotNull
        public final UUID getCallId() {
            return this.callId;
        }

        @Nullable
        public final Uri getOriginalUri() {
            return this.originalUri;
        }

        public final boolean getShouldCreateFile() {
            return this.shouldCreateFile;
        }

        public final boolean isContentUri() {
            return this.isContentUri;
        }

        public final void setContentUri(boolean z10) {
            this.isContentUri = z10;
        }

        public final void setShouldCreateFile(boolean z10) {
            this.shouldCreateFile = z10;
        }
    }

    static {
        String name = NativeAppCallAttachmentStore.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "NativeAppCallAttachmentStore::class.java.name");
        TAG = name;
    }

    private NativeAppCallAttachmentStore() {
    }

    @JvmStatic
    public static final void addAttachments(@Nullable Collection<Attachment> collection) throws FacebookException {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        if (attachmentsDirectory == null) {
            cleanupAllAttachments();
        }
        ensureAttachmentsDirectoryExists();
        ArrayList<File> arrayList = new ArrayList();
        try {
            for (Attachment attachment : collection) {
                if (attachment.getShouldCreateFile()) {
                    NativeAppCallAttachmentStore nativeAppCallAttachmentStore = INSTANCE;
                    File attachmentFile = getAttachmentFile(attachment.getCallId(), attachment.getAttachmentName(), true);
                    if (attachmentFile != null) {
                        arrayList.add(attachmentFile);
                        if (attachment.getBitmap() != null) {
                            nativeAppCallAttachmentStore.processAttachmentBitmap(attachment.getBitmap(), attachmentFile);
                        } else if (attachment.getOriginalUri() != null) {
                            nativeAppCallAttachmentStore.processAttachmentFile(attachment.getOriginalUri(), attachment.isContentUri(), attachmentFile);
                        }
                    }
                }
            }
        } catch (IOException e10) {
            Log.e(TAG, Intrinsics.stringPlus("Got unexpected exception:", e10));
            for (File file : arrayList) {
                if (file != null) {
                    try {
                        file.delete();
                    } catch (Exception unused) {
                    }
                }
            }
            throw new FacebookException(e10);
        }
    }

    @JvmStatic
    public static final void cleanupAllAttachments() {
        File attachmentsDirectory2 = getAttachmentsDirectory();
        if (attachmentsDirectory2 == null) {
            return;
        }
        FilesKt__UtilsKt.deleteRecursively(attachmentsDirectory2);
    }

    @JvmStatic
    public static final void cleanupAttachmentsForCall(@NotNull UUID callId) {
        Intrinsics.checkNotNullParameter(callId, "callId");
        File attachmentsDirectoryForCall = getAttachmentsDirectoryForCall(callId, false);
        if (attachmentsDirectoryForCall == null) {
            return;
        }
        FilesKt__UtilsKt.deleteRecursively(attachmentsDirectoryForCall);
    }

    @JvmStatic
    @NotNull
    public static final Attachment createAttachment(@NotNull UUID callId, @NotNull Bitmap attachmentBitmap) {
        Intrinsics.checkNotNullParameter(callId, "callId");
        Intrinsics.checkNotNullParameter(attachmentBitmap, "attachmentBitmap");
        return new Attachment(callId, attachmentBitmap, null);
    }

    @JvmStatic
    @Nullable
    public static final File ensureAttachmentsDirectoryExists() {
        File attachmentsDirectory2 = getAttachmentsDirectory();
        if (attachmentsDirectory2 != null) {
            attachmentsDirectory2.mkdirs();
        }
        return attachmentsDirectory2;
    }

    @JvmStatic
    @Nullable
    public static final File getAttachmentFile(@NotNull UUID callId, @Nullable String str, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(callId, "callId");
        File attachmentsDirectoryForCall = getAttachmentsDirectoryForCall(callId, z10);
        if (attachmentsDirectoryForCall == null) {
            return null;
        }
        try {
            return new File(attachmentsDirectoryForCall, URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final synchronized File getAttachmentsDirectory() {
        File file;
        synchronized (NativeAppCallAttachmentStore.class) {
            if (attachmentsDirectory == null) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                attachmentsDirectory = new File(FacebookSdk.getApplicationContext().getCacheDir(), ATTACHMENTS_DIR_NAME);
            }
            file = attachmentsDirectory;
        }
        return file;
    }

    @JvmStatic
    @Nullable
    public static final File getAttachmentsDirectoryForCall(@NotNull UUID callId, boolean z10) {
        Intrinsics.checkNotNullParameter(callId, "callId");
        if (attachmentsDirectory == null) {
            return null;
        }
        File file = new File(attachmentsDirectory, callId.toString());
        if (z10 && !file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @JvmStatic
    @Nullable
    public static final File openAttachment(@Nullable UUID uuid, @Nullable String str) throws FileNotFoundException {
        Utility utility = Utility.INSTANCE;
        if (!Utility.isNullOrEmpty(str) && uuid != null) {
            try {
                return getAttachmentFile(uuid, str, false);
            } catch (IOException unused) {
                throw new FileNotFoundException();
            }
        }
        throw new FileNotFoundException();
    }

    private final void processAttachmentBitmap(Bitmap bitmap, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        } finally {
            Utility utility = Utility.INSTANCE;
            Utility.closeQuietly(fileOutputStream);
        }
    }

    private final void processAttachmentFile(Uri uri, boolean z10, File file) throws IOException {
        InputStream openInputStream;
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            if (!z10) {
                openInputStream = new FileInputStream(uri.getPath());
            } else {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                openInputStream = FacebookSdk.getApplicationContext().getContentResolver().openInputStream(uri);
            }
            Utility utility = Utility.INSTANCE;
            Utility.copyAndCloseInputStream(openInputStream, fileOutputStream);
            Utility.closeQuietly(fileOutputStream);
        } catch (Throwable th2) {
            Utility utility2 = Utility.INSTANCE;
            Utility.closeQuietly(fileOutputStream);
            throw th2;
        }
    }

    @JvmStatic
    @NotNull
    public static final Attachment createAttachment(@NotNull UUID callId, @NotNull Uri attachmentUri) {
        Intrinsics.checkNotNullParameter(callId, "callId");
        Intrinsics.checkNotNullParameter(attachmentUri, "attachmentUri");
        return new Attachment(callId, null, attachmentUri);
    }
}
