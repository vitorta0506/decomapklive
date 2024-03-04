package com.vk.sdk.api.photos;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.api.sdk.requests.VKRequest;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.ApiResponseParser;
import com.vk.sdk.api.GsonHolder;
import com.vk.sdk.api.NewApiRequest;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseOkResponse;
import com.vk.sdk.api.base.dto.BaseUploadServer;
import com.vk.sdk.api.photos.dto.PhotosGetAlbumsResponse;
import com.vk.sdk.api.photos.dto.PhotosGetAllCommentsResponse;
import com.vk.sdk.api.photos.dto.PhotosGetAllExtendedResponse;
import com.vk.sdk.api.photos.dto.PhotosGetAllResponse;
import com.vk.sdk.api.photos.dto.PhotosGetCommentsExtendedResponse;
import com.vk.sdk.api.photos.dto.PhotosGetCommentsExtendedSort;
import com.vk.sdk.api.photos.dto.PhotosGetCommentsResponse;
import com.vk.sdk.api.photos.dto.PhotosGetCommentsSort;
import com.vk.sdk.api.photos.dto.PhotosGetExtendedResponse;
import com.vk.sdk.api.photos.dto.PhotosGetNewTagsResponse;
import com.vk.sdk.api.photos.dto.PhotosGetResponse;
import com.vk.sdk.api.photos.dto.PhotosGetUserPhotosExtendedResponse;
import com.vk.sdk.api.photos.dto.PhotosGetUserPhotosResponse;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import com.vk.sdk.api.photos.dto.PhotosPhotoAlbumFull;
import com.vk.sdk.api.photos.dto.PhotosPhotoFull;
import com.vk.sdk.api.photos.dto.PhotosPhotoTag;
import com.vk.sdk.api.photos.dto.PhotosPhotoUpload;
import com.vk.sdk.api.photos.dto.PhotosReportCommentReason;
import com.vk.sdk.api.photos.dto.PhotosReportReason;
import com.vk.sdk.api.photos.dto.PhotosSaveOwnerCoverPhotoResponse;
import com.vk.sdk.api.photos.dto.PhotosSaveOwnerPhotoResponse;
import com.vk.sdk.api.photos.dto.PhotosSearchResponse;
import com.vk.sdk.api.users.dto.UsersFields;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0084\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bJ(\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007Jm\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00042\u0006\u0010\u0010\u001a\u00020\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00142\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010\u0019J\u007f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00142\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010!J \u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bJ \u0010#\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010$\u001a\u00020\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000bJ \u0010%\u001a\b\u0012\u0004\u0012\u00020&0\u00042\u0006\u0010'\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bJm\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u00100Jy\u00101\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010$\u001a\u00020\t2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00142\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u00102J>\u00103\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010'\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0014J\u0083\u0001\u00104\u001a\b\u0012\u0004\u0012\u0002050\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00142\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00109\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010=Jk\u0010>\u001a\b\u0012\u0004\u0012\u00020?0\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0010\b\u0002\u0010@\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00142\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010CJ$\u0010D\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000bJe\u0010F\u001a\b\u0012\u0004\u0012\u00020G0\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010KJM\u0010L\u001a\b\u0012\u0004\u0012\u00020M0\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010OJe\u0010P\u001a\b\u0012\u0004\u0012\u00020Q0\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010KJ1\u0010R\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020S0\u00140\u00042\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00070\u00142\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010UJ1\u0010V\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020W0\u00140\u00042\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00070\u00142\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010UJ=\u0010X\u001a\b\u0012\u0004\u0012\u00020Y0\u00042\u0006\u0010Z\u001a\u00020\t2\n\b\u0002\u0010[\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010]\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010^J\u007f\u0010_\u001a\b\u0012\u0004\u0012\u00020`0\u00042\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010a\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010b\u001a\u0004\u0018\u00010c2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010d\u001a\n\u0012\u0004\u0012\u00020e\u0018\u00010\u0014¢\u0006\u0002\u0010fJ\u007f\u0010g\u001a\b\u0012\u0004\u0012\u00020h0\u00042\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010a\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010b\u001a\u0004\u0018\u00010i2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010d\u001a\n\u0012\u0004\u0012\u00020e\u0018\u00010\u0014¢\u0006\u0002\u0010jJ\u0083\u0001\u0010k\u001a\b\u0012\u0004\u0012\u00020l0\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u00106\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00142\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u00109\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010=J\u0014\u0010m\u001a\b\u0012\u0004\u0012\u00020Y0\u00042\u0006\u0010\u0011\u001a\u00020\u000bJI\u0010n\u001a\b\u0012\u0004\u0012\u00020Y0\u00042\u0006\u0010\u0011\u001a\u00020\u000b2\n\b\u0002\u0010o\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010[\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010]\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010pJ\u001d\u0010q\u001a\b\u0012\u0004\u0012\u00020r0\u00042\n\b\u0002\u0010s\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010tJ)\u0010u\u001a\b\u0012\u0004\u0012\u00020v0\u00042\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010wJI\u0010x\u001a\b\u0012\u0004\u0012\u00020Y0\u00042\u0006\u0010\u0011\u001a\u00020\u000b2\n\b\u0002\u0010[\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010y\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010z\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010{J\u0018\u0010|\u001a\b\u0012\u0004\u0012\u00020Y0\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bJ2\u0010}\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020~0\u00140\u00042\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007J*\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020r0\u00042\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000b¢\u0006\u0003\u0010\u0080\u0001JD\u0010\u0081\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010\u00042\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u0083\u0001JD\u0010\u0084\u0001\u001a\t\u0012\u0005\u0012\u00030\u0085\u00010\u00042\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010\u0083\u0001J\u0019\u0010\u0086\u0001\u001a\b\u0012\u0004\u0012\u00020r0\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000bJ3\u0010\u0087\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\t¢\u0006\u0003\u0010\u0088\u0001J*\u0010\u0089\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0007\u0010\u008a\u0001\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bJc\u0010\u008b\u0001\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\u0006\u001a\u00020\t2\u0006\u0010E\u001a\u00020\u000b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000b\b\u0002\u0010\u008c\u0001\u001a\u0004\u0018\u00010+2\u000b\b\u0002\u0010\u008d\u0001\u001a\u0004\u0018\u00010+2\u000b\b\u0002\u0010\u008e\u0001\u001a\u0004\u0018\u00010+2\u000b\b\u0002\u0010\u008f\u0001\u001a\u0004\u0018\u00010+¢\u0006\u0003\u0010\u0090\u0001J)\u0010\u0091\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bJA\u0010\u0092\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010$\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000b\b\u0002\u0010\u0093\u0001\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010\u0094\u0001\u001a\u0004\u0018\u00010\t¢\u0006\u0003\u0010\u0095\u0001JA\u0010\u0096\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000b\b\u0002\u0010\u0093\u0001\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010\u0094\u0001\u001a\u0004\u0018\u00010\t¢\u0006\u0003\u0010\u0095\u0001J+\u0010\u0097\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\t2\f\b\u0002\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001J+\u0010\u009a\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020\t2\f\b\u0002\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u009b\u0001J!\u0010\u009c\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bJ!\u0010\u009d\u0001\u001a\b\u0012\u0004\u0012\u00020&0\u00042\u0006\u0010'\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bJ|\u0010\u009e\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020S0\u00140\u00042\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u000b\b\u0002\u0010\u009f\u0001\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010 \u0001\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010¡\u0001\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010¢\u0001J6\u0010£\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020S0\u00140\u00042\u0006\u0010\u0011\u001a\u00020\u000b2\u0007\u0010¤\u0001\u001a\u00020\u00072\u0007\u0010\u009f\u0001\u001a\u00020\t2\u0007\u0010¡\u0001\u001a\u00020\u0007JT\u0010¥\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020S0\u00140\u00042\u0007\u0010¤\u0001\u001a\u00020\u00072\u0007\u0010\u009f\u0001\u001a\u00020\t2\u0007\u0010¡\u0001\u001a\u00020\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u000b\b\u0002\u0010¦\u0001\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010§\u0001\u001a\u0004\u0018\u00010\u0007J<\u0010¨\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020S0\u00140\u00042\u0007\u0010¤\u0001\u001a\u00020\u00072\u000b\b\u0002\u0010\u009f\u0001\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010¡\u0001\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010©\u0001J \u0010ª\u0001\u001a\t\u0012\u0005\u0012\u00030«\u00010\u00042\u0007\u0010¡\u0001\u001a\u00020\u00072\u0007\u0010¤\u0001\u001a\u00020\u0007J5\u0010¬\u0001\u001a\t\u0012\u0005\u0012\u00030\u00ad\u00010\u00042\u000b\b\u0002\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010¡\u0001\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010¤\u0001\u001a\u0004\u0018\u00010\u0007Jx\u0010®\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020S0\u00140\u00042\u0007\u0010¤\u0001\u001a\u00020\u00072\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u000b\b\u0002\u0010\u009f\u0001\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010¡\u0001\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0007¢\u0006\u0003\u0010¯\u0001J\u0086\u0001\u0010°\u0001\u001a\t\u0012\u0005\u0012\u00030±\u00010\u00042\u000b\b\u0002\u0010²\u0001\u001a\u0004\u0018\u00010\u00072\u000b\b\u0002\u0010³\u0001\u001a\u0004\u0018\u00010+2\u000b\b\u0002\u0010´\u0001\u001a\u0004\u0018\u00010+2\u000b\b\u0002\u0010µ\u0001\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010¶\u0001\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\t2\u000b\b\u0002\u0010·\u0001\u001a\u0004\u0018\u00010\t¢\u0006\u0003\u0010¸\u0001¨\u0006¹\u0001"}, d2 = {"Lcom/vk/sdk/api/photos/PhotosService;", "", "()V", "photosConfirmTag", "Lcom/vk/api/sdk/requests/VKRequest;", "Lcom/vk/sdk/api/base/dto/BaseOkResponse;", "photoId", "", "tagId", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "photosCopy", "accessKey", "photosCreateAlbum", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoAlbumFull;", "title", "groupId", "description", "privacyView", "", "privacyComment", "uploadByAdminsOnly", "", "commentsDisabled", "(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "photosCreateComment", "message", "attachments", "fromGroup", "replyToComment", "stickerId", TPDownloadProxyEnum.USER_GUID, "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "photosDelete", "photosDeleteAlbum", "albumId", "photosDeleteComment", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "commentId", "photosEdit", ShareConstants.FEED_CAPTION_PARAM, "latitude", "", "longitude", "placeStr", "foursquareId", "deletePlace", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "photosEditAlbum", "(ILjava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "photosEditComment", "photosGet", "Lcom/vk/sdk/api/photos/dto/PhotosGetResponse;", "photoIds", "rev", "feedType", "feed", "photoSizes", TypedValues.CycleType.S_WAVE_OFFSET, AnimatedPasterJsonConfig.CONFIG_COUNT, "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetAlbums", "Lcom/vk/sdk/api/photos/dto/PhotosGetAlbumsResponse;", "albumIds", "needSystem", "needCovers", "(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetAlbumsCount", Contants.USER_ID, "photosGetAll", "Lcom/vk/sdk/api/photos/dto/PhotosGetAllResponse;", "noServiceAlbums", "needHidden", "skipHidden", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetAllComments", "Lcom/vk/sdk/api/photos/dto/PhotosGetAllCommentsResponse;", "needLikes", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetAllExtended", "Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;", "photosGetById", "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "photos", "(Ljava/util/List;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetByIdExtended", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoFull;", "photosGetChatUploadServer", "Lcom/vk/sdk/api/base/dto/BaseUploadServer;", "chatId", "cropX", "cropY", "cropWidth", "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetComments", "Lcom/vk/sdk/api/photos/dto/PhotosGetCommentsResponse;", "startCommentId", "sort", "Lcom/vk/sdk/api/photos/dto/PhotosGetCommentsSort;", GraphRequest.FIELDS_PARAM, "Lcom/vk/sdk/api/users/dto/UsersFields;", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/photos/dto/PhotosGetCommentsSort;Ljava/lang/String;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetCommentsExtended", "Lcom/vk/sdk/api/photos/dto/PhotosGetCommentsExtendedResponse;", "Lcom/vk/sdk/api/photos/dto/PhotosGetCommentsExtendedSort;", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/photos/dto/PhotosGetCommentsExtendedSort;Ljava/lang/String;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetExtended", "Lcom/vk/sdk/api/photos/dto/PhotosGetExtendedResponse;", "photosGetMarketAlbumUploadServer", "photosGetMarketUploadServer", "mainPhoto", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetMessagesUploadServer", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoUpload;", "peerId", "(Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetNewTags", "Lcom/vk/sdk/api/photos/dto/PhotosGetNewTagsResponse;", "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetOwnerCoverPhotoUploadServer", "cropX2", "cropY2", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetOwnerPhotoUploadServer", "photosGetTags", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoTag;", "photosGetUploadServer", "(Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetUserPhotos", "Lcom/vk/sdk/api/photos/dto/PhotosGetUserPhotosResponse;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "photosGetUserPhotosExtended", "Lcom/vk/sdk/api/photos/dto/PhotosGetUserPhotosExtendedResponse;", "photosGetWallUploadServer", "photosMakeCover", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "photosMove", "targetAlbumId", "photosPutTag", com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w, "y", "x2", "y2", "(ILcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lcom/vk/api/sdk/requests/VKRequest;", "photosRemoveTag", "photosReorderAlbums", "before", "after", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "photosReorderPhotos", "photosReport", "reason", "Lcom/vk/sdk/api/photos/dto/PhotosReportReason;", "photosReportComment", "Lcom/vk/sdk/api/photos/dto/PhotosReportCommentReason;", "photosRestore", "photosRestoreComment", "photosSave", "server", "photosList", "hash", "(Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "photosSaveMarketAlbumPhoto", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "photosSaveMarketPhoto", "cropData", "cropHash", "photosSaveMessagesPhoto", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "photosSaveOwnerCoverPhoto", "Lcom/vk/sdk/api/photos/dto/PhotosSaveOwnerCoverPhotoResponse;", "photosSaveOwnerPhoto", "Lcom/vk/sdk/api/photos/dto/PhotosSaveOwnerPhotoResponse;", "photosSaveWallPhoto", "(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;", "photosSearch", "Lcom/vk/sdk/api/photos/dto/PhotosSearchResponse;", "q", "lat", "long", "startTime", "endTime", "radius", "(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosService {
    public static /* synthetic */ VKRequest photosConfirmTag$default(PhotosService photosService, String str, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            userId = null;
        }
        return photosService.photosConfirmTag(str, i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosConfirmTag$lambda-0  reason: not valid java name */
    public static final BaseOkResponse m1215photosConfirmTag$lambda0(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest photosCopy$default(PhotosService photosService, UserId userId, int i9, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str = null;
        }
        return photosService.photosCopy(userId, i9, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosCopy$lambda-3  reason: not valid java name */
    public static final Integer m1216photosCopy$lambda3(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosCreateAlbum$lambda-6  reason: not valid java name */
    public static final PhotosPhotoAlbumFull m1217photosCreateAlbum$lambda6(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosPhotoAlbumFull) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosPhotoAlbumFull.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosCreateComment$lambda-14  reason: not valid java name */
    public static final Integer m1218photosCreateComment$lambda14(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    public static /* synthetic */ VKRequest photosDelete$default(PhotosService photosService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return photosService.photosDelete(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosDelete$lambda-24  reason: not valid java name */
    public static final BaseOkResponse m1219photosDelete$lambda24(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest photosDeleteAlbum$default(PhotosService photosService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return photosService.photosDeleteAlbum(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosDeleteAlbum$lambda-27  reason: not valid java name */
    public static final BaseOkResponse m1220photosDeleteAlbum$lambda27(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest photosDeleteComment$default(PhotosService photosService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return photosService.photosDeleteComment(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosDeleteComment$lambda-30  reason: not valid java name */
    public static final BaseBoolInt m1221photosDeleteComment$lambda30(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosEdit$lambda-33  reason: not valid java name */
    public static final BaseOkResponse m1222photosEdit$lambda33(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosEditAlbum$lambda-42  reason: not valid java name */
    public static final BaseOkResponse m1223photosEditAlbum$lambda42(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest photosEditComment$default(PhotosService photosService, int i9, UserId userId, String str, List list, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            str = null;
        }
        if ((i10 & 8) != 0) {
            list = null;
        }
        return photosService.photosEditComment(i9, userId, str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosEditComment$lambda-51  reason: not valid java name */
    public static final BaseOkResponse m1224photosEditComment$lambda51(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest photosGet$default(PhotosService photosService, UserId userId, String str, List list, Boolean bool, String str2, Integer num, Boolean bool2, Integer num2, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        if ((i9 & 16) != 0) {
            str2 = null;
        }
        if ((i9 & 32) != 0) {
            num = null;
        }
        if ((i9 & 64) != 0) {
            bool2 = null;
        }
        if ((i9 & 128) != 0) {
            num2 = null;
        }
        if ((i9 & 256) != 0) {
            num3 = null;
        }
        return photosService.photosGet(userId, str, list, bool, str2, num, bool2, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGet$lambda-56  reason: not valid java name */
    public static final PhotosGetResponse m1225photosGet$lambda56(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosGetResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosGetResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest photosGetAlbums$default(PhotosService photosService, UserId userId, List list, Integer num, Integer num2, Boolean bool, Boolean bool2, Boolean bool3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            list = null;
        }
        if ((i9 & 4) != 0) {
            num = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            bool = null;
        }
        if ((i9 & 32) != 0) {
            bool2 = null;
        }
        if ((i9 & 64) != 0) {
            bool3 = null;
        }
        return photosService.photosGetAlbums(userId, list, num, num2, bool, bool2, bool3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetAlbums$lambda-78  reason: not valid java name */
    public static final PhotosGetAlbumsResponse m1226photosGetAlbums$lambda78(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosGetAlbumsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosGetAlbumsResponse.class);
    }

    public static /* synthetic */ VKRequest photosGetAlbumsCount$default(PhotosService photosService, UserId userId, UserId userId2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            userId2 = null;
        }
        return photosService.photosGetAlbumsCount(userId, userId2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetAlbumsCount$lambda-87  reason: not valid java name */
    public static final Integer m1227photosGetAlbumsCount$lambda87(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    public static /* synthetic */ VKRequest photosGetAll$default(PhotosService photosService, UserId userId, Integer num, Integer num2, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        if ((i9 & 16) != 0) {
            bool2 = null;
        }
        if ((i9 & 32) != 0) {
            bool3 = null;
        }
        if ((i9 & 64) != 0) {
            bool4 = null;
        }
        return photosService.photosGetAll(userId, num, num2, bool, bool2, bool3, bool4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetAll$lambda-91  reason: not valid java name */
    public static final PhotosGetAllResponse m1228photosGetAll$lambda91(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosGetAllResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosGetAllResponse.class);
    }

    public static /* synthetic */ VKRequest photosGetAllComments$default(PhotosService photosService, UserId userId, Integer num, Boolean bool, Integer num2, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            bool = null;
        }
        if ((i9 & 8) != 0) {
            num2 = null;
        }
        if ((i9 & 16) != 0) {
            num3 = null;
        }
        return photosService.photosGetAllComments(userId, num, bool, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetAllComments$lambda-109  reason: not valid java name */
    public static final PhotosGetAllCommentsResponse m1229photosGetAllComments$lambda109(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosGetAllCommentsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosGetAllCommentsResponse.class);
    }

    public static /* synthetic */ VKRequest photosGetAllExtended$default(PhotosService photosService, UserId userId, Integer num, Integer num2, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        if ((i9 & 16) != 0) {
            bool2 = null;
        }
        if ((i9 & 32) != 0) {
            bool3 = null;
        }
        if ((i9 & 64) != 0) {
            bool4 = null;
        }
        return photosService.photosGetAllExtended(userId, num, num2, bool, bool2, bool3, bool4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetAllExtended$lambda-100  reason: not valid java name */
    public static final PhotosGetAllExtendedResponse m1230photosGetAllExtended$lambda100(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosGetAllExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosGetAllExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest photosGetById$default(PhotosService photosService, List list, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bool = null;
        }
        return photosService.photosGetById(list, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetById$lambda-116  reason: not valid java name */
    public static final List m1231photosGetById$lambda116(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PhotosPhoto>>() { // from class: com.vk.sdk.api.photos.PhotosService$photosGetById$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest photosGetByIdExtended$default(PhotosService photosService, List list, Boolean bool, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bool = null;
        }
        return photosService.photosGetByIdExtended(list, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetByIdExtended$lambda-119  reason: not valid java name */
    public static final List m1232photosGetByIdExtended$lambda119(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PhotosPhotoFull>>() { // from class: com.vk.sdk.api.photos.PhotosService$photosGetByIdExtended$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest photosGetChatUploadServer$default(PhotosService photosService, int i9, Integer num, Integer num2, Integer num3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        if ((i10 & 8) != 0) {
            num3 = null;
        }
        return photosService.photosGetChatUploadServer(i9, num, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetChatUploadServer$lambda-122  reason: not valid java name */
    public static final BaseUploadServer m1233photosGetChatUploadServer$lambda122(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseUploadServer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseUploadServer.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetComments$lambda-127  reason: not valid java name */
    public static final PhotosGetCommentsResponse m1234photosGetComments$lambda127(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosGetCommentsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosGetCommentsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetCommentsExtended$lambda-138  reason: not valid java name */
    public static final PhotosGetCommentsExtendedResponse m1235photosGetCommentsExtended$lambda138(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosGetCommentsExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosGetCommentsExtendedResponse.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKRequest photosGetExtended$default(PhotosService photosService, UserId userId, String str, List list, Boolean bool, String str2, Integer num, Boolean bool2, Integer num2, Integer num3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        if ((i9 & 8) != 0) {
            bool = null;
        }
        if ((i9 & 16) != 0) {
            str2 = null;
        }
        if ((i9 & 32) != 0) {
            num = null;
        }
        if ((i9 & 64) != 0) {
            bool2 = null;
        }
        if ((i9 & 128) != 0) {
            num2 = null;
        }
        if ((i9 & 256) != 0) {
            num3 = null;
        }
        return photosService.photosGetExtended(userId, str, list, bool, str2, num, bool2, num2, num3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetExtended$lambda-67  reason: not valid java name */
    public static final PhotosGetExtendedResponse m1236photosGetExtended$lambda67(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosGetExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosGetExtendedResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetMarketAlbumUploadServer$lambda-149  reason: not valid java name */
    public static final BaseUploadServer m1237photosGetMarketAlbumUploadServer$lambda149(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseUploadServer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseUploadServer.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetMarketUploadServer$lambda-151  reason: not valid java name */
    public static final BaseUploadServer m1238photosGetMarketUploadServer$lambda151(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseUploadServer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseUploadServer.class);
    }

    public static /* synthetic */ VKRequest photosGetMessagesUploadServer$default(PhotosService photosService, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        return photosService.photosGetMessagesUploadServer(num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetMessagesUploadServer$lambda-157  reason: not valid java name */
    public static final PhotosPhotoUpload m1239photosGetMessagesUploadServer$lambda157(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosPhotoUpload) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosPhotoUpload.class);
    }

    public static /* synthetic */ VKRequest photosGetNewTags$default(PhotosService photosService, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            num2 = null;
        }
        return photosService.photosGetNewTags(num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetNewTags$lambda-160  reason: not valid java name */
    public static final PhotosGetNewTagsResponse m1240photosGetNewTags$lambda160(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosGetNewTagsResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosGetNewTagsResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetOwnerCoverPhotoUploadServer$lambda-164  reason: not valid java name */
    public static final BaseUploadServer m1241photosGetOwnerCoverPhotoUploadServer$lambda164(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseUploadServer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseUploadServer.class);
    }

    public static /* synthetic */ VKRequest photosGetOwnerPhotoUploadServer$default(PhotosService photosService, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        return photosService.photosGetOwnerPhotoUploadServer(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetOwnerPhotoUploadServer$lambda-170  reason: not valid java name */
    public static final BaseUploadServer m1242photosGetOwnerPhotoUploadServer$lambda170(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseUploadServer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseUploadServer.class);
    }

    public static /* synthetic */ VKRequest photosGetTags$default(PhotosService photosService, int i9, UserId userId, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            str = null;
        }
        return photosService.photosGetTags(i9, userId, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetTags$lambda-173  reason: not valid java name */
    public static final List m1243photosGetTags$lambda173(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PhotosPhotoTag>>() { // from class: com.vk.sdk.api.photos.PhotosService$photosGetTags$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest photosGetUploadServer$default(PhotosService photosService, Integer num, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            userId = null;
        }
        return photosService.photosGetUploadServer(num, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetUploadServer$lambda-177  reason: not valid java name */
    public static final PhotosPhotoUpload m1244photosGetUploadServer$lambda177(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosPhotoUpload) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosPhotoUpload.class);
    }

    public static /* synthetic */ VKRequest photosGetUserPhotos$default(PhotosService photosService, UserId userId, Integer num, Integer num2, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            str = null;
        }
        return photosService.photosGetUserPhotos(userId, num, num2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetUserPhotos$lambda-181  reason: not valid java name */
    public static final PhotosGetUserPhotosResponse m1245photosGetUserPhotos$lambda181(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosGetUserPhotosResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosGetUserPhotosResponse.class);
    }

    public static /* synthetic */ VKRequest photosGetUserPhotosExtended$default(PhotosService photosService, UserId userId, Integer num, Integer num2, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            str = null;
        }
        return photosService.photosGetUserPhotosExtended(userId, num, num2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetUserPhotosExtended$lambda-187  reason: not valid java name */
    public static final PhotosGetUserPhotosExtendedResponse m1246photosGetUserPhotosExtended$lambda187(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosGetUserPhotosExtendedResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosGetUserPhotosExtendedResponse.class);
    }

    public static /* synthetic */ VKRequest photosGetWallUploadServer$default(PhotosService photosService, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = null;
        }
        return photosService.photosGetWallUploadServer(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosGetWallUploadServer$lambda-193  reason: not valid java name */
    public static final PhotosPhotoUpload m1247photosGetWallUploadServer$lambda193(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosPhotoUpload) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosPhotoUpload.class);
    }

    public static /* synthetic */ VKRequest photosMakeCover$default(PhotosService photosService, int i9, UserId userId, Integer num, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            num = null;
        }
        return photosService.photosMakeCover(i9, userId, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosMakeCover$lambda-196  reason: not valid java name */
    public static final BaseOkResponse m1248photosMakeCover$lambda196(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest photosMove$default(PhotosService photosService, int i9, int i10, UserId userId, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            userId = null;
        }
        return photosService.photosMove(i9, i10, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosMove$lambda-200  reason: not valid java name */
    public static final BaseOkResponse m1249photosMove$lambda200(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosPutTag$lambda-203  reason: not valid java name */
    public static final Integer m1250photosPutTag$lambda203(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Integer) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) Integer.TYPE);
    }

    public static /* synthetic */ VKRequest photosRemoveTag$default(PhotosService photosService, int i9, int i10, UserId userId, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            userId = null;
        }
        return photosService.photosRemoveTag(i9, i10, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosRemoveTag$lambda-210  reason: not valid java name */
    public static final BaseOkResponse m1251photosRemoveTag$lambda210(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest photosReorderAlbums$default(PhotosService photosService, int i9, UserId userId, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            num2 = null;
        }
        return photosService.photosReorderAlbums(i9, userId, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosReorderAlbums$lambda-213  reason: not valid java name */
    public static final BaseOkResponse m1252photosReorderAlbums$lambda213(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest photosReorderPhotos$default(PhotosService photosService, int i9, UserId userId, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        if ((i10 & 4) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            num2 = null;
        }
        return photosService.photosReorderPhotos(i9, userId, num, num2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosReorderPhotos$lambda-218  reason: not valid java name */
    public static final BaseOkResponse m1253photosReorderPhotos$lambda218(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest photosReport$default(PhotosService photosService, UserId userId, int i9, PhotosReportReason photosReportReason, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            photosReportReason = null;
        }
        return photosService.photosReport(userId, i9, photosReportReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosReport$lambda-223  reason: not valid java name */
    public static final BaseOkResponse m1254photosReport$lambda223(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest photosReportComment$default(PhotosService photosService, UserId userId, int i9, PhotosReportCommentReason photosReportCommentReason, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            photosReportCommentReason = null;
        }
        return photosService.photosReportComment(userId, i9, photosReportCommentReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosReportComment$lambda-226  reason: not valid java name */
    public static final BaseOkResponse m1255photosReportComment$lambda226(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest photosRestore$default(PhotosService photosService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return photosService.photosRestore(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosRestore$lambda-229  reason: not valid java name */
    public static final BaseOkResponse m1256photosRestore$lambda229(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseOkResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseOkResponse.class);
    }

    public static /* synthetic */ VKRequest photosRestoreComment$default(PhotosService photosService, int i9, UserId userId, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            userId = null;
        }
        return photosService.photosRestoreComment(i9, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosRestoreComment$lambda-232  reason: not valid java name */
    public static final BaseBoolInt m1257photosRestoreComment$lambda232(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (BaseBoolInt) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) BaseBoolInt.class);
    }

    public static /* synthetic */ VKRequest photosSave$default(PhotosService photosService, Integer num, UserId userId, Integer num2, String str, String str2, Float f10, Float f11, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        if ((i9 & 2) != 0) {
            userId = null;
        }
        if ((i9 & 4) != 0) {
            num2 = null;
        }
        if ((i9 & 8) != 0) {
            str = null;
        }
        if ((i9 & 16) != 0) {
            str2 = null;
        }
        if ((i9 & 32) != 0) {
            f10 = null;
        }
        if ((i9 & 64) != 0) {
            f11 = null;
        }
        if ((i9 & 128) != 0) {
            str3 = null;
        }
        return photosService.photosSave(num, userId, num2, str, str2, f10, f11, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosSave$lambda-235  reason: not valid java name */
    public static final List m1258photosSave$lambda235(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PhotosPhoto>>() { // from class: com.vk.sdk.api.photos.PhotosService$photosSave$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosSaveMarketAlbumPhoto$lambda-245  reason: not valid java name */
    public static final List m1259photosSaveMarketAlbumPhoto$lambda245(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PhotosPhoto>>() { // from class: com.vk.sdk.api.photos.PhotosService$photosSaveMarketAlbumPhoto$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosSaveMarketPhoto$lambda-247  reason: not valid java name */
    public static final List m1260photosSaveMarketPhoto$lambda247(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PhotosPhoto>>() { // from class: com.vk.sdk.api.photos.PhotosService$photosSaveMarketPhoto$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest photosSaveMessagesPhoto$default(PhotosService photosService, String str, Integer num, String str2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            num = null;
        }
        if ((i9 & 4) != 0) {
            str2 = null;
        }
        return photosService.photosSaveMessagesPhoto(str, num, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosSaveMessagesPhoto$lambda-252  reason: not valid java name */
    public static final List m1261photosSaveMessagesPhoto$lambda252(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PhotosPhoto>>() { // from class: com.vk.sdk.api.photos.PhotosService$photosSaveMessagesPhoto$1$typeToken$1
        }.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosSaveOwnerCoverPhoto$lambda-256  reason: not valid java name */
    public static final PhotosSaveOwnerCoverPhotoResponse m1262photosSaveOwnerCoverPhoto$lambda256(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosSaveOwnerCoverPhotoResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosSaveOwnerCoverPhotoResponse.class);
    }

    public static /* synthetic */ VKRequest photosSaveOwnerPhoto$default(PhotosService photosService, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        if ((i9 & 4) != 0) {
            str3 = null;
        }
        return photosService.photosSaveOwnerPhoto(str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosSaveOwnerPhoto$lambda-258  reason: not valid java name */
    public static final PhotosSaveOwnerPhotoResponse m1263photosSaveOwnerPhoto$lambda258(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosSaveOwnerPhotoResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosSaveOwnerPhotoResponse.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosSaveWallPhoto$lambda-263  reason: not valid java name */
    public static final List m1264photosSaveWallPhoto$lambda263(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (List) GsonHolder.INSTANCE.getGson().fromJson(it, new TypeToken<List<? extends PhotosPhoto>>() { // from class: com.vk.sdk.api.photos.PhotosService$photosSaveWallPhoto$1$typeToken$1
        }.getType());
    }

    public static /* synthetic */ VKRequest photosSearch$default(PhotosService photosService, String str, Float f10, Float f11, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = null;
        }
        if ((i9 & 2) != 0) {
            f10 = null;
        }
        if ((i9 & 4) != 0) {
            f11 = null;
        }
        if ((i9 & 8) != 0) {
            num = null;
        }
        if ((i9 & 16) != 0) {
            num2 = null;
        }
        if ((i9 & 32) != 0) {
            num3 = null;
        }
        if ((i9 & 64) != 0) {
            num4 = null;
        }
        if ((i9 & 128) != 0) {
            num5 = null;
        }
        if ((i9 & 256) != 0) {
            num6 = null;
        }
        return photosService.photosSearch(str, f10, f11, num, num2, num3, num4, num5, num6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: photosSearch$lambda-272  reason: not valid java name */
    public static final PhotosSearchResponse m1265photosSearch$lambda272(JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (PhotosSearchResponse) GsonHolder.INSTANCE.getGson().fromJson(it, (Class<Object>) PhotosSearchResponse.class);
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosConfirmTag(@NotNull String photoId, int i9, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(photoId, "photoId");
        NewApiRequest newApiRequest = new NewApiRequest("photos.confirmTag", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.v
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1215photosConfirmTag$lambda0;
                m1215photosConfirmTag$lambda0 = PhotosService.m1215photosConfirmTag$lambda0(jsonElement);
                return m1215photosConfirmTag$lambda0;
            }
        });
        newApiRequest.addParam("photo_id", photoId);
        newApiRequest.addParam(PushConstants.SUB_TAGS_STATUS_ID, i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> photosCopy(@NotNull UserId ownerId, int i9, @Nullable String str) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("photos.copy", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.i0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1216photosCopy$lambda3;
                m1216photosCopy$lambda3 = PhotosService.m1216photosCopy$lambda3(jsonElement);
                return m1216photosCopy$lambda3;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "photo_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosPhotoAlbumFull> photosCreateAlbum(@NotNull String title, @Nullable UserId userId, @Nullable String str, @Nullable List<String> list, @Nullable List<String> list2, @Nullable Boolean bool, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(title, "title");
        NewApiRequest newApiRequest = new NewApiRequest("photos.createAlbum", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.m
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosPhotoAlbumFull m1217photosCreateAlbum$lambda6;
                m1217photosCreateAlbum$lambda6 = PhotosService.m1217photosCreateAlbum$lambda6(jsonElement);
                return m1217photosCreateAlbum$lambda6;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "title", title, 2, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("group_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("description", str);
        }
        if (list != null) {
            newApiRequest.addParam("privacy_view", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("privacy_comment", list2);
        }
        if (bool != null) {
            newApiRequest.addParam("upload_by_admins_only", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("comments_disabled", bool2.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> photosCreateComment(int i9, @Nullable UserId userId, @Nullable String str, @Nullable List<String> list, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable String str2, @Nullable String str3) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.createComment", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.o
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1218photosCreateComment$lambda14;
                m1218photosCreateComment$lambda14 = PhotosService.m1218photosCreateComment$lambda14(jsonElement);
                return m1218photosCreateComment$lambda14;
            }
        });
        newApiRequest.addParam("photo_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
        }
        if (bool != null) {
            newApiRequest.addParam("from_group", bool.booleanValue());
        }
        if (num != null) {
            newApiRequest.addParam("reply_to_comment", num.intValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "sticker_id", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (str2 != null) {
            newApiRequest.addParam("access_key", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam(TPDownloadProxyEnum.USER_GUID, str3);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosDelete(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.delete", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.t
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1219photosDelete$lambda24;
                m1219photosDelete$lambda24 = PhotosService.m1219photosDelete$lambda24(jsonElement);
                return m1219photosDelete$lambda24;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "photo_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosDeleteAlbum(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.deleteAlbum", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.o0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1220photosDeleteAlbum$lambda27;
                m1220photosDeleteAlbum$lambda27 = PhotosService.m1220photosDeleteAlbum$lambda27(jsonElement);
                return m1220photosDeleteAlbum$lambda27;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "album_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> photosDeleteComment(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.deleteComment", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.f0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1221photosDeleteComment$lambda30;
                m1221photosDeleteComment$lambda30 = PhotosService.m1221photosDeleteComment$lambda30(jsonElement);
                return m1221photosDeleteComment$lambda30;
            }
        });
        newApiRequest.addParam("comment_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosEdit(int i9, @Nullable UserId userId, @Nullable String str, @Nullable Float f10, @Nullable Float f11, @Nullable String str2, @Nullable String str3, @Nullable Boolean bool) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.edit", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.n
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1222photosEdit$lambda33;
                m1222photosEdit$lambda33 = PhotosService.m1222photosEdit$lambda33(jsonElement);
                return m1222photosEdit$lambda33;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "photo_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam(ShareConstants.FEED_CAPTION_PARAM, str);
        }
        if (f10 != null) {
            newApiRequest.addParam("latitude", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("longitude", f11.floatValue());
        }
        if (str2 != null) {
            newApiRequest.addParam("place_str", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam("foursquare_id", str3);
        }
        if (bool != null) {
            newApiRequest.addParam("delete_place", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosEditAlbum(int i9, @Nullable String str, @Nullable String str2, @Nullable UserId userId, @Nullable List<String> list, @Nullable List<String> list2, @Nullable Boolean bool, @Nullable Boolean bool2) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.editAlbum", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.g
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1223photosEditAlbum$lambda42;
                m1223photosEditAlbum$lambda42 = PhotosService.m1223photosEditAlbum$lambda42(jsonElement);
                return m1223photosEditAlbum$lambda42;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "album_id", i9, 0, 0, 8, (Object) null);
        if (str != null) {
            newApiRequest.addParam("title", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("description", str2);
        }
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (list != null) {
            newApiRequest.addParam("privacy_view", list);
        }
        if (list2 != null) {
            newApiRequest.addParam("privacy_comment", list2);
        }
        if (bool != null) {
            newApiRequest.addParam("upload_by_admins_only", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("comments_disabled", bool2.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosEditComment(int i9, @Nullable UserId userId, @Nullable String str, @Nullable List<String> list) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.editComment", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.k
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1224photosEditComment$lambda51;
                m1224photosEditComment$lambda51 = PhotosService.m1224photosEditComment$lambda51(jsonElement);
                return m1224photosEditComment$lambda51;
            }
        });
        newApiRequest.addParam("comment_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("message", str);
        }
        if (list != null) {
            newApiRequest.addParam("attachments", list);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosGetResponse> photosGet(@Nullable UserId userId, @Nullable String str, @Nullable List<String> list, @Nullable Boolean bool, @Nullable String str2, @Nullable Integer num, @Nullable Boolean bool2, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.get", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.c0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosGetResponse m1225photosGet$lambda56;
                m1225photosGet$lambda56 = PhotosService.m1225photosGet$lambda56(jsonElement);
                return m1225photosGet$lambda56;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("album_id", str);
        }
        if (list != null) {
            newApiRequest.addParam("photo_ids", list);
        }
        if (bool != null) {
            newApiRequest.addParam("rev", bool.booleanValue());
        }
        if (str2 != null) {
            newApiRequest.addParam("feed_type", str2);
        }
        if (num != null) {
            newApiRequest.addParam("feed", num.intValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("photo_sizes", bool2.booleanValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosGetAlbumsResponse> photosGetAlbums(@Nullable UserId userId, @Nullable List<Integer> list, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getAlbums", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.l0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosGetAlbumsResponse m1226photosGetAlbums$lambda78;
                m1226photosGetAlbums$lambda78 = PhotosService.m1226photosGetAlbums$lambda78(jsonElement);
                return m1226photosGetAlbums$lambda78;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (list != null) {
            newApiRequest.addParam("album_ids", list);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("need_system", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("need_covers", bool2.booleanValue());
        }
        if (bool3 != null) {
            newApiRequest.addParam("photo_sizes", bool3.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> photosGetAlbumsCount(@Nullable UserId userId, @Nullable UserId userId2) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getAlbumsCount", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.x
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1227photosGetAlbumsCount$lambda87;
                m1227photosGetAlbumsCount$lambda87 = PhotosService.m1227photosGetAlbumsCount$lambda87(jsonElement);
                return m1227photosGetAlbumsCount$lambda87;
            }
        });
        if (userId != null) {
            newApiRequest.addParam(AccessToken.USER_ID_KEY, userId);
        }
        if (userId2 != null) {
            newApiRequest.addParam("group_id", userId2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosGetAllResponse> photosGetAll(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getAll", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.m0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosGetAllResponse m1228photosGetAll$lambda91;
                m1228photosGetAll$lambda91 = PhotosService.m1228photosGetAll$lambda91(jsonElement);
                return m1228photosGetAll$lambda91;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
        }
        if (bool != null) {
            newApiRequest.addParam("photo_sizes", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("no_service_albums", bool2.booleanValue());
        }
        if (bool3 != null) {
            newApiRequest.addParam("need_hidden", bool3.booleanValue());
        }
        if (bool4 != null) {
            newApiRequest.addParam("skip_hidden", bool4.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosGetAllCommentsResponse> photosGetAllComments(@Nullable UserId userId, @Nullable Integer num, @Nullable Boolean bool, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getAllComments", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.i
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosGetAllCommentsResponse m1229photosGetAllComments$lambda109;
                m1229photosGetAllComments$lambda109 = PhotosService.m1229photosGetAllComments$lambda109(jsonElement);
                return m1229photosGetAllComments$lambda109;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "album_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (bool != null) {
            newApiRequest.addParam("need_likes", bool.booleanValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosGetAllExtendedResponse> photosGetAllExtended(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getAll", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.q0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosGetAllExtendedResponse m1230photosGetAllExtended$lambda100;
                m1230photosGetAllExtended$lambda100 = PhotosService.m1230photosGetAllExtended$lambda100(jsonElement);
                return m1230photosGetAllExtended$lambda100;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        newApiRequest.addParam("extended", true);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 200);
        }
        if (bool != null) {
            newApiRequest.addParam("photo_sizes", bool.booleanValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("no_service_albums", bool2.booleanValue());
        }
        if (bool3 != null) {
            newApiRequest.addParam("need_hidden", bool3.booleanValue());
        }
        if (bool4 != null) {
            newApiRequest.addParam("skip_hidden", bool4.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PhotosPhoto>> photosGetById(@NotNull List<String> photos, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(photos, "photos");
        NewApiRequest newApiRequest = new NewApiRequest("photos.getById", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.b
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1231photosGetById$lambda116;
                m1231photosGetById$lambda116 = PhotosService.m1231photosGetById$lambda116(jsonElement);
                return m1231photosGetById$lambda116;
            }
        });
        newApiRequest.addParam("photos", photos);
        if (bool != null) {
            newApiRequest.addParam("photo_sizes", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PhotosPhotoFull>> photosGetByIdExtended(@NotNull List<String> photos, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(photos, "photos");
        NewApiRequest newApiRequest = new NewApiRequest("photos.getById", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.t0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1232photosGetByIdExtended$lambda119;
                m1232photosGetByIdExtended$lambda119 = PhotosService.m1232photosGetByIdExtended$lambda119(jsonElement);
                return m1232photosGetByIdExtended$lambda119;
            }
        });
        newApiRequest.addParam("photos", photos);
        newApiRequest.addParam("extended", true);
        if (bool != null) {
            newApiRequest.addParam("photo_sizes", bool.booleanValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseUploadServer> photosGetChatUploadServer(int i9, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getChatUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.q
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseUploadServer m1233photosGetChatUploadServer$lambda122;
                m1233photosGetChatUploadServer$lambda122 = PhotosService.m1233photosGetChatUploadServer$lambda122(jsonElement);
                return m1233photosGetChatUploadServer$lambda122;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "chat_id", i9, 0, 0, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "crop_x", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "crop_y", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "crop_width", num3.intValue(), 200, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosGetCommentsResponse> photosGetComments(int i9, @Nullable UserId userId, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable PhotosGetCommentsSort photosGetCommentsSort, @Nullable String str, @Nullable List<? extends UsersFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("photos.getComments", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.p
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosGetCommentsResponse m1234photosGetComments$lambda127;
                m1234photosGetComments$lambda127 = PhotosService.m1234photosGetComments$lambda127(jsonElement);
                return m1234photosGetComments$lambda127;
            }
        });
        newApiRequest.addParam("photo_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (bool != null) {
            newApiRequest.addParam("need_likes", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_comment_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue());
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 100);
        }
        if (photosGetCommentsSort != null) {
            newApiRequest.addParam("sort", photosGetCommentsSort.getValue());
        }
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosGetCommentsExtendedResponse> photosGetCommentsExtended(int i9, @Nullable UserId userId, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable PhotosGetCommentsExtendedSort photosGetCommentsExtendedSort, @Nullable String str, @Nullable List<? extends UsersFields> list) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        NewApiRequest newApiRequest = new NewApiRequest("photos.getComments", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.y0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosGetCommentsExtendedResponse m1235photosGetCommentsExtended$lambda138;
                m1235photosGetCommentsExtended$lambda138 = PhotosService.m1235photosGetCommentsExtended$lambda138(jsonElement);
                return m1235photosGetCommentsExtended$lambda138;
            }
        });
        newApiRequest.addParam("photo_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (bool != null) {
            newApiRequest.addParam("need_likes", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_comment_id", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue());
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 100);
        }
        if (photosGetCommentsExtendedSort != null) {
            newApiRequest.addParam("sort", photosGetCommentsExtendedSort.getValue());
        }
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        newApiRequest.addParam("extended", true);
        if (list == null) {
            arrayList = null;
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (UsersFields usersFields : list) {
                arrayList.add(usersFields.getValue());
            }
        }
        if (arrayList != null) {
            newApiRequest.addParam(GraphRequest.FIELDS_PARAM, (Iterable<?>) arrayList);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosGetExtendedResponse> photosGetExtended(@Nullable UserId userId, @Nullable String str, @Nullable List<String> list, @Nullable Boolean bool, @Nullable String str2, @Nullable Integer num, @Nullable Boolean bool2, @Nullable Integer num2, @Nullable Integer num3) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.get", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.r0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosGetExtendedResponse m1236photosGetExtended$lambda67;
                m1236photosGetExtended$lambda67 = PhotosService.m1236photosGetExtended$lambda67(jsonElement);
                return m1236photosGetExtended$lambda67;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("album_id", str);
        }
        if (list != null) {
            newApiRequest.addParam("photo_ids", list);
        }
        if (bool != null) {
            newApiRequest.addParam("rev", bool.booleanValue());
        }
        newApiRequest.addParam("extended", true);
        if (str2 != null) {
            newApiRequest.addParam("feed_type", str2);
        }
        if (num != null) {
            newApiRequest.addParam("feed", num.intValue());
        }
        if (bool2 != null) {
            newApiRequest.addParam("photo_sizes", bool2.booleanValue());
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num3.intValue(), 0, 1000);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseUploadServer> photosGetMarketAlbumUploadServer(@NotNull UserId groupId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("photos.getMarketAlbumUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.r
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseUploadServer m1237photosGetMarketAlbumUploadServer$lambda149;
                m1237photosGetMarketAlbumUploadServer$lambda149 = PhotosService.m1237photosGetMarketAlbumUploadServer$lambda149(jsonElement);
                return m1237photosGetMarketAlbumUploadServer$lambda149;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseUploadServer> photosGetMarketUploadServer(@NotNull UserId groupId, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("photos.getMarketUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.s0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseUploadServer m1238photosGetMarketUploadServer$lambda151;
                m1238photosGetMarketUploadServer$lambda151 = PhotosService.m1238photosGetMarketUploadServer$lambda151(jsonElement);
                return m1238photosGetMarketUploadServer$lambda151;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (bool != null) {
            newApiRequest.addParam("main_photo", bool.booleanValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "crop_x", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "crop_y", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "crop_width", num3.intValue(), 400, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosPhotoUpload> photosGetMessagesUploadServer(@Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getMessagesUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.s
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosPhotoUpload m1239photosGetMessagesUploadServer$lambda157;
                m1239photosGetMessagesUploadServer$lambda157 = PhotosService.m1239photosGetMessagesUploadServer$lambda157(jsonElement);
                return m1239photosGetMessagesUploadServer$lambda157;
            }
        });
        if (num != null) {
            newApiRequest.addParam("peer_id", num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosGetNewTagsResponse> photosGetNewTags(@Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getNewTags", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.e0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosGetNewTagsResponse m1240photosGetNewTags$lambda160;
                m1240photosGetNewTags$lambda160 = PhotosService.m1240photosGetNewTags$lambda160(jsonElement);
                return m1240photosGetNewTags$lambda160;
            }
        });
        if (num != null) {
            newApiRequest.addParam(TypedValues.CycleType.S_WAVE_OFFSET, num.intValue());
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 100);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseUploadServer> photosGetOwnerCoverPhotoUploadServer(@NotNull UserId groupId, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        NewApiRequest newApiRequest = new NewApiRequest("photos.getOwnerCoverPhotoUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.b0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseUploadServer m1241photosGetOwnerCoverPhotoUploadServer$lambda164;
                m1241photosGetOwnerCoverPhotoUploadServer$lambda164 = PhotosService.m1241photosGetOwnerCoverPhotoUploadServer$lambda164(jsonElement);
                return m1241photosGetOwnerCoverPhotoUploadServer$lambda164;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "crop_x", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "crop_y", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "crop_x2", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, "crop_y2", num4.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseUploadServer> photosGetOwnerPhotoUploadServer(@Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getOwnerPhotoUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.v0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseUploadServer m1242photosGetOwnerPhotoUploadServer$lambda170;
                m1242photosGetOwnerPhotoUploadServer$lambda170 = PhotosService.m1242photosGetOwnerPhotoUploadServer$lambda170(jsonElement);
                return m1242photosGetOwnerPhotoUploadServer$lambda170;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PhotosPhotoTag>> photosGetTags(int i9, @Nullable UserId userId, @Nullable String str) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getTags", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.d
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1243photosGetTags$lambda173;
                m1243photosGetTags$lambda173 = PhotosService.m1243photosGetTags$lambda173(jsonElement);
                return m1243photosGetTags$lambda173;
            }
        });
        newApiRequest.addParam("photo_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (str != null) {
            newApiRequest.addParam("access_key", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosPhotoUpload> photosGetUploadServer(@Nullable Integer num, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.a0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosPhotoUpload m1244photosGetUploadServer$lambda177;
                m1244photosGetUploadServer$lambda177 = PhotosService.m1244photosGetUploadServer$lambda177(jsonElement);
                return m1244photosGetUploadServer$lambda177;
            }
        });
        if (num != null) {
            newApiRequest.addParam("album_id", num.intValue());
        }
        if (userId != null) {
            newApiRequest.addParam("group_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosGetUserPhotosResponse> photosGetUserPhotos(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable String str) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getUserPhotos", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.n0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosGetUserPhotosResponse m1245photosGetUserPhotos$lambda181;
                m1245photosGetUserPhotos$lambda181 = PhotosService.m1245photosGetUserPhotos$lambda181(jsonElement);
                return m1245photosGetUserPhotos$lambda181;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
        }
        if (str != null) {
            newApiRequest.addParam("sort", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosGetUserPhotosExtendedResponse> photosGetUserPhotosExtended(@Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable String str) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getUserPhotos", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.w0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosGetUserPhotosExtendedResponse m1246photosGetUserPhotosExtended$lambda187;
                m1246photosGetUserPhotosExtended$lambda187 = PhotosService.m1246photosGetUserPhotosExtended$lambda187(jsonElement);
                return m1246photosGetUserPhotosExtended$lambda187;
            }
        });
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num2.intValue(), 0, 1000);
        }
        newApiRequest.addParam("extended", true);
        if (str != null) {
            newApiRequest.addParam("sort", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosPhotoUpload> photosGetWallUploadServer(@Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.getWallUploadServer", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.k0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosPhotoUpload m1247photosGetWallUploadServer$lambda193;
                m1247photosGetWallUploadServer$lambda193 = PhotosService.m1247photosGetWallUploadServer$lambda193(jsonElement);
                return m1247photosGetWallUploadServer$lambda193;
            }
        });
        if (userId != null) {
            newApiRequest.addParam("group_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosMakeCover(int i9, @Nullable UserId userId, @Nullable Integer num) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.makeCover", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.x0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1248photosMakeCover$lambda196;
                m1248photosMakeCover$lambda196 = PhotosService.m1248photosMakeCover$lambda196(jsonElement);
                return m1248photosMakeCover$lambda196;
            }
        });
        newApiRequest.addParam("photo_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            newApiRequest.addParam("album_id", num.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosMove(int i9, int i10, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.move", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.d0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1249photosMove$lambda200;
                m1249photosMove$lambda200 = PhotosService.m1249photosMove$lambda200(jsonElement);
                return m1249photosMove$lambda200;
            }
        });
        newApiRequest.addParam("target_album_id", i9);
        newApiRequest.addParam("photo_id", i10);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<Integer> photosPutTag(int i9, @NotNull UserId userId, @Nullable UserId userId2, @Nullable Float f10, @Nullable Float f11, @Nullable Float f12, @Nullable Float f13) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        NewApiRequest newApiRequest = new NewApiRequest("photos.putTag", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.j
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                Integer m1250photosPutTag$lambda203;
                m1250photosPutTag$lambda203 = PhotosService.m1250photosPutTag$lambda203(jsonElement);
                return m1250photosPutTag$lambda203;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "photo_id", i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam(AccessToken.USER_ID_KEY, userId);
        if (userId2 != null) {
            newApiRequest.addParam("owner_id", userId2);
        }
        if (f10 != null) {
            newApiRequest.addParam(com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w, f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("y", f11.floatValue());
        }
        if (f12 != null) {
            newApiRequest.addParam("x2", f12.floatValue());
        }
        if (f13 != null) {
            newApiRequest.addParam("y2", f13.floatValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosRemoveTag(int i9, int i10, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.removeTag", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.j0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1251photosRemoveTag$lambda210;
                m1251photosRemoveTag$lambda210 = PhotosService.m1251photosRemoveTag$lambda210(jsonElement);
                return m1251photosRemoveTag$lambda210;
            }
        });
        newApiRequest.addParam("photo_id", i9);
        newApiRequest.addParam(PushConstants.SUB_TAGS_STATUS_ID, i10);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosReorderAlbums(int i9, @Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.reorderAlbums", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.e
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1252photosReorderAlbums$lambda213;
                m1252photosReorderAlbums$lambda213 = PhotosService.m1252photosReorderAlbums$lambda213(jsonElement);
                return m1252photosReorderAlbums$lambda213;
            }
        });
        newApiRequest.addParam("album_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            newApiRequest.addParam("before", num.intValue());
        }
        if (num2 != null) {
            newApiRequest.addParam("after", num2.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosReorderPhotos(int i9, @Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.reorderPhotos", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.c
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1253photosReorderPhotos$lambda218;
                m1253photosReorderPhotos$lambda218 = PhotosService.m1253photosReorderPhotos$lambda218(jsonElement);
                return m1253photosReorderPhotos$lambda218;
            }
        });
        newApiRequest.addParam("photo_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        if (num != null) {
            newApiRequest.addParam("before", num.intValue());
        }
        if (num2 != null) {
            newApiRequest.addParam("after", num2.intValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosReport(@NotNull UserId ownerId, int i9, @Nullable PhotosReportReason photosReportReason) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("photos.report", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.w
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1254photosReport$lambda223;
                m1254photosReport$lambda223 = PhotosService.m1254photosReport$lambda223(jsonElement);
                return m1254photosReport$lambda223;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "photo_id", i9, 0, 0, 8, (Object) null);
        if (photosReportReason != null) {
            newApiRequest.addParam("reason", photosReportReason.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosReportComment(@NotNull UserId ownerId, int i9, @Nullable PhotosReportCommentReason photosReportCommentReason) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        NewApiRequest newApiRequest = new NewApiRequest("photos.reportComment", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.y
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1255photosReportComment$lambda226;
                m1255photosReportComment$lambda226 = PhotosService.m1255photosReportComment$lambda226(jsonElement);
                return m1255photosReportComment$lambda226;
            }
        });
        newApiRequest.addParam("owner_id", ownerId);
        NewApiRequest.addParam$default(newApiRequest, "comment_id", i9, 0, 0, 8, (Object) null);
        if (photosReportCommentReason != null) {
            newApiRequest.addParam("reason", photosReportCommentReason.getValue());
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseOkResponse> photosRestore(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.restore", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.h
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseOkResponse m1256photosRestore$lambda229;
                m1256photosRestore$lambda229 = PhotosService.m1256photosRestore$lambda229(jsonElement);
                return m1256photosRestore$lambda229;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "photo_id", i9, 0, 0, 8, (Object) null);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<BaseBoolInt> photosRestoreComment(int i9, @Nullable UserId userId) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.restoreComment", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.h0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                BaseBoolInt m1257photosRestoreComment$lambda232;
                m1257photosRestoreComment$lambda232 = PhotosService.m1257photosRestoreComment$lambda232(jsonElement);
                return m1257photosRestoreComment$lambda232;
            }
        });
        newApiRequest.addParam("comment_id", i9);
        if (userId != null) {
            newApiRequest.addParam("owner_id", userId);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PhotosPhoto>> photosSave(@Nullable Integer num, @Nullable UserId userId, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable Float f10, @Nullable Float f11, @Nullable String str3) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.save", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.u0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1258photosSave$lambda235;
                m1258photosSave$lambda235 = PhotosService.m1258photosSave$lambda235(jsonElement);
                return m1258photosSave$lambda235;
            }
        });
        if (num != null) {
            newApiRequest.addParam("album_id", num.intValue());
        }
        if (userId != null) {
            newApiRequest.addParam("group_id", userId);
        }
        if (num2 != null) {
            newApiRequest.addParam("server", num2.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("photos_list", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("hash", str2);
        }
        if (f10 != null) {
            newApiRequest.addParam("latitude", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("longitude", f11.floatValue());
        }
        if (str3 != null) {
            newApiRequest.addParam(ShareConstants.FEED_CAPTION_PARAM, str3);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PhotosPhoto>> photosSaveMarketAlbumPhoto(@NotNull UserId groupId, @NotNull String photo, int i9, @NotNull String hash) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(hash, "hash");
        NewApiRequest newApiRequest = new NewApiRequest("photos.saveMarketAlbumPhoto", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.p0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1259photosSaveMarketAlbumPhoto$lambda245;
                m1259photosSaveMarketAlbumPhoto$lambda245 = PhotosService.m1259photosSaveMarketAlbumPhoto$lambda245(jsonElement);
                return m1259photosSaveMarketAlbumPhoto$lambda245;
            }
        });
        NewApiRequest.addParam$default(newApiRequest, "group_id", groupId, 1L, 0L, 8, (Object) null);
        newApiRequest.addParam(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, photo);
        NewApiRequest.addParam$default(newApiRequest, "server", i9, 0, 0, 8, (Object) null);
        newApiRequest.addParam("hash", hash);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PhotosPhoto>> photosSaveMarketPhoto(@NotNull String photo, int i9, @NotNull String hash, @Nullable UserId userId, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(hash, "hash");
        NewApiRequest newApiRequest = new NewApiRequest("photos.saveMarketPhoto", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.f
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1260photosSaveMarketPhoto$lambda247;
                m1260photosSaveMarketPhoto$lambda247 = PhotosService.m1260photosSaveMarketPhoto$lambda247(jsonElement);
                return m1260photosSaveMarketPhoto$lambda247;
            }
        });
        newApiRequest.addParam(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, photo);
        newApiRequest.addParam("server", i9);
        newApiRequest.addParam("hash", hash);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId, 0L, 0L, 8, (Object) null);
        }
        if (str != null) {
            newApiRequest.addParam("crop_data", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("crop_hash", str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PhotosPhoto>> photosSaveMessagesPhoto(@NotNull String photo, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        NewApiRequest newApiRequest = new NewApiRequest("photos.saveMessagesPhoto", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.a
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1261photosSaveMessagesPhoto$lambda252;
                m1261photosSaveMessagesPhoto$lambda252 = PhotosService.m1261photosSaveMessagesPhoto$lambda252(jsonElement);
                return m1261photosSaveMessagesPhoto$lambda252;
            }
        });
        newApiRequest.addParam(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, photo);
        if (num != null) {
            newApiRequest.addParam("server", num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("hash", str);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosSaveOwnerCoverPhotoResponse> photosSaveOwnerCoverPhoto(@NotNull String hash, @NotNull String photo) {
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(photo, "photo");
        NewApiRequest newApiRequest = new NewApiRequest("photos.saveOwnerCoverPhoto", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.z
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosSaveOwnerCoverPhotoResponse m1262photosSaveOwnerCoverPhoto$lambda256;
                m1262photosSaveOwnerCoverPhoto$lambda256 = PhotosService.m1262photosSaveOwnerCoverPhoto$lambda256(jsonElement);
                return m1262photosSaveOwnerCoverPhoto$lambda256;
            }
        });
        newApiRequest.addParam("hash", hash);
        newApiRequest.addParam(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, photo);
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosSaveOwnerPhotoResponse> photosSaveOwnerPhoto(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.saveOwnerPhoto", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.u
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosSaveOwnerPhotoResponse m1263photosSaveOwnerPhoto$lambda258;
                m1263photosSaveOwnerPhoto$lambda258 = PhotosService.m1263photosSaveOwnerPhoto$lambda258(jsonElement);
                return m1263photosSaveOwnerPhoto$lambda258;
            }
        });
        if (str != null) {
            newApiRequest.addParam("server", str);
        }
        if (str2 != null) {
            newApiRequest.addParam("hash", str2);
        }
        if (str3 != null) {
            newApiRequest.addParam(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, str3);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<List<PhotosPhoto>> photosSaveWallPhoto(@NotNull String photo, @Nullable UserId userId, @Nullable UserId userId2, @Nullable Integer num, @Nullable String str, @Nullable Float f10, @Nullable Float f11, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        NewApiRequest newApiRequest = new NewApiRequest("photos.saveWallPhoto", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.g0
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                List m1264photosSaveWallPhoto$lambda263;
                m1264photosSaveWallPhoto$lambda263 = PhotosService.m1264photosSaveWallPhoto$lambda263(jsonElement);
                return m1264photosSaveWallPhoto$lambda263;
            }
        });
        newApiRequest.addParam(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, photo);
        if (userId != null) {
            NewApiRequest.addParam$default(newApiRequest, AccessToken.USER_ID_KEY, userId, 0L, 0L, 8, (Object) null);
        }
        if (userId2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "group_id", userId2, 0L, 0L, 8, (Object) null);
        }
        if (num != null) {
            newApiRequest.addParam("server", num.intValue());
        }
        if (str != null) {
            newApiRequest.addParam("hash", str);
        }
        if (f10 != null) {
            newApiRequest.addParam("latitude", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("longitude", f11.floatValue());
        }
        if (str2 != null) {
            newApiRequest.addParam(ShareConstants.FEED_CAPTION_PARAM, str2);
        }
        return newApiRequest;
    }

    @NotNull
    public final VKRequest<PhotosSearchResponse> photosSearch(@Nullable String str, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6) {
        NewApiRequest newApiRequest = new NewApiRequest("photos.search", new ApiResponseParser() { // from class: com.vk.sdk.api.photos.l
            @Override // com.vk.sdk.api.ApiResponseParser
            public final Object parseResponse(JsonElement jsonElement) {
                PhotosSearchResponse m1265photosSearch$lambda272;
                m1265photosSearch$lambda272 = PhotosService.m1265photosSearch$lambda272(jsonElement);
                return m1265photosSearch$lambda272;
            }
        });
        if (str != null) {
            newApiRequest.addParam("q", str);
        }
        if (f10 != null) {
            newApiRequest.addParam("lat", f10.floatValue());
        }
        if (f11 != null) {
            newApiRequest.addParam("long", f11.floatValue());
        }
        if (num != null) {
            NewApiRequest.addParam$default(newApiRequest, "start_time", num.intValue(), 0, 0, 8, (Object) null);
        }
        if (num2 != null) {
            NewApiRequest.addParam$default(newApiRequest, "end_time", num2.intValue(), 0, 0, 8, (Object) null);
        }
        if (num3 != null) {
            NewApiRequest.addParam$default(newApiRequest, "sort", num3.intValue(), 0, 0, 8, (Object) null);
        }
        if (num4 != null) {
            NewApiRequest.addParam$default(newApiRequest, TypedValues.CycleType.S_WAVE_OFFSET, num4.intValue(), 0, 0, 8, (Object) null);
        }
        if (num5 != null) {
            newApiRequest.addParam(AnimatedPasterJsonConfig.CONFIG_COUNT, num5.intValue(), 0, 1000);
        }
        if (num6 != null) {
            NewApiRequest.addParam$default(newApiRequest, "radius", num6.intValue(), 0, 0, 8, (Object) null);
        }
        return newApiRequest;
    }
}
