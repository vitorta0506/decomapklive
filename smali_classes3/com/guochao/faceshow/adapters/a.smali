.class public Lcom/guochao/faceshow/adapters/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/guochao/faceshow/adapters/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/guochao/faceshow/adapters/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/adapters/a;->a:Lcom/guochao/faceshow/adapters/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/adapters/a;

    invoke-direct {v0}, Lcom/guochao/faceshow/adapters/a;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/adapters/a;->a:Lcom/guochao/faceshow/adapters/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/adapters/a;->a:Lcom/guochao/faceshow/adapters/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/TCVideoFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lcom/guochao/faceshow/bean/TCVideoFileInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;-><init>(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
