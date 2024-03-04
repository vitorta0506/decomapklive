.class final Lda/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lda/b;

.field private b:Landroid/os/Handler;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lda/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lda/e;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lda/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lda/e;->a:Lda/b;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lda/e;->b:Landroid/os/Handler;

    .line 2
    iput p2, p0, Lda/e;->c:I

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lda/e;->a:Lda/b;

    invoke-virtual {p2}, Lda/b;->c()Landroid/graphics/Point;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lda/e;->b:Landroid/os/Handler;

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lda/e;->c:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lda/e;->b:Landroid/os/Handler;

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lda/e;->d:Ljava/lang/String;

    const-string p2, "Got preview callback, but no handler or resolution available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
