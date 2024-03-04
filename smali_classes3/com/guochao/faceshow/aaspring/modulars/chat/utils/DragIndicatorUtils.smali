.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;",
        "",
        "()V",
        "isAniming",
        "",
        "()Z",
        "setAniming",
        "(Z)V",
        "resetAniming",
        "",
        "app_GooglePlayRelease"
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isAniming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;->resetAniming$lambda-0()V

    return-void
.end method

.method private static final resetAniming$lambda-0()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;->isAniming:Z

    return-void
.end method


# virtual methods
.method public final isAniming()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;->isAniming:Z

    return v0
.end method

.method public final resetAniming()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;->isAniming:Z

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/c;

    const-wide/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setAniming(Z)V
    .locals 0

    sput-boolean p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;->isAniming:Z

    return-void
.end method
