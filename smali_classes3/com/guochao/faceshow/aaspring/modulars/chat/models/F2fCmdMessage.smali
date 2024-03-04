.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
        "",
        "isOnlineMessage",
        "showNotification",
        "",
        "f2f_cmd",
        "Ljava/lang/String;",
        "getF2f_cmd",
        "()Ljava/lang/String;",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        "message",
        "<init>",
        "(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;)V",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final F2F_FOCUS:Ljava/lang/String; = "c2c_follow"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final F2F_REMOVE_GUASS:Ljava/lang/String; = "c2c_rmGuass"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final f2f_cmd:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;->Companion:Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/imsdk/v2/V2TIMMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2f_cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;->f2f_cmd:Ljava/lang/String;

    return-void
.end method

.method public static final newMessage(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;->Companion:Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;->newMessage(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getF2f_cmd()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;->f2f_cmd:Ljava/lang/String;

    return-object v0
.end method

.method public isOnlineMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showNotification()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
