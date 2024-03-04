.class public Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/TraceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceRouteContainer"
.end annotation


# instance fields
.field private elapsedtime:F

.field private hostname:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private ttl:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->hostname:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->ip:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->elapsedtime:F

    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->ttl:I

    return v0
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->hostname:Ljava/lang/String;

    return-void
.end method

.method public setTtl(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->ttl:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->ttl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->hostname:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->ip:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->elapsedtime:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%d    %s     %s      %.2f ms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
