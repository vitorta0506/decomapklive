.class final Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion$instance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion$instance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion$instance$2;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion$instance$2;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion$instance$2;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion$instance$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion$instance$2;->invoke()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;

    move-result-object v0

    return-object v0
.end method