.class public final Lcom/guochao/GCLiveConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/GCLiveConfig$AppId;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001$B\t\u0008\u0002\u00a2\u0006\u0004\u0008#\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\nR(\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008\r\u0010\u000e\u0012\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R(\u0010\u0015\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008\u0015\u0010\n\u0012\u0004\u0008\u001a\u0010\u0014\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R(\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008\u001c\u0010\u001d\u0012\u0004\u0008\"\u0010\u0014\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/guochao/GCLiveConfig;",
        "",
        "",
        "APP_ID",
        "J",
        "",
        "APP_SIGN",
        "Ljava/lang/String;",
        "",
        "PUSH_RTC",
        "I",
        "PUSH_CDN",
        "",
        "testEnv",
        "Z",
        "getTestEnv",
        "()Z",
        "setTestEnv",
        "(Z)V",
        "getTestEnv$annotations",
        "()V",
        "pushMode",
        "getPushMode",
        "()I",
        "setPushMode",
        "(I)V",
        "getPushMode$annotations",
        "Lcom/guochao/GCLiveConfig$AppId;",
        "zegoAppId",
        "Lcom/guochao/GCLiveConfig$AppId;",
        "getZegoAppId",
        "()Lcom/guochao/GCLiveConfig$AppId;",
        "setZegoAppId",
        "(Lcom/guochao/GCLiveConfig$AppId;)V",
        "getZegoAppId$annotations",
        "<init>",
        "AppId",
        "lib_pusher_and_player_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field private static final APP_ID:J = 0x23b0451L

.field private static final APP_SIGN:Ljava/lang/String; = "faeea92c2e0b443d3cfa489c11e24b8b05128d45d796eb361418eb2b1ebb0d69"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/guochao/GCLiveConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PUSH_CDN:I = 0x1

.field public static final PUSH_RTC:I

.field private static pushMode:I

.field private static testEnv:Z

.field private static zegoAppId:Lcom/guochao/GCLiveConfig$AppId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/guochao/GCLiveConfig;

    invoke-direct {v0}, Lcom/guochao/GCLiveConfig;-><init>()V

    sput-object v0, Lcom/guochao/GCLiveConfig;->INSTANCE:Lcom/guochao/GCLiveConfig;

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/guochao/GCLiveConfig;->testEnv:Z

    .line 2
    new-instance v0, Lcom/guochao/GCLiveConfig$AppId;

    const-wide/32 v1, 0x23b0451

    const-string v3, "faeea92c2e0b443d3cfa489c11e24b8b05128d45d796eb361418eb2b1ebb0d69"

    invoke-direct {v0, v1, v2, v3}, Lcom/guochao/GCLiveConfig$AppId;-><init>(JLjava/lang/String;)V

    sput-object v0, Lcom/guochao/GCLiveConfig;->zegoAppId:Lcom/guochao/GCLiveConfig$AppId;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPushMode()I
    .locals 1

    sget v0, Lcom/guochao/GCLiveConfig;->pushMode:I

    return v0
.end method

.method public static synthetic getPushMode$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getTestEnv()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/GCLiveConfig;->testEnv:Z

    return v0
.end method

.method public static synthetic getTestEnv$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getZegoAppId()Lcom/guochao/GCLiveConfig$AppId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/GCLiveConfig;->zegoAppId:Lcom/guochao/GCLiveConfig$AppId;

    return-object v0
.end method

.method public static synthetic getZegoAppId$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final setPushMode(I)V
    .locals 0

    sput p0, Lcom/guochao/GCLiveConfig;->pushMode:I

    return-void
.end method

.method public static final setTestEnv(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/GCLiveConfig;->testEnv:Z

    return-void
.end method

.method public static final setZegoAppId(Lcom/guochao/GCLiveConfig$AppId;)V
    .locals 1
    .param p0    # Lcom/guochao/GCLiveConfig$AppId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/guochao/GCLiveConfig;->zegoAppId:Lcom/guochao/GCLiveConfig$AppId;

    return-void
.end method
