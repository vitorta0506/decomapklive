package com.facebook.share.internal;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.NativeAppCallAttachmentStore;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.share.Sharer;
import com.facebook.share.model.CameraEffectTextures;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import com.huawei.hms.api.FailedBinderCallBack;
import io.jsonwebtoken.JwtParser;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000î\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0002J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002J\"\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u000e\u0010\u0015\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0016H\u0002J\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u0010H\u0007J\u001e\u0010\u001c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00040\u001d2\u0006\u0010\u001e\u001a\u00020\u0004H\u0007J\"\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010 2\b\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001b\u001a\u00020\u0010H\u0007J\u0012\u0010#\u001a\u0004\u0018\u00010\u00042\u0006\u0010$\u001a\u00020\u0018H\u0007J\"\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010 2\b\u0010&\u001a\u0004\u0018\u00010'2\u0006\u0010\u001b\u001a\u00020\u0010H\u0007J\u0012\u0010(\u001a\u0004\u0018\u00010\u00042\u0006\u0010$\u001a\u00020\u0018H\u0007J\u0018\u0010)\u001a\u00020*2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,H\u0007J\u001c\u0010.\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u0010H\u0007J\u001c\u0010/\u001a\u0004\u0018\u00010\u00182\b\u00100\u001a\u0004\u0018\u0001012\u0006\u0010\u001b\u001a\u00020\u0010H\u0007J\u0014\u00102\u001a\u0004\u0018\u00010\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u001c\u00103\u001a\u0004\u0018\u00010\u00042\b\u00104\u001a\u0004\u0018\u0001052\u0006\u0010\u001b\u001a\u00020\u0010H\u0007J,\u00106\u001a\u0002072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u00108\u001a\u0004\u0018\u00010*H\u0007J\"\u00109\u001a\u00020:2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,2\b\u0010;\u001a\u0004\u0018\u00010\u0004H\u0007J \u0010<\u001a\u00020:2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,2\u0006\u0010=\u001a\u00020>H\u0007J*\u0010?\u001a\u00020:2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,2\b\u0010@\u001a\u0004\u0018\u00010\u00042\u0006\u0010A\u001a\u00020BH\u0007J\u0018\u0010C\u001a\u00020:2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,H\u0007J \u0010D\u001a\u00020:2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,2\u0006\u0010E\u001a\u00020FH\u0007J,\u0010D\u001a\u00020:2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,2\b\u0010G\u001a\u0004\u0018\u00010B2\b\u0010H\u001a\u0004\u0018\u00010\u0004H\u0007J\"\u0010D\u001a\u00020:2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,2\b\u0010H\u001a\u0004\u0018\u00010\u0004H\u0007J\"\u0010I\u001a\u00020:2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,2\b\u0010@\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u0010J\u001a\u00020:2\u0006\u0010K\u001a\u00020\u00042\b\u0010L\u001a\u0004\u0018\u00010\u0004H\u0002J&\u0010M\u001a\u00020N2\b\u0010O\u001a\u0004\u0018\u00010P2\b\u0010Q\u001a\u0004\u0018\u00010\u00142\b\u0010+\u001a\u0004\u0018\u00010RH\u0007J$\u0010M\u001a\u00020N2\b\u0010O\u001a\u0004\u0018\u00010P2\u0006\u0010S\u001a\u00020\u00122\b\u0010+\u001a\u0004\u0018\u00010RH\u0007J&\u0010M\u001a\u00020N2\b\u0010O\u001a\u0004\u0018\u00010P2\b\u0010T\u001a\u0004\u0018\u00010U2\b\u0010+\u001a\u0004\u0018\u00010RH\u0007J*\u0010V\u001a\u00020:2\u0006\u0010\b\u001a\u00020\t2\b\u0010W\u001a\u0004\u0018\u00010X2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,H\u0007J\u0010\u0010Y\u001a\u00020:2\u0006\u0010\b\u001a\u00020\tH\u0007J\u0018\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u000207H\u0007J\u001c\u0010^\u001a\u0004\u0018\u00010_2\b\u0010`\u001a\u0004\u0018\u00010_2\u0006\u0010]\u001a\u000207H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006a"}, d2 = {"Lcom/facebook/share/internal/ShareInternalUtility;", "", "()V", "MY_STAGING_RESOURCES", "", "STAGING_PARAM", "getAppCallFromActivityResult", "Lcom/facebook/internal/AppCall;", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "getAttachment", "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", FailedBinderCallBack.CALLER_ID, "Ljava/util/UUID;", ShareConstants.MEDIA_URI, "Landroid/net/Uri;", "bitmap", "Landroid/graphics/Bitmap;", "medium", "Lcom/facebook/share/model/ShareMedia;", "getBackgroundAssetMediaInfo", "Landroid/os/Bundle;", "storyContent", "Lcom/facebook/share/model/ShareStoryContent;", "appCallId", "getFieldNameAndNamespaceFromFullName", "Landroid/util/Pair;", "fullName", "getMediaInfos", "", "mediaContent", "Lcom/facebook/share/model/ShareMediaContent;", "getNativeDialogCompletionGesture", "result", "getPhotoUrls", "photoContent", "Lcom/facebook/share/model/SharePhotoContent;", "getShareDialogPostId", "getShareResultProcessor", "Lcom/facebook/share/internal/ResultProcessor;", "callback", "Lcom/facebook/FacebookCallback;", "Lcom/facebook/share/Sharer$Result;", "getStickerUrl", "getTextureUrlBundle", "cameraEffectContent", "Lcom/facebook/share/model/ShareCameraEffectContent;", "getUriExtension", "getVideoUrl", "videoContent", "Lcom/facebook/share/model/ShareVideoContent;", "handleActivityResult", "", "resultProcessor", "invokeCallbackWithError", "", "error", "invokeCallbackWithException", "exception", "Ljava/lang/Exception;", "invokeCallbackWithResults", ShareConstants.RESULT_POST_ID, "graphResponse", "Lcom/facebook/GraphResponse;", "invokeOnCancelCallback", "invokeOnErrorCallback", "ex", "Lcom/facebook/FacebookException;", "response", "message", "invokeOnSuccessCallback", "logShareResult", "shareOutcome", "errorMessage", "newUploadStagingResourceWithImageRequest", "Lcom/facebook/GraphRequest;", "accessToken", "Lcom/facebook/AccessToken;", "image", "Lcom/facebook/GraphRequest$Callback;", "imageUri", ShareInternalUtility.STAGING_PARAM, "Ljava/io/File;", "registerSharerCallback", "callbackManager", "Lcom/facebook/CallbackManager;", "registerStaticShareCallback", "removeNamespacesFromOGJsonArray", "Lorg/json/JSONArray;", "jsonArray", "requireNamespace", "removeNamespacesFromOGJsonObject", "Lorg/json/JSONObject;", "jsonObject", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ShareInternalUtility {
    @NotNull
    public static final ShareInternalUtility INSTANCE = new ShareInternalUtility();
    @NotNull
    public static final String MY_STAGING_RESOURCES = "me/staging_resources";
    @NotNull
    public static final String STAGING_PARAM = "file";

    private ShareInternalUtility() {
    }

    private final AppCall getAppCallFromActivityResult(int i9, int i10, Intent intent) {
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        UUID callIdFromIntent = NativeProtocol.getCallIdFromIntent(intent);
        if (callIdFromIntent == null) {
            return null;
        }
        return AppCall.Companion.finishPendingCall(callIdFromIntent, i9);
    }

    private final NativeAppCallAttachmentStore.Attachment getAttachment(UUID uuid, ShareMedia<?, ?> shareMedia) {
        Bitmap bitmap;
        Uri localUrl;
        Uri uri = null;
        Bitmap bitmap2 = null;
        if (shareMedia instanceof SharePhoto) {
            SharePhoto sharePhoto = (SharePhoto) shareMedia;
            bitmap2 = sharePhoto.getBitmap();
            localUrl = sharePhoto.getImageUrl();
        } else if (shareMedia instanceof ShareVideo) {
            localUrl = ((ShareVideo) shareMedia).getLocalUrl();
        } else {
            bitmap = null;
            return getAttachment(uuid, uri, bitmap);
        }
        Bitmap bitmap3 = bitmap2;
        uri = localUrl;
        bitmap = bitmap3;
        return getAttachment(uuid, uri, bitmap);
    }

    @JvmStatic
    @Nullable
    public static final Bundle getBackgroundAssetMediaInfo(@Nullable ShareStoryContent shareStoryContent, @NotNull UUID appCallId) {
        List listOf;
        Intrinsics.checkNotNullParameter(appCallId, "appCallId");
        Bundle bundle = null;
        if (shareStoryContent != null && shareStoryContent.getBackgroundAsset() != null) {
            ShareMedia<?, ?> backgroundAsset = shareStoryContent.getBackgroundAsset();
            NativeAppCallAttachmentStore.Attachment attachment = INSTANCE.getAttachment(appCallId, backgroundAsset);
            if (attachment == null) {
                return null;
            }
            bundle = new Bundle();
            bundle.putString("type", backgroundAsset.getMediaType().name());
            bundle.putString(ShareConstants.MEDIA_URI, attachment.getAttachmentUrl());
            String uriExtension = getUriExtension(attachment.getOriginalUri());
            if (uriExtension != null) {
                Utility utility = Utility.INSTANCE;
                Utility.putNonEmptyString(bundle, ShareConstants.MEDIA_EXTENSION, uriExtension);
            }
            NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(attachment);
            NativeAppCallAttachmentStore.addAttachments(listOf);
        }
        return bundle;
    }

    @JvmStatic
    @NotNull
    public static final Pair<String, String> getFieldNameAndNamespaceFromFullName(@NotNull String fullName) {
        int indexOf$default;
        String str;
        int i9;
        Intrinsics.checkNotNullParameter(fullName, "fullName");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) fullName, ':', 0, false, 6, (Object) null);
        if (indexOf$default == -1 || fullName.length() <= (i9 = indexOf$default + 1)) {
            str = null;
        } else {
            str = fullName.substring(0, indexOf$default);
            Intrinsics.checkNotNullExpressionValue(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            fullName = fullName.substring(i9);
            Intrinsics.checkNotNullExpressionValue(fullName, "(this as java.lang.String).substring(startIndex)");
        }
        return new Pair<>(str, fullName);
    }

    @JvmStatic
    @Nullable
    public static final List<Bundle> getMediaInfos(@Nullable ShareMediaContent shareMediaContent, @NotNull UUID appCallId) {
        Bundle bundle;
        Intrinsics.checkNotNullParameter(appCallId, "appCallId");
        List<ShareMedia<?, ?>> media = shareMediaContent == null ? null : shareMediaContent.getMedia();
        if (media == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ShareMedia<?, ?> shareMedia : media) {
            NativeAppCallAttachmentStore.Attachment attachment = INSTANCE.getAttachment(appCallId, shareMedia);
            if (attachment == null) {
                bundle = null;
            } else {
                arrayList.add(attachment);
                bundle = new Bundle();
                bundle.putString("type", shareMedia.getMediaType().name());
                bundle.putString(ShareConstants.MEDIA_URI, attachment.getAttachmentUrl());
            }
            if (bundle != null) {
                arrayList2.add(bundle);
            }
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        return arrayList2;
    }

    @JvmStatic
    @Nullable
    public static final String getNativeDialogCompletionGesture(@NotNull Bundle result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result.containsKey(NativeProtocol.RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY)) {
            return result.getString(NativeProtocol.RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY);
        }
        return result.getString(NativeProtocol.EXTRA_DIALOG_COMPLETION_GESTURE_KEY);
    }

    @JvmStatic
    @Nullable
    public static final List<String> getPhotoUrls(@Nullable SharePhotoContent sharePhotoContent, @NotNull UUID appCallId) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(appCallId, "appCallId");
        List<SharePhoto> photos = sharePhotoContent == null ? null : sharePhotoContent.getPhotos();
        if (photos == null) {
            return null;
        }
        ArrayList<NativeAppCallAttachmentStore.Attachment> arrayList = new ArrayList();
        for (SharePhoto sharePhoto : photos) {
            NativeAppCallAttachmentStore.Attachment attachment = INSTANCE.getAttachment(appCallId, sharePhoto);
            if (attachment != null) {
                arrayList.add(attachment);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (NativeAppCallAttachmentStore.Attachment attachment2 : arrayList) {
            arrayList2.add(attachment2.getAttachmentUrl());
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        return arrayList2;
    }

    @JvmStatic
    @Nullable
    public static final String getShareDialogPostId(@NotNull Bundle result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result.containsKey(ShareConstants.RESULT_POST_ID)) {
            return result.getString(ShareConstants.RESULT_POST_ID);
        }
        if (result.containsKey(ShareConstants.EXTRA_RESULT_POST_ID)) {
            return result.getString(ShareConstants.EXTRA_RESULT_POST_ID);
        }
        return result.getString(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID);
    }

    @JvmStatic
    @NotNull
    public static final ResultProcessor getShareResultProcessor(@Nullable final FacebookCallback<Sharer.Result> facebookCallback) {
        return new ResultProcessor(facebookCallback) { // from class: com.facebook.share.internal.ShareInternalUtility$getShareResultProcessor$1
            final /* synthetic */ FacebookCallback<Sharer.Result> $callback;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(facebookCallback);
                this.$callback = facebookCallback;
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onCancel(@NotNull AppCall appCall) {
                Intrinsics.checkNotNullParameter(appCall, "appCall");
                ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
                ShareInternalUtility.invokeOnCancelCallback(this.$callback);
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onError(@NotNull AppCall appCall, @NotNull FacebookException error) {
                Intrinsics.checkNotNullParameter(appCall, "appCall");
                Intrinsics.checkNotNullParameter(error, "error");
                ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
                ShareInternalUtility.invokeOnErrorCallback(this.$callback, error);
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onSuccess(@NotNull AppCall appCall, @Nullable Bundle bundle) {
                boolean equals;
                boolean equals2;
                Intrinsics.checkNotNullParameter(appCall, "appCall");
                if (bundle != null) {
                    ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
                    String nativeDialogCompletionGesture = ShareInternalUtility.getNativeDialogCompletionGesture(bundle);
                    if (nativeDialogCompletionGesture != null) {
                        equals = StringsKt__StringsJVMKt.equals("post", nativeDialogCompletionGesture, true);
                        if (!equals) {
                            equals2 = StringsKt__StringsJVMKt.equals("cancel", nativeDialogCompletionGesture, true);
                            if (equals2) {
                                ShareInternalUtility.invokeOnCancelCallback(this.$callback);
                                return;
                            } else {
                                ShareInternalUtility.invokeOnErrorCallback(this.$callback, new FacebookException(NativeProtocol.ERROR_UNKNOWN_ERROR));
                                return;
                            }
                        }
                    }
                    ShareInternalUtility.invokeOnSuccessCallback(this.$callback, ShareInternalUtility.getShareDialogPostId(bundle));
                }
            }
        };
    }

    @JvmStatic
    @Nullable
    public static final Bundle getStickerUrl(@Nullable ShareStoryContent shareStoryContent, @NotNull UUID appCallId) {
        List listOf;
        Intrinsics.checkNotNullParameter(appCallId, "appCallId");
        if (shareStoryContent == null || shareStoryContent.getStickerAsset() == null) {
            return null;
        }
        new ArrayList().add(shareStoryContent.getStickerAsset());
        NativeAppCallAttachmentStore.Attachment attachment = INSTANCE.getAttachment(appCallId, shareStoryContent.getStickerAsset());
        if (attachment == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString(ShareConstants.MEDIA_URI, attachment.getAttachmentUrl());
        String uriExtension = getUriExtension(attachment.getOriginalUri());
        if (uriExtension != null) {
            Utility utility = Utility.INSTANCE;
            Utility.putNonEmptyString(bundle, ShareConstants.MEDIA_EXTENSION, uriExtension);
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(attachment);
        NativeAppCallAttachmentStore.addAttachments(listOf);
        return bundle;
    }

    @JvmStatic
    @Nullable
    public static final Bundle getTextureUrlBundle(@Nullable ShareCameraEffectContent shareCameraEffectContent, @NotNull UUID appCallId) {
        Intrinsics.checkNotNullParameter(appCallId, "appCallId");
        CameraEffectTextures textures = shareCameraEffectContent == null ? null : shareCameraEffectContent.getTextures();
        if (textures == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        for (String str : textures.keySet()) {
            NativeAppCallAttachmentStore.Attachment attachment = INSTANCE.getAttachment(appCallId, textures.getTextureUri(str), textures.getTextureBitmap(str));
            if (attachment != null) {
                arrayList.add(attachment);
                bundle.putString(str, attachment.getAttachmentUrl());
            }
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        return bundle;
    }

    @JvmStatic
    @Nullable
    public static final String getUriExtension(@Nullable Uri uri) {
        int lastIndexOf$default;
        if (uri == null) {
            return null;
        }
        String uri2 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "uri.toString()");
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) uri2, (char) JwtParser.SEPARATOR_CHAR, 0, false, 6, (Object) null);
        if (lastIndexOf$default == -1) {
            return null;
        }
        String substring = uri2.substring(lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.String).substring(startIndex)");
        return substring;
    }

    @JvmStatic
    @Nullable
    public static final String getVideoUrl(@Nullable ShareVideoContent shareVideoContent, @NotNull UUID appCallId) {
        ShareVideo video;
        List listOf;
        Intrinsics.checkNotNullParameter(appCallId, "appCallId");
        Uri localUrl = (shareVideoContent == null || (video = shareVideoContent.getVideo()) == null) ? null : video.getLocalUrl();
        if (localUrl == null) {
            return null;
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.Attachment createAttachment = NativeAppCallAttachmentStore.createAttachment(appCallId, localUrl);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(createAttachment);
        NativeAppCallAttachmentStore.addAttachments(listOf);
        return createAttachment.getAttachmentUrl();
    }

    @JvmStatic
    public static final boolean handleActivityResult(int i9, int i10, @Nullable Intent intent, @Nullable ResultProcessor resultProcessor) {
        FacebookException facebookException;
        AppCall appCallFromActivityResult = INSTANCE.getAppCallFromActivityResult(i9, i10, intent);
        if (appCallFromActivityResult == null) {
            return false;
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.cleanupAttachmentsForCall(appCallFromActivityResult.getCallId());
        if (resultProcessor == null) {
            return true;
        }
        Bundle bundle = null;
        if (intent != null) {
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            facebookException = NativeProtocol.getExceptionFromErrorData(NativeProtocol.getErrorDataFromResultIntent(intent));
        } else {
            facebookException = null;
        }
        if (facebookException != null) {
            if (facebookException instanceof FacebookOperationCanceledException) {
                resultProcessor.onCancel(appCallFromActivityResult);
            } else {
                resultProcessor.onError(appCallFromActivityResult, facebookException);
            }
        } else {
            if (intent != null) {
                NativeProtocol nativeProtocol2 = NativeProtocol.INSTANCE;
                bundle = NativeProtocol.getSuccessResultsFromIntent(intent);
            }
            resultProcessor.onSuccess(appCallFromActivityResult, bundle);
        }
        return true;
    }

    @JvmStatic
    public static final void invokeCallbackWithError(@Nullable FacebookCallback<Sharer.Result> facebookCallback, @Nullable String str) {
        invokeOnErrorCallback(facebookCallback, str);
    }

    @JvmStatic
    public static final void invokeCallbackWithException(@Nullable FacebookCallback<Sharer.Result> facebookCallback, @NotNull Exception exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        if (exception instanceof FacebookException) {
            invokeOnErrorCallback(facebookCallback, (FacebookException) exception);
        } else {
            invokeCallbackWithError(facebookCallback, Intrinsics.stringPlus("Error preparing share content: ", exception.getLocalizedMessage()));
        }
    }

    @JvmStatic
    public static final void invokeCallbackWithResults(@Nullable FacebookCallback<Sharer.Result> facebookCallback, @Nullable String str, @NotNull GraphResponse graphResponse) {
        Intrinsics.checkNotNullParameter(graphResponse, "graphResponse");
        FacebookRequestError error = graphResponse.getError();
        if (error != null) {
            String errorMessage = error.getErrorMessage();
            Utility utility = Utility.INSTANCE;
            if (Utility.isNullOrEmpty(errorMessage)) {
                errorMessage = "Unexpected error sharing.";
            }
            invokeOnErrorCallback(facebookCallback, graphResponse, errorMessage);
            return;
        }
        invokeOnSuccessCallback(facebookCallback, str);
    }

    @JvmStatic
    public static final void invokeOnCancelCallback(@Nullable FacebookCallback<Sharer.Result> facebookCallback) {
        INSTANCE.logShareResult(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED, null);
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onCancel();
    }

    @JvmStatic
    public static final void invokeOnErrorCallback(@Nullable FacebookCallback<Sharer.Result> facebookCallback, @Nullable GraphResponse graphResponse, @Nullable String str) {
        INSTANCE.logShareResult("error", str);
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onError(new FacebookGraphResponseException(graphResponse, str));
    }

    @JvmStatic
    public static final void invokeOnSuccessCallback(@Nullable FacebookCallback<Sharer.Result> facebookCallback, @Nullable String str) {
        INSTANCE.logShareResult(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED, null);
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onSuccess(new Sharer.Result(str));
    }

    private final void logShareResult(String str, String str2) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(FacebookSdk.getApplicationContext());
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_SHARE_OUTCOME, str);
        if (str2 != null) {
            bundle.putString(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE, str2);
        }
        internalAppEventsLogger.logEventImplicitly(AnalyticsEvents.EVENT_SHARE_RESULT, bundle);
    }

    @JvmStatic
    @NotNull
    public static final GraphRequest newUploadStagingResourceWithImageRequest(@Nullable AccessToken accessToken, @Nullable Bitmap bitmap, @Nullable GraphRequest.Callback callback) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable(STAGING_PARAM, bitmap);
        return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback, null, 32, null);
    }

    @JvmStatic
    public static final void registerSharerCallback(final int i9, @Nullable CallbackManager callbackManager, @Nullable final FacebookCallback<Sharer.Result> facebookCallback) {
        if (callbackManager instanceof CallbackManagerImpl) {
            ((CallbackManagerImpl) callbackManager).registerCallback(i9, new CallbackManagerImpl.Callback() { // from class: com.facebook.share.internal.b
                @Override // com.facebook.internal.CallbackManagerImpl.Callback
                public final boolean onActivityResult(int i10, Intent intent) {
                    boolean m187registerSharerCallback$lambda1;
                    m187registerSharerCallback$lambda1 = ShareInternalUtility.m187registerSharerCallback$lambda1(i9, facebookCallback, i10, intent);
                    return m187registerSharerCallback$lambda1;
                }
            });
            return;
        }
        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: registerSharerCallback$lambda-1  reason: not valid java name */
    public static final boolean m187registerSharerCallback$lambda1(int i9, FacebookCallback facebookCallback, int i10, Intent intent) {
        return handleActivityResult(i9, i10, intent, getShareResultProcessor(facebookCallback));
    }

    @JvmStatic
    public static final void registerStaticShareCallback(final int i9) {
        CallbackManagerImpl.Companion.registerStaticCallback(i9, new CallbackManagerImpl.Callback() { // from class: com.facebook.share.internal.a
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public final boolean onActivityResult(int i10, Intent intent) {
                boolean m188registerStaticShareCallback$lambda0;
                m188registerStaticShareCallback$lambda0 = ShareInternalUtility.m188registerStaticShareCallback$lambda0(i9, i10, intent);
                return m188registerStaticShareCallback$lambda0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: registerStaticShareCallback$lambda-0  reason: not valid java name */
    public static final boolean m188registerStaticShareCallback$lambda0(int i9, int i10, Intent intent) {
        return handleActivityResult(i9, i10, intent, getShareResultProcessor(null));
    }

    @JvmStatic
    @NotNull
    public static final JSONArray removeNamespacesFromOGJsonArray(@NotNull JSONArray jsonArray, boolean z10) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        JSONArray jSONArray = new JSONArray();
        int length = jsonArray.length();
        if (length > 0) {
            int i9 = 0;
            while (true) {
                int i10 = i9 + 1;
                Object obj = jsonArray.get(i9);
                if (obj instanceof JSONArray) {
                    obj = removeNamespacesFromOGJsonArray((JSONArray) obj, z10);
                } else if (obj instanceof JSONObject) {
                    obj = removeNamespacesFromOGJsonObject((JSONObject) obj, z10);
                }
                jSONArray.put(obj);
                if (i10 >= length) {
                    break;
                }
                i9 = i10;
            }
        }
        return jSONArray;
    }

    @JvmStatic
    @Nullable
    public static final JSONObject removeNamespacesFromOGJsonObject(@Nullable JSONObject jSONObject, boolean z10) {
        if (jSONObject == null) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            JSONArray names = jSONObject.names();
            if (names == null) {
                return null;
            }
            int i9 = 0;
            int length = names.length();
            if (length > 0) {
                while (true) {
                    int i10 = i9 + 1;
                    String key = names.getString(i9);
                    Object obj = jSONObject.get(key);
                    if (obj instanceof JSONObject) {
                        obj = removeNamespacesFromOGJsonObject((JSONObject) obj, true);
                    } else if (obj instanceof JSONArray) {
                        obj = removeNamespacesFromOGJsonArray((JSONArray) obj, true);
                    }
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    Pair<String, String> fieldNameAndNamespaceFromFullName = getFieldNameAndNamespaceFromFullName(key);
                    String str = (String) fieldNameAndNamespaceFromFullName.first;
                    String str2 = (String) fieldNameAndNamespaceFromFullName.second;
                    if (z10) {
                        if (str != null && Intrinsics.areEqual(str, DeviceRequestsHelper.SDK_HEADER)) {
                            jSONObject2.put(key, obj);
                        } else {
                            if (str != null && !Intrinsics.areEqual(str, "og")) {
                                jSONObject3.put(str2, obj);
                            }
                            jSONObject2.put(str2, obj);
                        }
                    } else if (str != null && Intrinsics.areEqual(str, "fb")) {
                        jSONObject2.put(key, obj);
                    } else {
                        jSONObject2.put(str2, obj);
                    }
                    if (i10 >= length) {
                        break;
                    }
                    i9 = i10;
                }
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put("data", jSONObject3);
            }
            return jSONObject2;
        } catch (JSONException unused) {
            throw new FacebookException("Failed to create json object from share content");
        }
    }

    @JvmStatic
    public static final void invokeOnErrorCallback(@Nullable FacebookCallback<Sharer.Result> facebookCallback, @Nullable String str) {
        INSTANCE.logShareResult("error", str);
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onError(new FacebookException(str));
    }

    @JvmStatic
    @NotNull
    public static final GraphRequest newUploadStagingResourceWithImageRequest(@Nullable AccessToken accessToken, @Nullable File file, @Nullable GraphRequest.Callback callback) throws FileNotFoundException {
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable(STAGING_PARAM, parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback, null, 32, null);
    }

    @JvmStatic
    public static final void invokeOnErrorCallback(@Nullable FacebookCallback<Sharer.Result> facebookCallback, @NotNull FacebookException ex) {
        Intrinsics.checkNotNullParameter(ex, "ex");
        INSTANCE.logShareResult("error", ex.getMessage());
        if (facebookCallback == null) {
            return;
        }
        facebookCallback.onError(ex);
    }

    private final NativeAppCallAttachmentStore.Attachment getAttachment(UUID uuid, Uri uri, Bitmap bitmap) {
        if (bitmap != null) {
            NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
            return NativeAppCallAttachmentStore.createAttachment(uuid, bitmap);
        } else if (uri != null) {
            NativeAppCallAttachmentStore nativeAppCallAttachmentStore2 = NativeAppCallAttachmentStore.INSTANCE;
            return NativeAppCallAttachmentStore.createAttachment(uuid, uri);
        } else {
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final GraphRequest newUploadStagingResourceWithImageRequest(@Nullable AccessToken accessToken, @NotNull Uri imageUri, @Nullable GraphRequest.Callback callback) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(imageUri, "imageUri");
        String path = imageUri.getPath();
        Utility utility = Utility.INSTANCE;
        if (Utility.isFileUri(imageUri) && path != null) {
            return newUploadStagingResourceWithImageRequest(accessToken, new File(path), callback);
        }
        if (Utility.isContentUri(imageUri)) {
            GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(imageUri, "image/png");
            Bundle bundle = new Bundle(1);
            bundle.putParcelable(STAGING_PARAM, parcelableResourceWithMimeType);
            return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback, null, 32, null);
        }
        throw new FacebookException("The image Uri must be either a file:// or content:// Uri");
    }
}
