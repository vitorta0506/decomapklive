.class public Lcom/facebook/login/LoginClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginClient$OnCompletedListener;,
        Lcom/facebook/login/LoginClient$BackgroundProcessingListener;,
        Lcom/facebook/login/LoginClient$Request;,
        Lcom/facebook/login/LoginClient$Result;,
        Lcom/facebook/login/LoginClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0017\u0018\u0000 q2\u00020\u0001:\u0005pqrstB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u001c2\u0006\u0010H\u001a\u00020\u0013J \u0010I\u001a\u00020F2\u0006\u0010G\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u001c2\u0006\u0010H\u001a\u00020\u0013H\u0002J\u0010\u0010J\u001a\u00020F2\u0008\u0010K\u001a\u0004\u0018\u00010@J\u0006\u0010L\u001a\u00020FJ\u0006\u0010M\u001a\u00020\u0013J\u000e\u0010N\u001a\u00020\u00192\u0006\u0010O\u001a\u00020\u001cJ\u000e\u0010P\u001a\u00020F2\u0006\u0010Q\u001a\u00020RJ\u000e\u0010S\u001a\u00020F2\u0006\u0010Q\u001a\u00020RJ\u0008\u0010T\u001a\u00020FH\u0002J\u0008\u0010U\u001a\u00020\u0019H\u0016J\u0008\u0010V\u001a\u0004\u0018\u00010\'J\u001d\u0010(\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&2\u0006\u0010K\u001a\u00020@H\u0016\u00a2\u0006\u0002\u0010WJ2\u0010X\u001a\u00020F2\u0006\u0010Y\u001a\u00020\u001c2\u0006\u0010Z\u001a\u00020R2\u0018\u00103\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010[H\u0002JF\u0010X\u001a\u00020F2\u0006\u0010Y\u001a\u00020\u001c2\u0006\u0010Z\u001a\u00020\u001c2\u0008\u0010\\\u001a\u0004\u0018\u00010\u001c2\u0008\u0010]\u001a\u0004\u0018\u00010\u001c2\u0018\u00103\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010[H\u0002J\u0006\u0010^\u001a\u00020FJ\u0006\u0010_\u001a\u00020FJ\u0010\u0010`\u001a\u00020F2\u0006\u0010Q\u001a\u00020RH\u0002J \u0010a\u001a\u00020\u00132\u0006\u0010b\u001a\u00020\u00192\u0006\u0010c\u001a\u00020\u00192\u0008\u0010d\u001a\u0004\u0018\u00010eJ\u0010\u0010f\u001a\u00020F2\u0006\u0010g\u001a\u00020\u0019H\u0004J\u0010\u0010h\u001a\u00020F2\u0008\u0010K\u001a\u0004\u0018\u00010@J\u0006\u0010i\u001a\u00020\u0013J\u0006\u0010j\u001a\u00020FJ\u000e\u0010k\u001a\u00020F2\u0006\u0010l\u001a\u00020RJ\u0018\u0010m\u001a\u00020F2\u0006\u0010n\u001a\u00020\u00062\u0006\u0010o\u001a\u00020\u0019H\u0016R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R(\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010!\u001a\u0004\u0018\u00010\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010\u0004R$\u0010%\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010,\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0011\u0010-\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\u0015R\u0014\u0010/\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R(\u00103\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u001e\"\u0004\u00085\u0010 R\u0010\u00106\u001a\u0004\u0018\u000100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010D\u00a8\u0006u"
    }
    d2 = {
        "Lcom/facebook/login/LoginClient;",
        "Landroid/os/Parcelable;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "(Landroidx/fragment/app/Fragment;)V",
        "source",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "getActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "backgroundProcessingListener",
        "Lcom/facebook/login/LoginClient$BackgroundProcessingListener;",
        "getBackgroundProcessingListener",
        "()Lcom/facebook/login/LoginClient$BackgroundProcessingListener;",
        "setBackgroundProcessingListener",
        "(Lcom/facebook/login/LoginClient$BackgroundProcessingListener;)V",
        "checkedInternetPermission",
        "",
        "getCheckedInternetPermission",
        "()Z",
        "setCheckedInternetPermission",
        "(Z)V",
        "currentHandler",
        "",
        "extraData",
        "",
        "",
        "getExtraData",
        "()Ljava/util/Map;",
        "setExtraData",
        "(Ljava/util/Map;)V",
        "value",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "setFragment",
        "handlersToTry",
        "",
        "Lcom/facebook/login/LoginMethodHandler;",
        "getHandlersToTry",
        "()[Lcom/facebook/login/LoginMethodHandler;",
        "setHandlersToTry",
        "([Lcom/facebook/login/LoginMethodHandler;)V",
        "[Lcom/facebook/login/LoginMethodHandler;",
        "inProgress",
        "getInProgress",
        "logger",
        "Lcom/facebook/login/LoginLogger;",
        "getLogger",
        "()Lcom/facebook/login/LoginLogger;",
        "loggingExtras",
        "getLoggingExtras",
        "setLoggingExtras",
        "loginLogger",
        "numActivitiesReturned",
        "numTotalIntentsFired",
        "onCompletedListener",
        "Lcom/facebook/login/LoginClient$OnCompletedListener;",
        "getOnCompletedListener",
        "()Lcom/facebook/login/LoginClient$OnCompletedListener;",
        "setOnCompletedListener",
        "(Lcom/facebook/login/LoginClient$OnCompletedListener;)V",
        "pendingRequest",
        "Lcom/facebook/login/LoginClient$Request;",
        "getPendingRequest",
        "()Lcom/facebook/login/LoginClient$Request;",
        "setPendingRequest",
        "(Lcom/facebook/login/LoginClient$Request;)V",
        "addExtraData",
        "",
        "key",
        "accumulate",
        "addLoggingExtra",
        "authorize",
        "request",
        "cancelCurrentHandler",
        "checkInternetPermission",
        "checkPermission",
        "permission",
        "complete",
        "outcome",
        "Lcom/facebook/login/LoginClient$Result;",
        "completeAndValidate",
        "completeWithFailure",
        "describeContents",
        "getCurrentHandler",
        "(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;",
        "logAuthorizationMethodComplete",
        "method",
        "result",
        "",
        "errorMessage",
        "errorCode",
        "notifyBackgroundProcessingStart",
        "notifyBackgroundProcessingStop",
        "notifyOnCompleteListener",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "setCurrentHandlerIndex",
        "index",
        "startOrContinueAuth",
        "tryCurrentHandler",
        "tryNextHandler",
        "validateSameFbidAndFinish",
        "pendingResult",
        "writeToParcel",
        "dest",
        "flags",
        "BackgroundProcessingListener",
        "Companion",
        "OnCompletedListener",
        "Request",
        "Result",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/LoginClient;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/facebook/login/LoginClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private checkedInternetPermission:Z

.field private currentHandler:I

.field private extraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fragment:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private handlersToTry:[Lcom/facebook/login/LoginMethodHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loginLogger:Lcom/facebook/login/LoginLogger;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private numActivitiesReturned:I

.field private numTotalIntentsFired:I

.field private onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pendingRequest:Lcom/facebook/login/LoginClient$Request;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/login/LoginClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/login/LoginClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/login/LoginClient;->Companion:Lcom/facebook/login/LoginClient$Companion;

    new-instance v0, Lcom/facebook/login/LoginClient$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/facebook/login/LoginClient$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 6
    const-class v0, Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/os/Parcelable;

    .line 7
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_4

    aget-object v6, v0, v4

    .line 9
    instance-of v7, v6, Lcom/facebook/login/LoginMethodHandler;

    if-eqz v7, :cond_1

    move-object v5, v6

    check-cast v5, Lcom/facebook/login/LoginMethodHandler;

    :cond_1
    if-nez v5, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v5, p0}, Lcom/facebook/login/LoginMethodHandler;->setLoginClient(Lcom/facebook/login/LoginClient;)V

    :goto_1
    if-eqz v5, :cond_3

    .line 11
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-array v0, v1, [Lcom/facebook/login/LoginMethodHandler;

    .line 12
    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lcom/facebook/login/LoginMethodHandler;

    .line 13
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 15
    const-class v0, Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Request;

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 16
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {p1}, Lcom/facebook/internal/Utility;->readNonnullStringMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v5

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    .line 17
    invoke-static {p1}, Lcom/facebook/internal/Utility;->readNonnullStringMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    :goto_3
    iput-object v5, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private final addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 3
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    .line 4
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final completeWithFailure()V
    .locals 7

    sget-object v0, Lcom/facebook/login/LoginClient$Result;->Companion:Lcom/facebook/login/LoginClient$Result$Companion;

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    const-string v2, "Login attempt failed."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Result$Companion;->createErrorResult$default(Lcom/facebook/login/LoginClient$Result$Companion;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method public static final getE2E()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/facebook/login/LoginClient;->Companion:Lcom/facebook/login/LoginClient$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Companion;->getE2E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getLogger()Lcom/facebook/login/LoginLogger;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loginLogger:Lcom/facebook/login/LoginLogger;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/facebook/login/LoginLogger;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3
    :cond_1
    new-instance v0, Lcom/facebook/login/LoginLogger;

    .line 4
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-nez v2, :cond_3

    sget-object v2, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 6
    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->loginLogger:Lcom/facebook/login/LoginLogger;

    :cond_4
    return-object v0
.end method

.method public static final getLoginRequestCode()I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/login/LoginClient;->Companion:Lcom/facebook/login/LoginClient$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Companion;->getLoginRequestCode()I

    move-result v0

    return v0
.end method

.method private final logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/login/LoginClient$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/facebook/login/LoginClient$Result;->errorMessage:Ljava/lang/String;

    iget-object v5, p2, Lcom/facebook/login/LoginClient$Result;->errorCode:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    const-string v1, "fb_mobile_login_method_complete"

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object p2

    const-string p3, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {p2, v1, p3, p1}, Lcom/facebook/login/LoginLogger;->logUnexpectedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Request;->isFamilyLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "foa_mobile_login_method_complete"

    :cond_1
    move-object v9, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 8
    invoke-virtual/range {v2 .. v9}, Lcom/facebook/login/LoginLogger;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final notifyOnCompleteListener(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/login/LoginClient$OnCompletedListener;->onCompleted(Lcom/facebook/login/LoginClient$Result;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addExtraData(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 3
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    .line 4
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final authorize(Lcom/facebook/login/LoginClient$Request;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->checkInternetPermission()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 4
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->getHandlersToTry(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    .line 5
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    return-void

    .line 6
    :cond_2
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Attempted to authorize while a request is pending."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final cancelCurrentHandler()V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->cancel()V

    :goto_0
    return-void
.end method

.method public final checkInternetPermission()Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/facebook/login/LoginClient;->checkedInternetPermission:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.INTERNET"

    .line 2
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->checkPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v5, v1

    goto :goto_0

    .line 4
    :cond_1
    sget v2, Lcom/facebook/common/R$string;->com_facebook_internet_permission_error_title:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    sget v1, Lcom/facebook/common/R$string;->com_facebook_internet_permission_error_message:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v6, v1

    .line 6
    sget-object v3, Lcom/facebook/login/LoginClient$Result;->Companion:Lcom/facebook/login/LoginClient$Result$Companion;

    iget-object v4, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/facebook/login/LoginClient$Result$Companion;->createErrorResult$default(Lcom/facebook/login/LoginClient$Result$Companion;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    const/4 v0, 0x0

    return v0

    .line 7
    :cond_3
    iput-boolean v1, p0, Lcom/facebook/login/LoginClient;->checkedInternetPermission:Z

    return v1
.end method

.method public final checkPermission(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final complete(Lcom/facebook/login/LoginClient$Result;)V
    .locals 2
    .param p1    # Lcom/facebook/login/LoginClient$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getMethodLoggingExtras()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4
    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 6
    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->extraData:Ljava/util/Map;

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 9
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 10
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/facebook/login/LoginClient;->numActivitiesReturned:I

    .line 12
    iput v0, p0, Lcom/facebook/login/LoginClient;->numTotalIntentsFired:I

    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginClient;->notifyOnCompleteListener(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method public final completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->validateSameFbidAndFinish(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    :goto_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->fragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getBackgroundProcessingListener()Lcom/facebook/login/LoginClient$BackgroundProcessingListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    return-object v0
.end method

.method public final getCheckedInternetPermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/LoginClient;->checkedInternetPermission:Z

    return v0
.end method

.method public final getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object v1, v2, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getExtraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    return-object v0
.end method

.method public final getFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final getHandlersToTry()[Lcom/facebook/login/LoginMethodHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    return-object v0
.end method

.method public getHandlersToTry(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;
    .locals 3
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->isInstagramLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-boolean v2, Lcom/facebook/FacebookSdk;->bypassAppSwitch:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsInstagramAppAuth()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    new-instance v2, Lcom/facebook/login/InstagramAppLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/InstagramAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsGetTokenAuth()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    new-instance v2, Lcom/facebook/login/GetTokenLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/GetTokenLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    sget-boolean v2, Lcom/facebook/FacebookSdk;->bypassAppSwitch:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsKatanaAuth()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    new-instance v2, Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    new-instance v2, Lcom/facebook/login/CustomTabLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsWebViewAuth()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    new-instance v2, Lcom/facebook/login/WebViewLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/WebViewLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->isInstagramLogin()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsDeviceAuth()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    new-instance p1, Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-direct {p1, p0}, Lcom/facebook/login/DeviceAuthMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/facebook/login/LoginMethodHandler;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lcom/facebook/login/LoginMethodHandler;

    return-object p1
.end method

.method public final getInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getLoggingExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    return-object v0
.end method

.method public final getOnCompletedListener()Lcom/facebook/login/LoginClient$OnCompletedListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

    return-object v0
.end method

.method public final getPendingRequest()Lcom/facebook/login/LoginClient$Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method public final notifyBackgroundProcessingStart()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/facebook/login/LoginClient$BackgroundProcessingListener;->onBackgroundProcessingStarted()V

    :goto_0
    return-void
.end method

.method public final notifyBackgroundProcessingStop()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/facebook/login/LoginClient$BackgroundProcessingListener;->onBackgroundProcessingStopped()V

    :goto_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/facebook/login/LoginClient;->numActivitiesReturned:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->numActivitiesReturned:I

    .line 2
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    .line 3
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->NO_ACTIVITY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->shouldKeepTrackOfMultipleIntents()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    .line 7
    iget v2, p0, Lcom/facebook/login/LoginClient;->numActivitiesReturned:I

    iget v3, p0, Lcom/facebook/login/LoginClient;->numTotalIntentsFired:I

    if-lt v2, v3, :cond_2

    .line 8
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/login/LoginMethodHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final setBackgroundProcessingListener(Lcom/facebook/login/LoginClient$BackgroundProcessingListener;)V
    .locals 0
    .param p1    # Lcom/facebook/login/LoginClient$BackgroundProcessingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    return-void
.end method

.method public final setCheckedInternetPermission(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/login/LoginClient;->checkedInternetPermission:Z

    return-void
.end method

.method protected final setCurrentHandlerIndex(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    return-void
.end method

.method public final setExtraData(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    return-void
.end method

.method public final setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->fragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->fragment:Landroidx/fragment/app/Fragment;

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t set fragment once it is already set."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setHandlersToTry([Lcom/facebook/login/LoginMethodHandler;)V
    .locals 0
    .param p1    # [Lcom/facebook/login/LoginMethodHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    return-void
.end method

.method public final setLoggingExtras(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    return-void
.end method

.method public final setOnCompletedListener(Lcom/facebook/login/LoginClient$OnCompletedListener;)V
    .locals 0
    .param p1    # Lcom/facebook/login/LoginClient$OnCompletedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

    return-void
.end method

.method public final setPendingRequest(Lcom/facebook/login/LoginClient$Request;)V
    .locals 0
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    return-void
.end method

.method public final startOrContinueAuth(Lcom/facebook/login/LoginClient$Request;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->authorize(Lcom/facebook/login/LoginClient$Request;)V

    :cond_0
    return-void
.end method

.method public final tryCurrentHandler()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->needsInternetPermission()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->checkInternetPermission()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "no_internet_permission"

    const-string v2, "1"

    .line 3
    invoke-direct {p0, v0, v2, v1}, Lcom/facebook/login/LoginClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-nez v2, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginMethodHandler;->tryAuthorize(Lcom/facebook/login/LoginClient$Request;)I

    move-result v3

    .line 6
    iput v1, p0, Lcom/facebook/login/LoginClient;->numActivitiesReturned:I

    const/4 v4, 0x1

    if-lez v3, :cond_4

    .line 7
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object v5

    .line 8
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->isFamilyLogin()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "foa_mobile_login_method_start"

    goto :goto_0

    :cond_3
    const-string v2, "fb_mobile_login_method_start"

    .line 11
    :goto_0
    invoke-virtual {v5, v6, v0, v2}, Lcom/facebook/login/LoginLogger;->logAuthorizationMethodStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput v3, p0, Lcom/facebook/login/LoginClient;->numTotalIntentsFired:I

    goto :goto_2

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object v5

    .line 14
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->isFamilyLogin()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "foa_mobile_login_method_not_tried"

    goto :goto_1

    :cond_5
    const-string v2, "fb_mobile_login_method_not_tried"

    .line 17
    :goto_1
    invoke-virtual {v5, v6, v7, v2}, Lcom/facebook/login/LoginLogger;->logAuthorizationMethodNotTried(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v0

    const-string v2, "not_tried"

    invoke-direct {p0, v2, v0, v4}, Lcom/facebook/login/LoginClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    if-lez v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public final tryNextHandler()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getMethodLoggingExtras()Ljava/util/Map;

    move-result-object v6

    const-string v3, "skipped"

    move-object v1, p0

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    iget v1, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 7
    iput v1, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 8
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->tryCurrentHandler()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->completeWithFailure()V

    :cond_3
    return-void
.end method

.method public final validateSameFbidAndFinish(Lcom/facebook/login/LoginClient$Result;)V
    .locals 7
    .param p1    # Lcom/facebook/login/LoginClient$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pendingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->Companion:Lcom/facebook/login/LoginClient$Result$Companion;

    .line 6
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    iget-object v2, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    iget-object p1, p1, Lcom/facebook/login/LoginClient$Result;->authenticationToken:Lcom/facebook/AuthenticationToken;

    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/login/LoginClient$Result$Companion;->createCompositeTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->Companion:Lcom/facebook/login/LoginClient$Result$Companion;

    .line 9
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    const-string v2, "User logged in as different Facebook user."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 10
    invoke-static/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Result$Companion;->createErrorResult$default(Lcom/facebook/login/LoginClient$Result$Companion;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->Companion:Lcom/facebook/login/LoginClient$Result$Companion;

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v2, "Caught exception"

    invoke-static/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Result$Companion;->createErrorResult$default(Lcom/facebook/login/LoginClient$Result$Companion;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    :goto_1
    return-void

    .line 13
    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t validate without a token"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2
    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    sget-object p2, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    iget-object p2, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->writeNonnullStringMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 5
    iget-object p2, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->writeNonnullStringMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
