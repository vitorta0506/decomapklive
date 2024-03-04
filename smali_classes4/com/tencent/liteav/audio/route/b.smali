.class public final Lcom/tencent/liteav/audio/route/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/route/b$a;
    }
.end annotation


# instance fields
.field final a:Lcom/tencent/liteav/audio/route/b$a;

.field b:Z

.field c:I


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/audio/route/b$a;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/liteav/audio/route/b;->a:Lcom/tencent/liteav/audio/route/b$a;

    .line 3
    iput p2, p0, Lcom/tencent/liteav/audio/route/b;->c:I

    .line 4
    iput-boolean p3, p0, Lcom/tencent/liteav/audio/route/b;->b:Z

    return-void
.end method
