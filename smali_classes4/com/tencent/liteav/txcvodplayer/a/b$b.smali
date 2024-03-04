.class Lcom/tencent/liteav/txcvodplayer/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/b$b;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/b$b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/b$b;->d:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/a/b$b;->e:Ljava/lang/String;

    return-void
.end method
