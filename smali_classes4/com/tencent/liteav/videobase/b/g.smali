.class public final Lcom/tencent/liteav/videobase/b/g;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x25ccae0f10b8061fL


# instance fields
.field public final mErrorCode:I

.field private final mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videobase/b/g;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/tencent/liteav/videobase/b/g;->mErrorCode:I

    .line 4
    iput-object p2, p0, Lcom/tencent/liteav/videobase/b/g;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput p1, p0, Lcom/tencent/liteav/videobase/b/g;->mErrorCode:I

    .line 7
    iput-object p2, p0, Lcom/tencent/liteav/videobase/b/g;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/g;->mErrorMessage:Ljava/lang/String;

    const-string v1, ", "

    const-string v2, "EGL error code: "

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/liteav/videobase/b/g;->mErrorCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/b/g;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/liteav/videobase/b/g;->mErrorCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
