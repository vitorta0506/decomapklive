.class public Lcom/gyailib/library/Face3DResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public euler:[F

.field public exp:[F

.field public facekitVertexNum:I

.field public facekitVertices:[F

.field public pointScale:F

.field public scale:F

.field public traceId:I

.field public transMatrix:[F

.field public translate:[F


# direct methods
.method public constructor <init>(I[F[F[FFF[FI[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/gyailib/library/Face3DResult;->traceId:I

    .line 3
    iput-object p2, p0, Lcom/gyailib/library/Face3DResult;->transMatrix:[F

    .line 4
    iput-object p3, p0, Lcom/gyailib/library/Face3DResult;->euler:[F

    .line 5
    iput-object p4, p0, Lcom/gyailib/library/Face3DResult;->translate:[F

    .line 6
    iput p5, p0, Lcom/gyailib/library/Face3DResult;->scale:F

    .line 7
    iput p6, p0, Lcom/gyailib/library/Face3DResult;->pointScale:F

    .line 8
    iput-object p7, p0, Lcom/gyailib/library/Face3DResult;->exp:[F

    .line 9
    iput p8, p0, Lcom/gyailib/library/Face3DResult;->facekitVertexNum:I

    .line 10
    iput-object p9, p0, Lcom/gyailib/library/Face3DResult;->facekitVertices:[F

    return-void
.end method
