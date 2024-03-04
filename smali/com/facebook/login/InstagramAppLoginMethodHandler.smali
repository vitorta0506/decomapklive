.class public final Lcom/facebook/login/InstagramAppLoginMethodHandler;
.super Lcom/facebook/login/NativeAppLoginMethodHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/InstagramAppLoginMethodHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0011H\u0016R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/facebook/login/InstagramAppLoginMethodHandler;",
        "Lcom/facebook/login/NativeAppLoginMethodHandler;",
        "loginClient",
        "Lcom/facebook/login/LoginClient;",
        "(Lcom/facebook/login/LoginClient;)V",
        "source",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "nameForLogging",
        "",
        "getNameForLogging",
        "()Ljava/lang/String;",
        "tokenSource",
        "Lcom/facebook/AccessTokenSource;",
        "getTokenSource",
        "()Lcom/facebook/AccessTokenSource;",
        "describeContents",
        "",
        "tryAuthorize",
        "request",
        "Lcom/facebook/login/LoginClient$Request;",
        "writeToParcel",
        "",
        "dest",
        "flags",
        "Companion",
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
            "Lcom/facebook/login/InstagramAppLoginMethodHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/facebook/login/InstagramAppLoginMethodHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final nameForLogging:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tokenSource:Lcom/facebook/AccessTokenSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/login/InstagramAppLoginMethodHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/login/InstagramAppLoginMethodHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->Companion:Lcom/facebook/login/InstagramAppLoginMethodHandler$Companion;

    new-instance v0, Lcom/facebook/login/InstagramAppLoginMethodHandler$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/facebook/login/InstagramAppLoginMethodHandler$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    const-string p1, "instagram_login"

    .line 5
    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->nameForLogging:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/facebook/AccessTokenSource;->INSTAGRAM_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->tokenSource:Lcom/facebook/AccessTokenSource;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    const-string p1, "instagram_login"

    .line 2
    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->nameForLogging:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/facebook/AccessTokenSource;->INSTAGRAM_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    iput-object p1, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->tokenSource:Lcom/facebook/AccessTokenSource;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNameForLogging()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->nameForLogging:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSource()Lcom/facebook/AccessTokenSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/InstagramAppLoginMethodHandler;->tokenSource:Lcom/facebook/AccessTokenSource;

    return-object v0
.end method

.method public tryAuthorize(Lcom/facebook/login/LoginClient$Request;)I
    .locals 16
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "request"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/login/LoginClient;->Companion:Lcom/facebook/login/LoginClient$Companion;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Companion;->getE2E()Ljava/lang/String;

    move-result-object v15

    .line 2
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginMethodHandler;->getLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v5

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result v6

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->hasPublishPermission()Z

    move-result v7

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/facebook/login/DefaultAudience;->NONE:Lcom/facebook/login/DefaultAudience;

    .line 9
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/facebook/login/LoginMethodHandler;->getClientState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->getAuthType()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->getMessengerPageId()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->getResetMessengerState()Z

    move-result v12

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->isFamilyLogin()Z

    move-result v13

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->shouldSkipAccountDeduplication()Z

    move-result v14

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v15

    .line 15
    invoke-static/range {v2 .. v14}, Lcom/facebook/internal/NativeProtocol;->createInstagramIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "e2e"

    .line 16
    invoke-virtual {v0, v3, v15}, Lcom/facebook/login/LoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Companion;->getLoginRequestCode()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/facebook/login/NativeAppLoginMethodHandler;->tryIntent(Landroid/content/Intent;I)Z

    move-result v1

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
