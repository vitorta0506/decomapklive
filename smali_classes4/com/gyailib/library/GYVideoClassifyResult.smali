.class public Lcom/gyailib/library/GYVideoClassifyResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public classifyName:Ljava/lang/String;

.field public classifyType:Ljava/lang/String;

.field public kVideoClassifyOutputKeyEnableSmooth:Ljava/lang/String;

.field public kVideoClassifyOutputKeyHistoMax:Ljava/lang/String;

.field public kVideoClassifyOutputKeyHistoMin:Ljava/lang/String;

.field public output:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gyailib/library/GYVideoClassifyResult;->output:Ljava/util/Map;

    const-string v0, "histo_min"

    .line 3
    iput-object v0, p0, Lcom/gyailib/library/GYVideoClassifyResult;->kVideoClassifyOutputKeyHistoMin:Ljava/lang/String;

    const-string v0, "histo_max"

    .line 4
    iput-object v0, p0, Lcom/gyailib/library/GYVideoClassifyResult;->kVideoClassifyOutputKeyHistoMax:Ljava/lang/String;

    const-string v0, "enable_smooth"

    .line 5
    iput-object v0, p0, Lcom/gyailib/library/GYVideoClassifyResult;->kVideoClassifyOutputKeyEnableSmooth:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public initStruct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gyailib/library/GYVideoClassifyResult;->classifyType:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/gyailib/library/GYVideoClassifyResult;->classifyName:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/gyailib/library/GYVideoClassifyResult;->output:Ljava/util/Map;

    iget-object p2, p0, Lcom/gyailib/library/GYVideoClassifyResult;->kVideoClassifyOutputKeyHistoMin:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/gyailib/library/GYVideoClassifyResult;->output:Ljava/util/Map;

    iget-object p2, p0, Lcom/gyailib/library/GYVideoClassifyResult;->kVideoClassifyOutputKeyHistoMax:Ljava/lang/String;

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/gyailib/library/GYVideoClassifyResult;->output:Ljava/util/Map;

    iget-object p2, p0, Lcom/gyailib/library/GYVideoClassifyResult;->kVideoClassifyOutputKeyEnableSmooth:Ljava/lang/String;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
