.class Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$V2TIMSignalingManagerImplHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V2TIMSignalingManagerImplHolder"
.end annotation


# static fields
.field private static final v2TIMSignalingManagerImpl:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;-><init>(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;)V

    sput-object v0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$V2TIMSignalingManagerImplHolder;->v2TIMSignalingManagerImpl:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;
    .locals 1

    sget-object v0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$V2TIMSignalingManagerImplHolder;->v2TIMSignalingManagerImpl:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    return-object v0
.end method
