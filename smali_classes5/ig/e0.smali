.class Lig/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/r2;


# instance fields
.field private final a:Lkg/k;


# direct methods
.method constructor <init>(Lkg/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lig/e0;->a:Lkg/k;

    return-void
.end method


# virtual methods
.method public a(I)Lio/grpc/internal/q2;
    .locals 2

    const/16 v0, 0x1000

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x100000

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    new-instance v0, Lig/d0;

    iget-object v1, p0, Lig/e0;->a:Lkg/k;

    invoke-interface {v1, p1, p1}, Lkg/k;->j(II)Lkg/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lig/d0;-><init>(Lkg/j;)V

    return-object v0
.end method
