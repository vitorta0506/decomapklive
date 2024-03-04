.class public Lcom/gyailib/library/GYARDetectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cameraModelMatrix:[F

.field projectionMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setData([F[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gyailib/library/GYARDetectResult;->cameraModelMatrix:[F

    .line 2
    iput-object p2, p0, Lcom/gyailib/library/GYARDetectResult;->projectionMatrix:[F

    return-void
.end method
