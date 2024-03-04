.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData$Companion;",
        "",
        "()V",
        "PATH_CROWN",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;",
        "PATH_DIAMONDS",
        "PATH_HEART",
        "PATH_LIKE",
        "PATH_LIPS",
        "PATH_LOVE",
        "PATH_STAR",
        "getGiftPathDataList",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGiftPathDataList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->access$getPATH_HEART$cp()Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->access$getPATH_LOVE$cp()Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->access$getPATH_STAR$cp()Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->access$getPATH_CROWN$cp()Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->access$getPATH_DIAMONDS$cp()Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->access$getPATH_LIPS$cp()Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->access$getPATH_LIKE$cp()Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
