.class public Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/trtc/TRTCCloudListener$TRTCVideoFrameListener;
.implements Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 -2\u00020\u00012\u00020\u0002:\u0001-B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J(\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020!H\u0002J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\tH\u0016J\u0008\u0010\'\u001a\u00020\u001bH\u0016J\u0008\u0010(\u001a\u00020\u001bH\u0016J\u0018\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+H\u0016R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000c\"\u0004\u0008\u0019\u0010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;",
        "Lcom/tencent/trtc/TRTCCloudListener$TRTCVideoFrameListener;",
        "Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;",
        "trtcCloud",
        "Lcom/tencent/trtc/TRTCCloud;",
        "viewModel",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        "(Lcom/tencent/trtc/TRTCCloud;Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V",
        "value",
        "",
        "chatting",
        "getChatting",
        "()Z",
        "setChatting",
        "(Z)V",
        "f2fProxy",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;",
        "faceOnScreen",
        "lastFace",
        "lastSend",
        "",
        "manager",
        "Lcom/guochao/pusher/beauty/XMagicBeautyManager;",
        "removeGuass",
        "getRemoveGuass",
        "setRemoveGuass",
        "debug",
        "",
        "textureId",
        "",
        "width",
        "height",
        "tag",
        "",
        "guassByte",
        "",
        "guass",
        "hasFace",
        "has",
        "onGLContextCreated",
        "onGLContextDestory",
        "onProcessVideoFrame",
        "p0",
        "Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;",
        "p1",
        "Companion",
        "component_f2f_match_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TrtcBeautyProcessor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private chatting:Z

.field private final f2fProxy:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private faceOnScreen:Z

.field private lastFace:Z

.field private lastSend:J

.field private final manager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private removeGuass:Z

.field private final trtcCloud:Lcom/tencent/trtc/TRTCCloud;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->Companion:Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/trtc/TRTCCloud;Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V
    .locals 1
    .param p1    # Lcom/tencent/trtc/TRTCCloud;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "trtcCloud"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->viewModel:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    .line 4
    sget-object p1, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->Companion:Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p2

    const-string v0, "app()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->manager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    .line 5
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object p1

    const-string p2, "/app/f2f_proxy"

    invoke-virtual {p1, p2}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->f2fProxy:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    const/high16 p1, 0x40a00000    # 5.0f

    .line 6
    invoke-static {p1}, Lcom/gl/gaussblur/GaussBlurNativeAPI;->setSigma(F)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->hasFace$lambda-1$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V

    return-void
.end method

.method private final debug(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final guassByte(Ljava/lang/String;)[B
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "guass"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JSONObject().apply { put\u2026ass\", guass) }.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utf-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(\"utf-8\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final hasFace$lambda-1$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;->detectNoFaceOnScreen()V

    return-void
.end method


# virtual methods
.method public final getChatting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->chatting:Z

    return v0
.end method

.method public final getRemoveGuass()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->removeGuass:Z

    return v0
.end method

.method public hasFace(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->faceOnScreen:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->viewModel:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getF2fMatchCallback()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/utils/i;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/i;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread$default(Ljava/lang/Runnable;Ljava/lang/Long;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGLContextCreated()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->manager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->glContextCreated()V

    return-void
.end method

.method public onGLContextDestory()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gl/gaussblur/GaussBlurNativeAPI;->release()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->manager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->destroyOnGLThread()V

    return-void
.end method

.method public onProcessVideoFrame(Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;)I
    .locals 10
    .param p1    # Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->texture:Lcom/tencent/trtc/TRTCCloudDef$TRTCTexture;

    iget v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCTexture;->textureId:I

    .line 2
    iget v1, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->width:I

    iget v2, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->height:I

    const-string v3, "original_texture"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->debug(IIILjava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->manager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    iget v2, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->width:I

    iget v3, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->height:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->process(III)I

    move-result v1

    .line 4
    iget v2, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->width:I

    iget v3, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->height:I

    const-string v4, "beauty_texture"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->debug(IIILjava/lang/String;)V

    .line 5
    iget-boolean v2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->chatting:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->removeGuass:Z

    if-nez v2, :cond_3

    .line 6
    iget-boolean v2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->faceOnScreen:Z

    const-wide/16 v3, 0xc8

    const/4 v5, 0x1

    if-nez v2, :cond_1

    .line 7
    iget v1, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->width:I

    iget v2, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->height:I

    invoke-static {v0, v1, v2}, Lcom/gl/gaussblur/GaussBlurNativeAPI;->process(III)I

    move-result v1

    .line 8
    iget v0, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->width:I

    iget p1, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->height:I

    const-string v2, "gauss_texture"

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->debug(IIILjava/lang/String;)V

    .line 9
    iget-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->lastFace:Z

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->lastSend:J

    sub-long/2addr v6, v8

    cmp-long p1, v6, v3

    if-lez p1, :cond_3

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    const-string v0, "1"

    .line 11
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->guassByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0, v5}, Lcom/tencent/trtc/TRTCCloud;->sendSEIMsg([BI)Z

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->lastSend:J

    goto :goto_0

    .line 14
    :cond_1
    iget-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->lastFace:Z

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->lastSend:J

    sub-long/2addr v6, v8

    cmp-long p1, v6, v3

    if-lez p1, :cond_3

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    const-string v0, "0"

    .line 16
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->guassByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 17
    invoke-virtual {p1, v0, v5}, Lcom/tencent/trtc/TRTCCloud;->sendSEIMsg([BI)Z

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->lastSend:J

    .line 19
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->faceOnScreen:Z

    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->lastFace:Z

    .line 20
    iget-object p1, p2, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;->texture:Lcom/tencent/trtc/TRTCCloudDef$TRTCTexture;

    iput v1, p1, Lcom/tencent/trtc/TRTCCloudDef$TRTCTexture;->textureId:I

    const/4 p1, 0x0

    return p1
.end method

.method public final setChatting(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->chatting:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->manager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {p1, p0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->setFaceDetectListener(Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->manager:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->setFaceDetectListener(Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;)V

    :goto_0
    return-void
.end method

.method public final setRemoveGuass(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->removeGuass:Z

    return-void
.end method
