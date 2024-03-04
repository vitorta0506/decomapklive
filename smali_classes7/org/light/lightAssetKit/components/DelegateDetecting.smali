.class public Lorg/light/lightAssetKit/components/DelegateDetecting;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public alwaysProcess:Z

.field public cameraFrameInNeed:Z

.field public cameraFrameShortEdgeLength:I

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/DelegateDetecting;->key:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/DelegateDetecting;->alwaysProcess:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/DelegateDetecting;->cameraFrameInNeed:Z

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/DelegateDetecting;->cameraFrameShortEdgeLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/light/lightAssetKit/components/DelegateDetecting;->key:Ljava/lang/String;

    .line 8
    iput-boolean p2, p0, Lorg/light/lightAssetKit/components/DelegateDetecting;->alwaysProcess:Z

    .line 9
    iput-boolean p3, p0, Lorg/light/lightAssetKit/components/DelegateDetecting;->cameraFrameInNeed:Z

    .line 10
    iput p4, p0, Lorg/light/lightAssetKit/components/DelegateDetecting;->cameraFrameShortEdgeLength:I

    return-void
.end method
