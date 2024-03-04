.class public final Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;",
        "",
        "()V",
        "isFloatTouchLiveRoom",
        "",
        "()Z",
        "setFloatTouchLiveRoom",
        "(Z)V",
        "Companion",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private isFloatTouchLiveRoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion$instance$2;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final isFloatTouchLiveRoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;->isFloatTouchLiveRoom:Z

    return v0
.end method

.method public final setFloatTouchLiveRoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;->isFloatTouchLiveRoom:Z

    return-void
.end method
