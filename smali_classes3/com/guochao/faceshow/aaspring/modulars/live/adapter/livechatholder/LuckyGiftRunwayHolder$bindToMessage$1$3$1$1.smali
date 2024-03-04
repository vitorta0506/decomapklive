.class final Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$1$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;->bindToMessage$lambda-4$lambda-3(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$1$3$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$1$3$1$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$1$3$1$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$1$3$1$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$1$3$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/gift/controller/GiftRunwayScrollEndEvent;

    invoke-direct {v1}, Lcom/guochao/faceshow/gift/controller/GiftRunwayScrollEndEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
