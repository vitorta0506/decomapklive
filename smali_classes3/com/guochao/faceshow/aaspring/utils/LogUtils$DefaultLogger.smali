.class public Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0010\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0008J\u001a\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u000cH\u0016J\"\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger;",
        "",
        "()V",
        "e",
        "",
        "tag",
        "",
        "content",
        "",
        "json",
        "level",
        "",
        "Lorg/json/JSONObject;",
        "log",
        "Companion",
        "lib_base_release"
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEBUG:I = 0x4

.field public static final ERROR:I = 0x3

.field public static final INFO:I = 0x0

.field public static final VERBOSE:I = 0x1

.field public static final WARN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger;->Companion:Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public json(ILorg/json/JSONObject;)V
    .locals 0
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "content"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
